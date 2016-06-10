<?php
/**
 * ECSHOP 管理中心优惠活动管理
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: favourable.php 17217 2011-01-19 06:29:08Z liubo $
 */

define('IN_ECS', true);
require(dirname(__FILE__) . '/includes/init.php');
include_once(ROOT_PATH . 'includes/cls_image.php');


/*------------------------------------------------------ */
//-- 倒计时活动列表页
/*------------------------------------------------------ */
$imgurl="/data/afficheimg/";
$now = gmtime();
$where .= " AND start_time <= '$now' AND end_time >= '$now' ";
/* 查询 */
$sql = "SELECT * ".
        "FROM " . $GLOBALS['ecs']->table('countdown_goods') .
        " WHERE 1 $where ".
        " LIMIT 1";
        
//echo $sql;
$result = array();
$res = $GLOBALS['db']->query($sql);
if (!empty($res))
{
    $row = $GLOBALS['db']->fetchRow($res);
    $result["act_id"]=iconv("gb2312","utf-8//IGNORE", $row['act_id']);
    $result["act_name"]=$row['act_name'];
    $result["end_time"]=local_date('Y-m-d H:i:s', $row['end_time']);
    $result["act_img"]=$imgurl."".iconv("gb2312","utf-8//IGNORE", $row['act_img']);
    $result["act_url"]=iconv("gb2312","utf-8//IGNORE", $row['act_url']);
}
else
{
    $result["act_name"]="暂时没有倒计时活动,敬请期待...";
}
echo json_encode($result);
?>