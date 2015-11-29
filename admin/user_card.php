<?php
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$exc = new exchange($ecs->table("user_card"), $db, 'id', 'card_no');

/*------------------------------------------------------ */
//-- 会员卡类型列表
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'ctlist')
{
   admin_priv('user_card');
   /* 取得过滤条件 */
    $filter = array();
    $smarty->assign('ur_here',      $_LANG['card_type_list']);
    $smarty->assign('action_link',  array('text' => $_LANG['card_type_add'], 'href' => 'user_card.php?act=ctadd'));
    $smarty->assign('full_page',    1);
    $smarty->assign('filter',       $filter);

    $card_list = get_card_type_list();

    $smarty->assign('card_list',    $card_list['arr']);
    $smarty->assign('filter',          $card_list['filter']);
    $smarty->assign('record_count',    $card_list['record_count']);
    $smarty->assign('page_count',      $card_list['page_count']);

    $sort_flag  = sort_flag($card_list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    assign_query_info();
    $smarty->display('user_card_type.htm');
}

elseif ($_REQUEST['act'] == 'ctquery')
{
    check_authz_json('user_card');

    $card_list = get_card_type_list();

    $smarty->assign('card_list',    $card_list['arr']);
    $smarty->assign('filter',          $card_list['filter']);
    $smarty->assign('record_count',    $card_list['record_count']);
    $smarty->assign('page_count',      $card_list['page_count']);

    $sort_flag  = sort_flag($card_list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    make_json_result($smarty->fetch('user_card_type.htm'), '',array('filter' => $card_list['filter'], 'page_count' => $card_list['page_count']));
}

elseif ($_REQUEST['act'] == 'ctadd')
{
    admin_priv('user_card');

    $form_action          = 'ctinsert';

    $smarty->assign('action_link', array('text' => $_LANG['card_type_list'], 'href'=>'user_card.php?act=ctlist'));
    $smarty->assign('ur_here',     $_LANG['card_type_add']);
    $smarty->assign('form_action', $form_action);

    assign_query_info();
    $smarty->display('user_card_type_info.htm');
}

elseif ($_REQUEST['act'] == 'ctinsert')
{
    admin_priv('user_card');

   $arr = array();
	$arr['ct_name'] = trim($_POST['ct_name']);
	$arr['des'] = trim($_POST['des']);

    $db->autoExecute($ecs->table('user_card_type'), $arr, 'INSERT');

	/* 管理员日志 */
    admin_log(trim($_POST['ct_name']), 'add', 'user_card_type');
    clear_cache_files();

    $lnk[] = array('text' => $_LANG['back_list'],    'href'=>'user_card.php?act=ctlist');
    $lnk[] = array('text' => $_LANG['add_continue'], 'href'=>'user_card.php?act=ctadd');
    sys_msg($_LANG['add_user_card_type_success'], 0, $lnk);
}

if ($_REQUEST['act'] == 'ctedit')
{
    /* 权限判断 */
    admin_priv('user_card');

    /* 取文章数据 */
    $sql = "SELECT * FROM " .$ecs->table('user_card_type'). " WHERE ct_id='$_REQUEST[ct_id]'";
    $card = $db->GetRow($sql);
    $smarty->assign('card',     $card);
    $smarty->assign('ur_here',     $_LANG['card_type_edit']);
    $smarty->assign('action_link', array('text' => $_LANG['card_type_list'], 'href' => 'user_card.php?act=ctlist&' . list_link_postfix()));
    $smarty->assign('form_action', 'ctupdate');

    assign_query_info();
    $smarty->display('user_card_type_info.htm');
}

if ($_REQUEST['act'] =='ctupdate')
{
    /* 权限判断 */
    admin_priv('user_card');

	$arr = array();

	$ct_id =  $_POST['ct_id'];
	$arr['ct_name'] = trim($_POST['ct_name']);
	$arr['des'] = trim($_POST['des']);

    $db->autoExecute($ecs->table('user_card_type'), $arr, 'UPDATE', " ct_id='$ct_id' ");

    $note = sprintf($_LANG['card_type_edit_succeed'], stripslashes($_POST['ct_name']));
	admin_log($_POST['ct_name'], 'edit', 'user_card_type');

	clear_cache_files();
	  $link[0]['text'] = $_LANG['back_list'];
        $link[0]['href'] = 'user_card.php?act=ctlist&' . list_link_postfix();

	sys_msg($note, 0, $link);
}
elseif ($_REQUEST['act'] == 'ctremove')
{
    admin_priv('user_card');

    $ct_id = intval($_GET['id']);

	if(empty($ct_id))
	{
	     make_json_error('请选择卡类型'); 
	}
	
	$ct_info = $db->getRow("select * from "  . $ecs->table('user_card_type') . " where ct_id='$ct_id' " );

	$cnum = $db->getOne("select count(*) from "  . $ecs->table('user_card') . " where ct_id='$ct_id' ");
	if($cnum>0)
	{
	    make_json_error('请先删除会员卡');
		exit;
	}

	$sql = "DELETE FROM " . $ecs->table('user_card_type') . " WHERE ct_id = '$ct_id' limit 1 ";
	$db->query($sql);

	$url = 'user_card.php?act=ctquery&' . str_replace('act=ctremove', '', $_SERVER['QUERY_STRING']);

    ecs_header("Location: $url");
    exit;

}
elseif ($_REQUEST['act'] == 'ctremovecard')
{
    admin_priv('user_card');

    $ct_id = intval($_GET['id']);

	if(empty($ct_id))
	{
	     make_json_error('请选择卡类型'); 
	}
	$sql = "DELETE FROM " . $ecs->table('user_card') . " WHERE ct_id = '$ct_id' ";
	$db->query($sql);
	make_json_error('共删除了' . $db->affected_rows() . '张会员卡');
	exit;
}

/*------------------------------------------------------ */
//-- 会员卡列表
/*------------------------------------------------------ */

if ($_REQUEST['act'] == 'list')
{
    admin_priv('user_card');
	$ct_id = intval($_REQUEST['ct_id']);
	if(empty($ct_id))
	{
	    sys_msg('请选择卡类型发卡', 1);  
	}
	$ct_info = $db->getRow("select * from "  . $ecs->table('user_card_type') . " where ct_id='$ct_id' " );
    $smarty->assign('ct_info',      $ct_info);
	/* 取得过滤条件 */
    $filter = array();
    $smarty->assign('ur_here',      $ct_info['ct_name'] . $_LANG['user_card_list']);
    $smarty->assign('action_link',  array('text' => $_LANG['card_add'], 'href' => 'user_card.php?act=add&ct_id='.$ct_id));
	$smarty->assign('action_link2',  array('text' => $_LANG['user_card_import'], 'href' => 'user_card.php?act=send&ct_id='.$ct_id));
	$smarty->assign('action_link3',  array('text' => '导出选中的卡', 'href' => 'javascript:daochu();'));
	$smarty->assign('action_link4',  array('text' => '卡类型浏览', 'href' => 'user_card.php?act=ctlist'));
    $smarty->assign('full_page',    1);
    $smarty->assign('filter',       $filter);

    $card_list = get_card_list();

    $smarty->assign('card_list',    $card_list['arr']);
    $smarty->assign('filter',          $card_list['filter']);
    $smarty->assign('record_count',    $card_list['record_count']);
    $smarty->assign('page_count',      $card_list['page_count']);

    $sort_flag  = sort_flag($card_list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    assign_query_info();
    $smarty->display('user_card.htm');
}

/*------------------------------------------------------ */
//-- 翻页，排序
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'query')
{
    check_authz_json('user_card');

    $card_list = get_card_list();

    $smarty->assign('card_list',    $card_list['arr']);
    $smarty->assign('filter',          $card_list['filter']);
    $smarty->assign('record_count',    $card_list['record_count']);
    $smarty->assign('page_count',      $card_list['page_count']);

    $sort_flag  = sort_flag($card_list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    make_json_result($smarty->fetch('user_card.htm'), '',array('filter' => $card_list['filter'], 'page_count' => $card_list['page_count']));
}

/*------------------------------------------------------ */
//-- 添加会员等级
/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'add')
{
    admin_priv('user_card');

	 $ct_id = intval($_REQUEST['ct_id']);
	if(empty($ct_id))
	{
	    sys_msg('请选择卡类型', 1);  
	}
	$ct_info = $db->getRow("select * from "  . $ecs->table('user_card_type') . " where ct_id='$ct_id' " );
    $smarty->assign('ct_info',      $ct_info);

    $card['id']      = 0;
    $card['is_show'] = 1;
	 $card['ct_id'] = $ct_id;

    $form_action          = 'insert';

    $smarty->assign('card',        $card);
    $smarty->assign('action_link', array('text' => $_LANG['user_card_list'], 'href'=>'user_card.php?act=list&ct_id=' . $ct_id));
    $smarty->assign('ur_here',     $_LANG['add_user_card']);
    $smarty->assign('form_action', $form_action);

    assign_query_info();
    $smarty->display('user_card_info.htm');
}

/*------------------------------------------------------ */
//-- 增加会员等级到数据库
/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'insert')
{
    admin_priv('user_card');

   $arr = array();
   if ($_POST['user_name'] !='')
    {
        $_POST['user_name'] = trim($_POST['user_name']);
		$arr['user_id'] = $db->getOne(' select user_id from ' . $ecs->table('users') ." where user_name ='$_POST[user_name]'");
		if(!$arr['user_id'])
		{
		  sys_msg(sprintf($_LANG['bind_user_name_not_exists'], $_POST['user_name']), 1);
		}
    }


    /* 检查是否存在重名的会员等级 */
    if (!$exc->is_only('card_no', trim($_POST['card_no'])))
    {
        sys_msg(sprintf($_LANG['card_no_exists'], trim($_POST['card_no'])), 1);
    }
    $arr['ct_id'] = intval($_POST['ct_id']);
	$arr['card_no'] = trim($_POST['card_no']);
	$arr['card_level'] = trim($_POST['card_level']);
	$arr['card_pass'] = trim($_POST['card_pass']);
	$arr['card_status'] = $arr['user_id']>0?1:0;
	$arr['user_money'] = floatval($_POST['user_money']);
	$arr['pay_points'] = intval($_POST['pay_points']);
	$arr['rank_points'] = intval($_POST['rank_points']);
	$arr['true_name'] = trim($_POST['true_name']);
	$arr['address'] = trim($_POST['address']);
	$arr['mobile'] = trim($_POST['mobile']);
	$arr['email'] = trim($_POST['email']);
	$arr['is_show'] = intval($_POST['is_show']);
	$arr['send_type'] = trim($_POST['send_type']);
	$arr['des'] = trim($_POST['des']);
	$arr['add_time'] = gmtime();

    $db->autoExecute($ecs->table('user_card'), $arr, 'INSERT');

	/* 管理员日志 */
    admin_log(trim($_POST['card_no']), 'add', 'user_card');
    clear_cache_files();

    $lnk[] = array('text' => $_LANG['back_list'],    'href'=>'user_card.php?act=list&ct_id=' . $arr['ct_id']);
    $lnk[] = array('text' => $_LANG['add_continue'], 'href'=>'user_card.php?act=add&ct_id=' . $arr['ct_id']);
    sys_msg($_LANG['add_user_card_success'], 0, $lnk);
}

/*------------------------------------------------------ */
//-- 编辑
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'edit')
{
    /* 权限判断 */
    admin_priv('user_card');

    
    $sql = "SELECT * FROM " .$ecs->table('user_card'). " WHERE id='$_REQUEST[id]'";
    $card = $db->GetRow($sql);
	$smarty->assign('ur_here',      $_LANG['user_card_edit'].'-'.$card['card_no']);

	
	$ct_id = intval($card['ct_id']);
	if(empty($ct_id))
	{
	    sys_msg('此卡类型编号不正确');  
	}
	
	$ct_info = $db->getRow("select * from "  . $ecs->table('user_card_type') . " where ct_id='$ct_id' " );
    $smarty->assign('ct_info',      $ct_info);

	

	$card['user_name'] = $db->getOne("select user_name from " . $ecs->table('users') . " where user_id='$card[user_id]'");

    $smarty->assign('card',     $card);
    $smarty->assign('action_link', array('text' => $ct_info['ct_name'].$_LANG['user_card_list'], 'href' => 'user_card.php?act=list&ct_id=' . $ct_id . '&' . list_link_postfix()));
    $smarty->assign('form_action', 'update');

    assign_query_info();
    $smarty->display('user_card_info.htm');
}

if ($_REQUEST['act'] =='update')
{
    /* 权限判断 */
    admin_priv('user_card');

	$ct_id = intval($_POST['ct_id']);

	$arr = array();

	

	$id =  $_POST['id'];

	$old_card_info = $db->getRow('select * from ' . $ecs->table('user_card') . "  where id='$id' "  );


    if ($_POST['user_name'] !='')
    {
        $_POST['user_name'] = trim($_POST['user_name']);
		$arr['user_id'] = $db->getOne(' select user_id from ' . $ecs->table('users') ." where user_name ='$_POST[user_name]'");

		
		if(!$arr['user_id'])
		{
		  sys_msg(sprintf($_LANG['bind_user_name_not_exists'], $_POST['user_name']), 1);
		}

		if($old_card_info['user_id'] ==0 && $arr['user_id'])
		{
		   $arr['bind_time'] = gmtime();
		   $arr['card_status'] = 1;
		}


    }


    /* 检查是否存在重名的会员等级 */
    if (!$exc->is_only('card_no', trim($_POST['card_no']),$id))
    {
        sys_msg(sprintf($_LANG['card_no_exists'], trim($_POST['card_no'])), 1);
    }

	$arr['card_no'] = trim($_POST['card_no']);
	$arr['card_level'] = trim($_POST['card_level']);
	$arr['card_pass'] = trim($_POST['card_pass']);
	$arr['card_status'] = $arr['user_id']>0?1:0;
	$arr['user_money'] = floatval($_POST['user_money']);
	$arr['pay_points'] = intval($_POST['pay_points']);
	$arr['rank_points'] = intval($_POST['rank_points']);
	$arr['true_name'] = trim($_POST['true_name']);
	$arr['address'] = trim($_POST['address']);
	$arr['mobile'] = trim($_POST['mobile']);
	$arr['email'] = trim($_POST['email']);
	$arr['is_show'] = intval($_POST['is_show']);
	$arr['send_type'] = trim($_POST['send_type']);
	$arr['des'] = trim($_POST['des']);

    $db->autoExecute($ecs->table('user_card'), $arr, 'UPDATE', " id='$id' ");

    $note = sprintf($_LANG['user_card_edit_succeed'], stripslashes($_POST['title']));
	admin_log($_POST['card_no'], 'edit', 'user_card');

	clear_cache_files();
	  $link[0]['text'] = $_LANG['back_list'];
        $link[0]['href'] = 'user_card.php?act=list&ct_id=' . $ct_id . '&' . list_link_postfix();

	sys_msg($note, 0, $link);
}

/*------------------------------------------------------ */
//-- 删除会员卡
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'remove')
{
    admin_priv('user_card');

    $id = intval($_GET['id']);

	$sql = "SELECT * FROM " .$ecs->table('user_card'). " WHERE id='$id'";
    $card = $db->GetRow($sql);

    if ($exc->drop($id))
    {
        admin_log(addslashes($card['card_no']), 'remove', 'user_card');
        clear_cache_files();
    }

    $url = 'user_card.php?act=query&' . str_replace('act=remove', '', $_SERVER['QUERY_STRING']);

    ecs_header("Location: $url\n");
    exit;

}
/*------------------------------------------------------ */
//-- 解绑会员卡
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'unbind')
{
    admin_priv('user_card');
    $id = intval($_GET['id']);

	$sql = "SELECT * FROM " .$ecs->table('user_card'). " WHERE id='$id'";
    $card = $db->GetRow($sql);
	
	$db->query(" update " .$ecs->table('user_card')." set user_id='0',card_status=0,bind_time=0 where id='$id' ");
	admin_log(addslashes($card['card_no']), 'unbind', 'user_card');
	clear_cache_files();
    $url = 'user_card.php?act=query&' . str_replace('act=unbind', '', $_SERVER['QUERY_STRING']);
    ecs_header("Location: $url\n");
    exit;

}

/*------------------------------------------------------ */
//-- 批量操作
/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'batch_remove')
{

            admin_priv('user_card');

			$ct_id = intval($_POST['ct_id']);

            if (!isset($_POST['checkboxes']) || !is_array($_POST['checkboxes']))
            {
                sys_msg($_LANG['no_select_card_no'], 1);
            }

            

            foreach ($_POST['checkboxes'] AS $key => $id)
            {
                if ($exc->drop($id))
                {
                    $name = $exc->get_name($id);
                    admin_log(addslashes($name),'remove','user_card');
                }
            }


    /* 清除缓存 */
    clear_cache_files();
    $lnk[] = array('text' => $_LANG['back_list'], 'href' => 'user_card.php?act=list&ct_id=' . $ct_id);
    sys_msg($_LANG['batch_handle_ok'], 0, $lnk);
}

/*------------------------------------------------------ */
//-- 删除会员等级
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'send')
{
    admin_priv('user_card');
    
	$ct_id = intval($_REQUEST['ct_id']);
	if(empty($ct_id))
	{
	    sys_msg('请选择发卡的卡类型', 1);  
	}
    
	$ct_info = $db->getRow("select * from "  . $ecs->table('user_card_type') . " where ct_id='$ct_id' " );
    $smarty->assign('ct_info',      $ct_info);
	$smarty->assign('ur_here',     $ct_info['ct_name'] .$_LANG['batch_send']);
    $smarty->assign('action_link',  array('text' => $_LANG['card_type_list'], 'href' => 'user_card.php?act=ctlist'));
	$smarty->assign('action_link1',  array('text' => $_LANG['view_card'], 'href' => 'user_card.php?act=list&ct=' . $ct_id ));

    //var_dump($_POST['excel']);exit;
	if(isset($_POST['excel']) && !empty($_POST['excel']))
	{
	   $parr['true_name'] = trim($_POST['true_name']);
		   $parr['address'] = trim($_POST['address']);
		   $parr['mobile'] = trim($_POST['mobile']);
		   $parr['email'] = trim($_POST['email']);
	   $fld = array('会员卡号'=>'card_no','等级'=>'card_level','卡密'=>'card_pass','卡内金额'=>'user_money','消费积分'=>'pay_points','等级积分'=>'rank_points','姓名'=>'true_name','地址'=>'address','电话'=>'mobile','邮箱'=>'email','发送方式'=>'send_type','描述'=>'des','会员名'=>'user_name');
	   $line_number = 0;
	   $data = file($_FILES['file']['tmp_name']);  
	   
	   foreach ($data AS $line)
       {
			$line = ecs_iconv('GB2312', 'UTF8', $line);
			$line = trim($line);
			// 跳过第一行
			if ($line_number == 0)
			{
				$fld_idx = explode(",",$line);
				$line_number++;
				continue;
			}
			// 初始化
			$arr = array();
			$arr['ct_id'] = $ct_id;
			$temp    = explode(",",$line);
			foreach($temp as $k=>$v)
		    {
			   $arr[$fld[$fld_idx[$k]]] = trim($v);			
			}
			if($arr['card_no'] != '')
		    {
			       if ($arr['user_name'] !='')
					{
						$arr['user_name'] = trim($arr['user_name']);
						$arr['user_id'] = $db->getOne(' select user_id from ' . $ecs->table('users') ." where user_name ='$arr[user_name]'");
						$arr['user_id'] =$arr['user_id']?$arr['user_id']:0;
						unset($arr['user_name']);
					}
					$arr['is_show'] =1;
					if ($exc->is_only('card_no', $arr['card_no']))
					{
					     $arr['add_time'] = gmtime();
						 $arr['card_status'] = $arr['user_id']>0?1:0;
						 $db->autoExecute($ecs->table('user_card'), $arr, 'INSERT');
					}
					else
				    {
					
					     $arr['card_status'] = $arr['user_id']>0?1:0;
						 $db->autoExecute($ecs->table('user_card'), $arr, 'UPDATE'," card_no ='$arr[card_no]' ");
					}
			}

             
	   }
	   admin_log('批量上传会员卡', 'batch_upload', 'user_card');
	   /* 显示提示信息，返回商品列表 */
    $link[] = array('href' => 'user_card.php?act=list&ct_id='.$ct_id, 'text' => $_LANG['user_card_list']);
    sys_msg($_LANG['batch_upload_ok'], 0, $link);

	  }

	   if($_POST['batch'])
	   {
		   $pc = trim($_POST['pc']);
		   $bs = trim($_POST['bs']);
		   $len = intval($_POST['len']);
		    $pass_len = intval($_POST['pass_len']);
		   $start = intval($_POST['start']);
		   $num = intval($_POST['num']);
		   $parr = array();
		   $parr['ct_id'] =$ct_id;
		   $parr['user_money'] = floatval($_POST['user_money']);
		   $parr['pay_points'] = intval($_POST['pay_points']);
		   $parr['rank_points'] = intval($_POST['rank_points']);
		   $parr['true_name'] = trim($_POST['true_name']);
		   $parr['address'] = trim($_POST['address']);
		   $parr['mobile'] = trim($_POST['mobile']);
		   $parr['email'] = trim($_POST['email']);
		   $parr['send_type'] = trim($_POST['send_type']);
		   $parr['card_level'] = trim($_POST['card_level']);
		   $parr['des'] = trim($_POST['des']);
		   $parr['is_show'] =1;
		   $parr['user_id'] =0;
		   $parr['card_status'] =0;
		   $parr['add_time'] = gmtime();

		   if($num <=0 || $len <= 0)
		   {
		      sys_msg('发卡数量和随机数长不能为空', 1);		    
		   }
		   
		   for ($i=1;$i<=$num;$i++)
		   {
				$arr =$parr;
				$arr['card_no'] = $pc . $bs . str_pad($i+ $start, $len,'0',STR_PAD_LEFT);
				$arr['card_pass'] = generate_password($pass_len);
				if ($exc->is_only('card_no', $arr['card_no']))
				{
					 $db->autoExecute($ecs->table('user_card'), $arr, 'INSERT');
				}
				else
				{
					 $db->autoExecute($ecs->table('user_card'), $arr, 'UPDATE'," card_no ='$arr[card_no]' ");
				}
		   }
		    admin_log('批量生成会员卡', 'batch_upload', 'user_card');
			/* 显示提示信息，返回商品列表 */
    $link[] = array('href' => 'user_card.php?act=list&ct_id='.$ct_id, 'text' => $_LANG['user_card_list']);
    sys_msg($_LANG['batch_upload_ok'], 0, $link);

      }

	   // 记录日志
     

    
	
	
    $smarty->assign('ct_id',      $ct_id);
    $smarty->display('user_card_batch_add.htm');

}

elseif ($_REQUEST['act'] == 'export')
{

	  set_time_limit(0);
	  $ct_id = intval($_REQUEST['ct_id']);
		if(empty($ct_id))
		{
			sys_msg('请选择发卡的卡类型', 1);  
		}
		$ct_info = $db->getRow("select * from "  . $ecs->table('user_card_type') . " where ct_id='$ct_id' " );
      $smarty->assign('ct_info',      $ct_info);
	  require_once(ROOT_PATH . 'includes/cls_excel.php');
	  $xls = new Excel;
	  $xls->addArray (array(0 =>array('卡名','会员卡号','等级','卡密','卡内金额','消费积分','等级积分','姓名','地址','电话','邮箱','发送方式','会员名','添加时间','绑定状态','绑定时间','描述')));
	  $i=1;

	  $id   = $_REQUEST['id'];
	  $card_id_list = explode(',', $id);

	  foreach($card_id_list as $id)
	{	
		$card_info = $db->getRow('select c.*,u.user_name from ' . $ecs->table('user_card') . " as c  left join " . $ecs->table('users') . " as u on u.user_id =c.user_id  where c.id='$id' "  );

		$card_info['ct_name'] =$ct_info['ct_name'];
		$card_info['str_add_time'] =$card_info['add_time']?local_date('Y-m-d', $card_info['add_time']):'';
        $card_info['str_bind'] =$card_info['stauts']==1?'已绑定':'未绑定';
		$card_info['str_bind_time'] =$card_info['bind_time']?local_date('Y-m-d', $card_info['bind_time']):'';	
		$xls->addArray(array($i=>array($card_info['ct_name'],$card_info['card_no'],$card_info['card_level'],$card_info['card_pass'],$card_info['user_money'],$card_info['pay_points'],$card_info['rank_points'],$card_info['true_name'], $card_info['address'], $card_info['mobile'], $card_info['email'],$card_info['send_type'],$card_info['user_name'],$card_info['str_add_time'],$card_info['str_bind'],$card_info['str_bind_time'],$card_info['des'])));
	  $i++;
   }  
	 ob_clean();
	 $xls->generateXML("card_".date('y_m_d').'_'.rand(1,99));
	 exit;
}
/*
 *  编辑会员等级名称
 */
elseif ($_REQUEST['act'] == 'edit_card_no')
{
    $id = intval($_REQUEST['id']);
    $val = empty($_REQUEST['val']) ? '' : json_str_iconv(trim($_REQUEST['val']));
    check_authz_json('user_card');
    if ($exc->is_only('card_no', $val, $id))
    {
        if ($exc->edit("card_no = '$val'", $id))
        {
            /* 管理员日志 */
            admin_log($val, 'edit', 'user_card');
            clear_cache_files();
            make_json_result(stripcslashes($val));
        }
        else
        {
            make_json_error($db->error());
        }
    }
    else
    {
        make_json_error(sprintf($_LANG['card_no_exists'], htmlspecialchars($val)));
    }
}
elseif ($_REQUEST['act'] == 'edit_card_level')
{
    check_authz_json('user_card');

    $id     = intval($_POST['id']);
    $val    = trim($_POST['val']);

    $exc->edit("card_level = '$val'", $id);
    clear_cache_files();

    make_json_result($val);
}
elseif ($_REQUEST['act'] == 'edit_user_money')
{
    check_authz_json('user_card');
    $id     = intval($_POST['id']);
    $val    = floatval($_POST['val']);
    $exc->edit("user_money = '$val'", $id);
    clear_cache_files();
    make_json_result($val);
}
elseif ($_REQUEST['act'] == 'edit_pay_points')
{
    check_authz_json('user_card');
    $id     = intval($_POST['id']);
    $val    = intval($_POST['val']);
    $exc->edit("pay_points = '$val'", $id);
    clear_cache_files();
    make_json_result($val);
}
elseif ($_REQUEST['act'] == 'edit_rank_points')
{
    check_authz_json('user_card');

    $id     = intval($_POST['id']);
    $val    = intval($_POST['val']);

    $exc->edit("rank_points = '$val'", $id);
    clear_cache_files();

    make_json_result($val);
}
elseif ($_REQUEST['act'] == 'edit_card_pass')
{
    check_authz_json('user_card');

    $id     = intval($_POST['id']);
    $val    = trim($_POST['val']);

    $exc->edit(" card_pass = '$val'", $id);
    clear_cache_files();

    make_json_result($val);
}
elseif ($_REQUEST['act'] == 'edit_send_type')
{
    check_authz_json('user_card');

    $id     = intval($_POST['id']);
    $val    = trim($_POST['val']);

    $exc->edit(" send_type = '$val'", $id);
    clear_cache_files();

    make_json_result($val);
}
/*------------------------------------------------------ */
//-- 切换是否显示
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'toggle_is_show')
{
    check_authz_json('user_card');

    $id     = intval($_POST['id']);
    $val    = intval($_POST['val']);

    $exc->edit("is_show = '$val'", $id);
    clear_cache_files();

    make_json_result($val);
}

/* 获得文章列表 */
function get_card_type_list()
{
    $result = get_filter();
    if ($result === false)
    {
        $filter = array();
		$filter['sort_by']    = empty($_REQUEST['sort_by']) ? 'ct_id' : trim($_REQUEST['sort_by']);
        $filter['sort_order'] = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);
        $where = '';
        /* 文章总数 */
        $sql = 'SELECT COUNT(*) FROM ' .$GLOBALS['ecs']->table('user_card_type'). '  WHERE 1 ' .$where;
		//echo $sql;
        $filter['record_count'] = $GLOBALS['db']->getOne($sql);

        $filter = page_and_size($filter);

        /* 获取文章数据 */
        $sql = 'SELECT * FROM ' .$GLOBALS['ecs']->table('user_card_type'). ' WHERE 1 ' .$where. ' ORDER by '.$filter['sort_by'].' '.$filter['sort_order'];
        set_filter($filter, $sql);
    }
    else
    {
        $sql    = $result['sql'];
        $filter = $result['filter'];
    }
    $arr = array();
    $res = $GLOBALS['db']->selectLimit($sql, $filter['page_size'], $filter['start']);

    while ($rows = $GLOBALS['db']->fetchRow($res))
    {
        $arr[] = $rows;
    }
    return array('arr' => $arr, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
}


/* 获得文章列表 */
function get_card_list()
{
    $result = get_filter();
    if ($result === false)
    {
        $filter = array();
		$filter['ct_id']    = empty($_REQUEST['ct_id']) ? '' : trim($_REQUEST['ct_id']);
        $filter['card_no']    = empty($_REQUEST['card_no']) ? '' : trim($_REQUEST['card_no']);
        $filter['user_name'] = empty($_REQUEST['user_name']) ? '' : trim($_REQUEST['user_name']);
        $filter['sort_by']    = empty($_REQUEST['sort_by']) ? 'uc.id' : trim($_REQUEST['sort_by']);
        $filter['sort_order'] = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);

        $where = '';
		if (!empty($filter['ct_id']))
        {
            $where = " AND uc.ct_id = '$filter[ct_id]' ";
        }
        if (!empty($filter['card_no']))
        {
            $where = " AND uc.card_no = '$filter[card_no]' ";
        }
        if ($filter['user_name'])
        {
            $user_id =$GLOBALS['db']->getOne("select user_id from " .$GLOBALS['ecs']->table('users')." where user_name = '$filter[user_name]' ");

			$where .=$user_id? " AND uc.user_id = ' $user_id' ":'';
        }

        /* 文章总数 */
        $sql = 'SELECT COUNT(*) FROM ' .$GLOBALS['ecs']->table('user_card'). 'as uc WHERE 1 ' .$where;
		//echo $sql;
        $filter['record_count'] = $GLOBALS['db']->getOne($sql);

        $filter = page_and_size($filter);

        /* 获取文章数据 */
        $sql = 'SELECT uc.*,u.user_name FROM ' .$GLOBALS['ecs']->table('user_card'). ' as uc left join ' .$GLOBALS['ecs']->table('users'). ' as u on u.user_id = uc.user_id WHERE 1 ' .$where. ' ORDER by '.$filter['sort_by'].' '.$filter['sort_order'];
        set_filter($filter, $sql);
    }
    else
    {
        $sql    = $result['sql'];
        $filter = $result['filter'];
    }
    $arr = array();
    $res = $GLOBALS['db']->selectLimit($sql, $filter['page_size'], $filter['start']);

    while ($rows = $GLOBALS['db']->fetchRow($res))
    {
        $rows['date'] = local_date($GLOBALS['_CFG']['time_format'], $rows['add_time']);
		$rows['bind_date'] = local_date($GLOBALS['_CFG']['time_format'], $rows['bind_time']);
		$rows['str_pass'] = str_repeat("*", strlen($rows['card_pass']));
        $arr[] = $rows;
    }
    return array('arr' => $arr, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
}

function generate_password( $length = 8 ) 
{   
	// 密码字符集，可任意添加你需要的字符   
	$chars = '0123456789'; 
	$password = '';
	$chars_len = strlen($chars);
	$first = mt_rand(1,  $chars_len- 1); 
	$password .= $chars[$first];
	for ( $i = 1; $i < $length; $i++ )   
	{     
		$mid = mt_rand(0, $chars_len-1);
		$password .= $chars[$mid];   
	}   

	return $password;   
}  

?>