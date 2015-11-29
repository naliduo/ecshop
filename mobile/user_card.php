<?php
/**
 * ECSHOP 会员中心
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: user.php 17217 2011-01-19 06:29:08Z liubo $
*/

define('IN_ECS', true);
define('ECS_ADMIN', true);
error_reporting(0); 
require(dirname(__FILE__) . '/includes/init.php');


/* 载入语言文件 */

require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/user.php');
$_LANG['back_up_page'] = '返回上一页';

$user_id = $_SESSION['user_id'];
$action  = isset($_REQUEST['act']) ? trim($_REQUEST['act']) : 'default';

$affiliate = unserialize($GLOBALS['_CFG']['affiliate']);
$smarty->assign('affiliate', $affiliate);
$back_act='';
$smarty->assign('lang', $_LANG);


// 不需要登录的操作或自己验证是否登录（如ajax处理）的act
$not_login_arr =
array('login','act_login','register','act_register','act_edit_password','get_password','send_pwd_email','password', 'signin', 'add_tag', 'collect', 'return_to_cart', 'logout', 'email_list', 'validate_email', 'send_hash_mail', 'order_query', 'is_registered', 'check_email','clear_history','qpassword_name', 'get_passwd_question', 'check_answer');

/* 显示页面的action列表 */
$ui_arr = array('user_card');

/* 未登录处理 */
if (empty($_SESSION['user_id']))
{
    if (!in_array($action, $not_login_arr))
    {
        if (in_array($action, $ui_arr))
        {
            /* 如果需要登录,并是显示页面的操作，记录当前操作，用于登录后跳转到相应操作
            if ($action == 'login')
            {
                if (isset($_REQUEST['back_act']))
                {
                    $back_act = trim($_REQUEST['back_act']);
                }
            }
            else
            {}*/
            if (!empty($_SERVER['QUERY_STRING']))
            {
                $back_act = 'user.php?' . strip_tags($_SERVER['QUERY_STRING']);
            }
            $action = 'login';
        }
        else
        {
            //未登录提交数据。非正常途径提交数据！
            die($_LANG['require_login']);
        }
    }
}

/* 如果是显示页面，对页面进行相应赋值 */
if (in_array($action, $ui_arr))
{
    $smarty->assign('action',     $action);
}

if ($action == 'updatetaocan'){ //套餐
      $id = $_REQUEST['id'];
     for($i=0;$i<7;$i++){
         if(isset($_POST['country'.$i])){
             $tcgoods = array();
             $tcgoods['id'] = $_POST['tcid'.$i];
             $tcgoods['country'] = $_POST['country'.$i];
             $tcgoods['province'] = $_POST['province'.$i];
             $tcgoods['city'] = $_POST['city'.$i];
             $tcgoods['district'] = $_POST['district'.$i];
             $tcgoods['address'] = $_POST['address'.$i];
             $tcgoods['zipcode'] = $_POST['zipcode'.$i];
             $tcgoods['consignee'] = $_POST['consignee'.$i];
             $tcgoods['email'] = $_POST['email'.$i];
             $tcgoods['mobile'] = $_POST['mobile'.$i];
             $tcgoods['weekdays'] = $_POST['weekdays'.$i];
             $tcgoods['halfday'] = $_POST['halfday'.$i];
              $db->query("update ".$ecs->table("user_tc_goods")." set  country='".$tcgoods['country']."',province='".$tcgoods['province']."',city='".$tcgoods['city']."',
             district='".$tcgoods['district']."',address='".$tcgoods['address']."',zipcode='".$tcgoods['zipcode']."',consignee='".$tcgoods['consignee']."',
             email='".$tcgoods['email'] ."',mobile='".$tcgoods['mobile']."',weekdays='".$tcgoods['weekdays']."',halfday='".$tcgoods['halfday']."' where id=".$tcgoods['id']);
         }
     }
    $db->query("update ".$ecs->table("user_taocan")." set status='".$_POST['status']."',beizhu='".$_POST['beizhu']."' where id=".$id);
    show_message('套餐更新成功', '返回我的套餐', 'user_card.php?act=taocan_list');
}

elseif ($action == 'login')
{
    if (empty($back_act))
    {
        if (empty($back_act) && isset($GLOBALS['_SERVER']['HTTP_REFERER']))
        {
            $back_act = strpos($GLOBALS['_SERVER']['HTTP_REFERER'], 'user.php') ? './index.php' : $GLOBALS['_SERVER']['HTTP_REFERER'];
        }
        else
        {
            $back_act = 'user.php';
        }

    }


    $captcha = intval($_CFG['captcha']);
    if (($captcha & CAPTCHA_LOGIN) && (!($captcha & CAPTCHA_LOGIN_FAIL) || (($captcha & CAPTCHA_LOGIN_FAIL) && $_SESSION['login_fail'] > 2)) && gd_version() > 0)
    {
        $GLOBALS['smarty']->assign('enabled_captcha', 1);
        $GLOBALS['smarty']->assign('rand', mt_rand());
    }

    $smarty->assign('back_act', $back_act);
    $smarty->display('user_passport.dwt');
}

elseif ($action == 'user_card')
{
    if(isset($_REQUEST['t'])=='clear'){
        require(ROOT_PATH . '/includes/lib_order.php');
        clear_cart();
    }

    if(isset($_POST['bind']))
	{
	   $card_no =trim($_POST['card_no']);
	   $card_pass =trim($_POST['card_pass']);
	   if(empty($card_no))
	   {
	      show_message("卡号为空", '重新绑定', 'user_card.php?act=user_card', 'info');	    
	   }

	   $sql = "select * from " . $ecs->table('user_card') . " where card_no='$card_no' ";
	   $card_info = $db->getRow($sql);
	   if($card_info)
	   {
	      $user_card_num = $db->getOne("select count(*) from "  . $ecs->table('user_card') . " where card_no='$card_no'  and user_id='$_SESSION[user_id]' " );
	      if($user_card_num>=1)
		  {
		     show_message("您已绑定过一个会员止，由于一个会员最多绑定一个会员卡，无法绑定其它卡"); 
		  }
		  
		  if($card_info['user_id'] ==$_SESSION['user_id'])
		  {
		      show_message("您已绑定了此卡"); 	  
		  }
		  if(!$card_info['is_show'])
		  {
		      show_message("此卡已被禁用"); 	  
		  }
		  elseif($card_info['user_id'] >0)
		  {
		      show_message("此卡已被其它会员绑定");
		  }
		  elseif($card_info['card_pass'] ==$card_pass['card_pass'])
		  {
		      show_message("卡密错误！");
		  }
		  else
		  {
              $_SESSION['ucardno'] = $card_no;
              include_once(ROOT_PATH . 'includes/lib_transaction.php');

              $user_info = get_profile($user_id);
              if(!empty($user_info['msn'])){
                  bindusercard();
                  //show_message("会员卡绑定成功", '返回我的会员卡', 'user_card.php?act=user_card', 'info');
                  show_message("会员卡绑定成功", '您需要退出后重新登录君禾园网站，才能享受会员折扣下订单!', 'user.php?act=logout', 'info');
                  exit;
              }
              $smarty->assign('profile', $user_info);
              /* 取出注册扩展字段 */
              $sql = 'SELECT * FROM ' . $ecs->table('reg_fields') . ' WHERE type < 2 AND display = 1 ORDER BY dis_order, id';
              $extend_info_list = $db->getAll($sql);

              $sql = 'SELECT reg_field_id, content ' .
                  'FROM ' . $ecs->table('reg_extend_info') .
                  " WHERE user_id = $user_id";
              $extend_info_arr = $db->getAll($sql);

              $temp_arr = array();
              foreach ($extend_info_arr AS $val)
              {
                  $temp_arr[$val['reg_field_id']] = $val['content'];
              }

              foreach ($extend_info_list AS $key => $val)
              {
                  switch ($val['id'])
                  {
                      case 1:     $extend_info_list[$key]['content'] = $user_info['msn']; break;
                      case 2:     $extend_info_list[$key]['content'] = $user_info['qq']; break;
                      case 3:     $extend_info_list[$key]['content'] = $user_info['office_phone']; break;
                      case 4:     $extend_info_list[$key]['content'] = $user_info['home_phone']; break;
                      case 5:     $extend_info_list[$key]['content'] = $user_info['mobile_phone']; break;
                      default:    $extend_info_list[$key]['content'] = empty($temp_arr[$val['id']]) ? '' : $temp_arr[$val['id']] ;
                  }
              }

              $smarty->assign('extend_info_list', $extend_info_list);
              $smarty->assign('action', 'usercardnext');
              $smarty->display('card_transaction.dwt');
		  }
	   }
	   else
	   {
	     show_message("卡号不存在", '重新绑定', 'user_card.php?act=user_card', 'info');	 
	   }
	   
	   exit;
	}

	if(isset($_POST['unbind']))
	{
	   $card_no =trim($_POST['card_no']);
	   $card_pass =trim($_POST['card_pass']);
	   if(empty($card_no))
	   {
	      show_message("卡号为空", '重新解绑', 'user_card.php?act=user_card', 'info');	   
	   }
	   $num = $db->getOne("select count(*) from " . $ecs->table('user_card') . " where card_no='$card_no' and card_pass='$card_pass' and user_id='$_SESSION[user_id]' and is_show =1 ");
	   if($num>0)
	   {
	      $db->query("update " . $ecs->table('user_card') . " set user_id='', bind_time ='', card_status=0  where card_no='$card_no' and user_id='$_SESSION[user_id]' and is_show =1");
		  show_message("解绑成功", '会员信息', 'user_card.php?act=user_card', 'info');
	   }
	   else
	   {
	     show_message("密码错误或未查到您绑定的卡号信息，无法解绑", '重新解绑', 'user_card.php?act=user_card', 'info');	 
	   }
	   exit;
	}
	
	if(isset($_POST['chgcardpass']))
	{
	   $card_no =trim($_POST['card_no']);
	   $card_pass =trim($_POST['card_pass']);
	   if(empty($card_no) || empty($card_pass))
	   {
	      show_message("卡号卡密不能为空");	   
	   }
	   $num = $db->getOne("select count(*) from " . $ecs->table('user_card') . " where card_no='$card_no' and user_id='$_SESSION[user_id]' and is_show =1 ");
	   //echo $num;
	   if($num>0)
	   {
	      $db->query("update " . $ecs->table('user_card') . " set card_pass='$card_pass' where card_no='$card_no' and user_id='$_SESSION[user_id]' and is_show =1 ");
		  show_message("修改密码成功");
	   }
	   else
	   {
	     show_message("未查到您绑定的卡号信息，无法修改密码");	 
	   }
	   exit;
	}
	
	
	$sql = "select * from " . $ecs->table('user_card') . " where user_id='$_SESSION[user_id]' ";
	$res =$db->query($sql);
	$card_list = array();
	while($row=$db->fetchRow($res))
    {
	    $row['str_bind_time'] = local_date('Y-m-d H:I:s',$row['bind_time']);
		$card_list[] = $row;
	}
    $smarty->assign('card_list', $card_list);
	$smarty->display('card_transaction.dwt');
}
elseif($action=='usercarddg'){
   $dinggouway = $_POST['dinggouway'];
   $db->query("update ".$ecs->table("users")." set dinggou_way='".$dinggouway."'");
    if($dinggouway=='1'){
        ecs_header("Location: user.php\n");
        exit;
    }elseif($dinggouway=='2'){
        ecs_header("Location: index.php\n");
        exit;
    }else{
        //ecs_header("Location: user.php?act=taocan_buy\n");
        show_message("会员卡绑定成功", '您需要退出后重新登录君禾园网站，才能享受会员折扣下订单!', 'user.php?act=logout', 'info');
        exit;
    }

}
elseif($action=='bindusercard'){
    include_once(ROOT_PATH . 'includes/lib_transaction.php');
    //$birthday = trim($_POST['birthdayYear']) .'-'. trim($_POST['birthdayMonth']) .'-'.trim($_POST['birthdayDay']);
    $other['msn'] = $msn = isset($_POST['extend_field1']) ? trim($_POST['extend_field1']) : '';
    //$other['qq'] = $qq = isset($_POST['extend_field2']) ? trim($_POST['extend_field2']) : '';
    //$other['office_phone'] = $office_phone = isset($_POST['extend_field3']) ? trim($_POST['extend_field3']) : '';
    $other['home_phone'] = $home_phone = isset($_POST['extend_field4']) ? trim($_POST['extend_field4']) : '';
    $other['mobile_phone'] = $mobile_phone = isset($_POST['extend_field5']) ? trim($_POST['extend_field5']) : '';
    $sel_question = empty($_POST['sel_question']) ? '' : $_POST['sel_question'];
    $passwd_answer = isset($_POST['passwd_answer']) ? trim($_POST['passwd_answer']) : '';

    /* 更新用户扩展字段的数据 */
    $sql = 'SELECT id FROM ' . $ecs->table('reg_fields') . ' WHERE type = 0 AND display = 1 ORDER BY dis_order, id';   //读出所有扩展字段的id
    $fields_arr = $db->getAll($sql);

    foreach ($fields_arr AS $val)       //循环更新扩展用户信息
    {
        $extend_field_index = 'extend_field' . $val['id'];
        if(isset($_POST[$extend_field_index]))
        {
            $temp_field_content = strlen($_POST[$extend_field_index]) > 100 ? mb_substr(htmlspecialchars($_POST[$extend_field_index]), 0, 99) : htmlspecialchars($_POST[$extend_field_index]);
            $sql = 'SELECT * FROM ' . $ecs->table('reg_extend_info') . "  WHERE reg_field_id = '$val[id]' AND user_id = '$user_id'";
            if ($db->getOne($sql))      //如果之前没有记录，则插入
            {
                $sql = 'UPDATE ' . $ecs->table('reg_extend_info') . " SET content = '$temp_field_content' WHERE reg_field_id = '$val[id]' AND user_id = '$user_id'";
            }
            else
            {
                $sql = 'INSERT INTO '. $ecs->table('reg_extend_info') . " (`user_id`, `reg_field_id`, `content`) VALUES ('$user_id', '$val[id]', '$temp_field_content')";
            }
            $db->query($sql);
        }
    }

    /* 写入密码提示问题和答案 */
    if (!empty($passwd_answer) && !empty($sel_question))
    {
        $sql = 'UPDATE ' . $ecs->table('users') . " SET `passwd_question`='$sel_question', `passwd_answer`='$passwd_answer'  WHERE `user_id`='" . $_SESSION['user_id'] . "'";
        $db->query($sql);
    }


    if (!empty($qq) && !preg_match('/^\d+$/', $qq))
    {
        show_message($_LANG['passport_js']['qq_invalid']);
    }
    if (!empty($mobile_phone) && !preg_match('/^[\d-\s]+$/', $mobile_phone))
    {
        show_message($_LANG['passport_js']['mobile_phone_invalid']);
    }


    $profile  = array(
        'user_id'  => $user_id,
        'email'    => isset($_POST['email']) ? trim($_POST['email']) : '',
        'sex'      => isset($_POST['sex'])   ? intval($_POST['sex']) : 0,
        //'birthday' => $birthday,
        'other'    => isset($other) ? $other : array()
    );


    if (edit_profile($profile))
    {

       bindusercard();
    }
    //下一步
	 $smarty->assign('action', 'bindusercard');
    $smarty->display('card_transaction.dwt');
}
function is_telephone($phone){
$chars = "/^13[0-9]{1}[0-9]{8}$|15[0-9]{1}[0-9]{8}$|18[0-9]{1}[0-9]{8}$/";
if (preg_match($chars, $phone)){
return true;
}
}

function bindusercard($co=''){
    global $_SESSION;
    $card_no = empty($co)?$_SESSION['ucardno']:$co;
    $sql = "select * from " .$GLOBALS['ecs']->table('user_card') . " where card_no='".$card_no."' ";
    $card_info = $GLOBALS['db']->getRow($sql);
    $GLOBALS['db']->query("update " . $GLOBALS['ecs']->table('user_card') . " set user_id='$_SESSION[user_id]', bind_time ='". gmtime() ."', card_status=1 where card_no='$card_no' limit 1 ");
    $arr['user_money'] = floatval($card_info['user_money']);
    $arr['pay_points'] = $card_info['pay_points'];
    $arr['rank_points'] = $card_info['rank_points'];
    if($card_info['card_level'])
    {
        $card_rank = $GLOBALS['db']->getOne(" select rank_id from " . $GLOBALS['ecs']->table('user_rank') . " where rank_name='$card_info[card_level]' ");
        if($card_rank)  $arr['user_rank'] = $card_rank;
        $sql = 'UPDATE ' . $GLOBALS['ecs']->table('users') . " SET `user_rank`='$card_rank'  WHERE `user_id`='" . $_SESSION['user_id'] . "'";
        $GLOBALS['db']->query($sql);
    }
    log_account_change($_SESSION['user_id'], $arr['user_money'], 0, $arr['rank_points'], $arr['pay_points'], '绑定会卡'.$card_no.'充值等级积分:'.$arr['rank_points'].',消费积分'.$arr['pay_points']);
    $sql = 'UPDATE ' . $GLOBALS['ecs']->table('user_card') . " SET `user_money`='0', `pay_points`='0', `rank_points`='0'  WHERE `card_no`='" . $card_no . "'";
    $GLOBALS['db']->query($sql);
    $from_date = gmtime();
    $to_date =  local_strtotime("".HE_TONG_DAYS." day");
    $sql = 'UPDATE ' . $GLOBALS['ecs']->table('users') . " SET `from_date`='".$from_date."',to_date='".$to_date."'  WHERE `user_id`='" . $_SESSION['user_id'] . "'";
    $GLOBALS['db']->query($sql);

}
?>