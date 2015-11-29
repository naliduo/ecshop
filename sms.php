<?php

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
include_once('includes/cls_json.php');
require(ROOT_PATH . 'includes/lib_sms.php');

require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/sms.php');

if (!isset($_REQUEST['step']))
{
    $_REQUEST['step'] = "";
}

$result = array('error' => 0, 'message' => '');
$json = new JSON;

$mobile = trim($_POST['mobile']);

$count = $db->getOne("SELECT COUNT(id) FROM " . $ecs->table('verify_code') ." WHERE getip='" . real_ip() . "' AND dateline>'" . gmtime() ."'-86400");
if ($count >= $_CFG['ihuyi_sms_ip_num'])
{
	$result['error'] = 6;
	$result['message'] = sprintf($_LANG['get_ip_excessived'], $_CFG['ihuyi_sms_ip_num']);
	die($json->encode($result));
}

if ($_REQUEST['step'] == 'getverifycode1')
{
	/* 是否开启手机短信验证注册 */
	if($_CFG['ihuyi_sms_mobile_reg'] == '0') {
		$result['error'] = 1;
		$result['message'] = $_LANG['ihuyi_sms_mobile_reg_closed'];
        die($json->encode($result));
	}
	
	/* 防止短信轰炸机 */
	if ($_SESSION['sms_code']!=trim($_POST['smscode']))
	{
		$result['error'] = 2;
		$result['message'] = $_LANG['invalid_sms_code'];
        die($json->encode($result));
	}
	
	
	/* 提交的手机号是否正确 */
	if (!ismobile($mobile))
	{
		$result['error'] = 2;
		$result['message'] = $_LANG['invalid_mobile_phone'];
        die($json->encode($result));
	}

	/* 提交的手机号是否已经注册帐号 */
    $sql = "SELECT COUNT(user_id) FROM " . $ecs->table('users') ." WHERE mobile_phone = '$mobile'";

    if ($db->getOne($sql) > 0)
    {
        $result['error'] = 3;
		$result['message'] = $_LANG['mobile_phone_registered'];
        die($json->encode($result));
    }

	/* 获取验证码请求是否获取过 */
	$sql = "SELECT COUNT(id) FROM " . $ecs->table('verify_code') ." WHERE status=1 AND getip='" . real_ip() . "' AND dateline>'" . gmtime() ."'-".$_CFG['ihuyi_sms_smsgap'];

    if ($db->getOne($sql) > 0)
    {
        $result['error'] = 4;
		$result['message'] = sprintf($_LANG['get_verifycode_excessived'], $_CFG['ihuyi_sms_smsgap']);
        die($json->encode($result));
    }

	$verifycode = getverifycode();

    $smarty->assign('shop_name',	$_CFG['shop_name']);
    $smarty->assign('user_mobile',	$mobile);
    $smarty->assign('verify_code',  $verifycode);

    $content = $smarty->fetch('str:' . $_CFG['ihuyi_sms_mobile_reg_value']);
	
	/* 发送注册手机短信验证 */
	$ret = sendsms($mobile, $content);
	
	if($ret === true)
	{
		//插入获取验证码数据记录
		$sql = "INSERT INTO " . $ecs->table('verify_code') . "(mobile, getip, verifycode, dateline) VALUES ('" . $mobile . "', '" . real_ip() . "', '$verifycode', '" . gmtime() ."')";
		$db->query($sql);

		$result['error'] = 0;
		$result['message'] = $_LANG['send_mobile_verifycode_successed'];
		die($json->encode($result));
	}
	else
	{
		$result['error'] = 5;
		$result['message'] = $_LANG['send_mobile_verifycode_failured'] . $ret;
		die($json->encode($result));
	}
}

elseif ($_REQUEST['step'] == 'getverifycode2')
{
	/* 是否开启手机绑定 */
	if($_CFG['ihuyi_sms_mobile_bind'] == '0') {
		$result['error'] = 1;
		$result['message'] = $_LANG['ihuyi_sms_mobile_bind_closed'];
        die($json->encode($result));
	}
	
	/* 防止短信轰炸机 */
	if ($_SESSION['sms_code']!=trim($_POST['smscode']))
	{
		$result['error'] = 2;
		$result['message'] = $_LANG['invalid_sms_code'].$_SESSION['sms_code']."sdafads".trim($_POST['smscode']);
		$result['message'] = $_LANG['invalid_sms_code'];
        die($json->encode($result));
	}	
	
	/* 提交的手机号是否正确 */
	if (!ismobile($mobile))
	{
		$result['error'] = 2;
		$result['message'] = $_LANG['invalid_mobile_phone'];
        die($json->encode($result));
	}

	/* 提交的手机号是否已经绑定帐号 */
    $sql = "SELECT COUNT(user_id) FROM " . $ecs->table('users') ." WHERE mobile_phone = '$mobile'";

    if ($db->getOne($sql) > 0)
    {
        $result['error'] = 3;
		$result['message'] = $_LANG['mobile_phone_binded'];
        die($json->encode($result));
    }

	/* 获取验证码请求是否获取过 */
	$sql = "SELECT COUNT(id) FROM " . $ecs->table('verify_code') ." WHERE (status=4 or status=5) AND getip='" . real_ip() . "' AND dateline>'" . gmtime() ."'-".$_CFG['ihuyi_sms_smsgap'];

    if ($db->getOne($sql) > 0)
    {
        $result['error'] = 4;
		$result['message'] = sprintf($_LANG['get_verifycode_excessived'], $_CFG['ihuyi_sms_smsgap']);
        die($json->encode($result));
    }

	$verifycode = getverifycode();

    $smarty->assign('shop_name',	$_CFG['shop_name']);
    $smarty->assign('user_mobile',	$mobile);
    $smarty->assign('verify_code',  $verifycode);

    $content = $smarty->fetch('str:' . $_CFG['ihuyi_sms_mobile_bind_value']);
	
	/* 发送注册手机短信验证 */
	$ret = sendsms($mobile, $content);
	
	if($ret === true)
	{
		//插入获取验证码数据记录
		$sql = "INSERT INTO " . $ecs->table('verify_code') . "(mobile, getip, verifycode, dateline, status) VALUES ('" . $mobile . "', '" . real_ip() . "', '$verifycode', '" . gmtime() ."', 4)";
		$db->query($sql);

		$result['error'] = 0;
		$result['message'] = $_LANG['bind_mobile_verifycode_successed'];
		die($json->encode($result));
	}
	else
	{
		$result['error'] = 5;
		$result['message'] = $_LANG['bind_mobile_verifycode_failured'] . $ret;
		die($json->encode($result));
	}
}

?>