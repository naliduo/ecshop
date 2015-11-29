<?php
define('IN_ECS', true);



require(dirname(__FILE__) . '/includes/init.php');

// 获得所有有效会员清单
$sql_memeber = "select u.user_id, u.email, u.user_name,u.user_money,u.rank_points, u.msn, u.to_date from " .$ecs->table("users"). " u  where u.member_novalid ='0' and (u.msn is not null or u.msn <> '') ";
$member_list = $db->getAll($sql_memeber);



if($member_list) {
	foreach ($member_list as $user){
		if((!(empty($user['to_date'])))and $user['to_date']<gmtime()){ //判断合同期限
			//if ($GLOBALS['_CFG']['send_service_email'] == '1' && $GLOBALS['_CFG']['kf'] != '')
			if ($GLOBALS['_CFG']['send_service_email'] == '1' )
			{ 
				$tpl = get_mail_template('member_novalid');
				$smarty->assign('user', $user);
				$smarty->assign('shop_name', $GLOBALS['_CFG']['shop_name']);
				$smarty->assign('send_date', date($GLOBALS['_CFG']['time_format']));
				$content = $smarty->fetch('str:' . $tpl['template_content']);
				send_mail($_CFG['shop_name'],"baixue@dream-gardens.com.cn" , $tpl['template_subject'], $content, $tpl['is_html']);
				 			 
			}
			
			
			
			$db->query("update ".$ecs->table("users")." set member_novalid='1' and rank_points='0' where user_id=".$user['user_id']);
			log_account_change($user['user_id'], 0, 0, -$user['rank_points'], 0, '会员过期自动清理', ACT_OTHER);
			
			
		}
	}
	
	
	exit;
}

 

?>
 
