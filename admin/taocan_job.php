<?php
define('IN_ECS', true);
require(dirname(__FILE__) . '/includes/init.php');

if (empty($_REQUEST['act']))
{
    $_REQUEST['act'] = 'info';
}
else
{
    $_REQUEST['act'] = trim($_REQUEST['act']);
}
if ($_REQUEST['act'] == 'info'){
    $status = isset($_REQUEST['status'])?trim($_REQUEST['status']):'';
    if(!empty($status)){
        $db->query("update ".$ecs->table("taocan_job")." set status='".$status."'");
    }
    $sql = "select * from ".$ecs->table("taocan_job");
    $job = $db->getRow($sql);
    $job['last_date'] = local_date("Y-m-d H:i:s",$job['last_date']);
    $smarty->assign('full_page',    1);
    $smarty->assign('job',    $job);
    assign_query_info();
    $smarty->display("taocan_job.htm");
}



?>