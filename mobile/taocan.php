<?php
define('IN_ECS', true);
define('ECS_ADMIN', true);
require(dirname(__FILE__) . '/includes/init.php');
 $act = isset($_REQUEST['act'])?trim($_REQUEST['act']):'list';
if(empty($_SESSION['user_id'])){
    ecs_header("Location: user.php\n");
    exit;
}

$cardnum = $db->getone("select count(user_id) from ".$ecs->table("user_card")." where user_id=".$_SESSION['user_id']);

if(!$cardnum){
    ecs_header("Location: user.php?act=user_card\n");
    exit;
}
if($act=='info'){
    if (isset($_REQUEST['id']))
    {
        $c_id = intval($_REQUEST['id']);
    }
    else
    {

        ecs_header("Location: ./\n");

        exit;
    }
    $taocan = $db->getRow("select * from ".$ecs->table("system_taocan")." where id=".$c_id);
    $glist =  $db->getAll("select id,gids,gnums from ".$ecs->table("system_tc_goods")."   where tcid=".$c_id." order by id asc");
    $nglist = array();
    foreach($glist as $g){
        $goodsid = unserialize($g['gids']);
        $gnums = unserialize($g['gnums']);
        $ngl = $db->getAll("select g.goods_name,g.shop_price,g.goods_id from ".$ecs->table("goods")."  g where g.goods_id ".db_create_in($goodsid)." ");
        foreach($ngl as $n){
            foreach($goodsid as $j=>$id){
                if($n['goods_id']==$id){
                    $n['goods_num'] = $gnums[$j];

                    $nglist[$g['id']][] = $n;
                }
            }
        }

    }
    $taocan['num'] = count($glist);
    $smarty->assign('nglist',$nglist);
    $smarty->assign('taocan',$taocan);
    $smarty->display('taocan_info.dwt');
}
if($act=='buy'){
    require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/user.php');
    require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/shopping_flow.php');

    $num = $db->getOne("select count(user_id) from ".$ecs->table("user_taocan")." where user_id=".$_SESSION['user_id']);
    if($num>2){
        show_message('你已超过套餐允许购买数量，请重新确认.', '用户中心', 'user.php', 'error');
    }
    $smarty->assign('country_list',       get_regions());
    $smarty->assign('lang',             $_LANG);
    if (isset($_REQUEST['id']))
    {
        $c_id = intval($_REQUEST['id']);
    }
    else
    {

        ecs_header("Location: ./\n");

        exit;
    }

    $taocan = $db->getRow("select * from ".$ecs->table("system_taocan")." where id=".$c_id);
    $glist =  $db->getAll("select id,gids,gnums from ".$ecs->table("system_tc_goods")."   where tcid=".$c_id." order by id asc");
    $nglist = array();
    foreach($glist as $g){
        $goodsid = unserialize($g['gids']);
        $gnums = unserialize($g['gnums']);
        $ngl = $db->getAll("select g.goods_name,g.shop_price,g.goods_id from ".$ecs->table("goods")."  g where g.goods_id ".db_create_in($goodsid)." ");
        foreach($ngl as $n){
            foreach($goodsid as $j=>$id){
                  if($n['goods_id']==$id){
                      $n['goods_num'] = $gnums[$j];

                      $nglist[$g['id']][] = $n;
                  }
            }
        }

    }

    $taocan['num'] = count($glist);
    $smarty->assign('nglist',$nglist);
    $smarty->assign('taocan',$taocan);
    $smarty->display('taocan_buy.dwt');
}
if($act=='done'){
    include_once(ROOT_PATH .'includes/lib_clips.php');
	$_LANG['user_bonus_info'] = '共计 %d 个,价值 %s';
    $id = $_REQUEST['id'];
    $taocan = $db->getRow("select * from ".$ecs->table("system_taocan")." where id=".$id);
    $user =  get_user_default($_SESSION['user_id']);

    if(empty($user['to_date1']) || $user['to_date1']<gmtime()){ //判断合同期限
        $taocan['beizhu'] = '用户合同期限到期';
    }elseif($user['user_money']<$taocan['tprice']){
        $taocan['beizhu'] = '用户余额不足';
    }
	else
	{
		$taocan['beizhu']='';
	}
    if(!empty( $taocan['beizhu'])){
         $taocan['status']  = 2;
    }else{
         $taocan['status']  = 1;
    }

    $db->query("INSERT INTO  ".$ecs->table("user_taocan")." (tname,tprice,tpic,last_date,descs,status,user_id,beizhu)
    values('".$taocan['tname']."','".$taocan['tprice']."','".$taocan['tpic']."','".gmtime()."','".$taocan['descs']."',
    '".$taocan['status']."','".$_SESSION['user_id']."','".$taocan['beizhu']."') ");
    $nid = $db->insert_id();

    for($i=0;$i<7;$i++){
        if(isset($_POST['country'.$i])){
            $tcgoods = array();
            $tcgoods['tcid'] = $nid;
            $tcgoods['gids'] = serialize($_POST['goodsid'.$i]);
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
            $tcgoods['gnums'] = serialize($_POST['goods_num'.$i]);

            $db->autoExecute($ecs->table("user_tc_goods"),$tcgoods,'INSERT');
        }
    }
    show_message('套餐购买成功', '返回我的套餐', 'user.php?act=taocan_list');
}
?>