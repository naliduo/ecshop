<?php
define('IN_ECS', true);
require(dirname(__FILE__) . '/includes/init.php');

if (empty($_REQUEST['act']))
{
    $_REQUEST['act'] = 'list';
}
else
{
    $_REQUEST['act'] = trim($_REQUEST['act']);
}
if ($_REQUEST['act'] == 'list'){

    $smarty->assign('ur_here','用户套餐');
    $usertc_list =  usertaocanlist();

    $smarty->assign('usertc_list',   $usertc_list['usertaocanlist']);
    $smarty->assign('filter',       $usertc_list['filter']);
    $smarty->assign('record_count', $usertc_list['record_count']);
    $smarty->assign('page_count',   $usertc_list['page_count']);
    $smarty->assign('full_page',    1);
    assign_query_info();
    $smarty->display("usertc_list.htm");


}
if ($_REQUEST['act'] == 'query')
{
    $usertc_list = usertaocanlist();
    $smarty->assign('usertc_list',   $usertc_list['usertaocanlist']);
    $smarty->assign('filter',       $usertc_list['filter']);
    $smarty->assign('record_count', $usertc_list['record_count']);
    $smarty->assign('page_count',   $usertc_list['page_count']);
    make_json_result($smarty->fetch('usertc_list.htm'), '', array('filter' => $usertc_list['filter'], 'page_count' => $usertc_list['page_count']));
}
if($_REQUEST['act'] == 'info'){
    $smarty->assign('action_link', array('href' => 'user_taocan.php?act=list', 'text' => '套餐列表'));
    $id = $_REQUEST['id'];
    $taocan = $db->getRow("select t.*,u.user_name from ".$ecs->table("user_taocan")." t,".$ecs->table("users")." u where t.user_id = u.user_id and id=".$id);
    $glist = $db->getAll("select t.*,(select region_name from ".$ecs->table("region")." where region_type=1 and region_id=t.province) as province1,
     (select region_name from ".$ecs->table("region")." where region_type=2 and region_id=t.city) as city1,
      (select region_name from ".$ecs->table("region")." where region_type=2 and region_id=t.district) as district1 from ".$ecs->table("user_tc_goods")." t  where tcid=".$id." order by id asc");
    foreach($glist as $k=>$g){
        $goodsid = unserialize($g['gids']);
        $gnums = unserialize($g['gnums']);

        $glist2 = $db->getAll("select g.goods_name,g.shop_price,g.goods_id from ".$ecs->table("goods")."  g where g.goods_id ".db_create_in($goodsid)." ");
        foreach($glist2 as $gg){
            foreach($goodsid as $j=>$id){
                if($gg['goods_id']==$id){
                    $gg['goods_num'] = $gnums[$j];

                    $glist[$k]['goods'][] = $gg;
                }
            }
        }
     }
    $smarty->assign('full_page',    1);
    assign_query_info();
    $taocan['last_date'] = local_date('Y-m-d H:i:s',$taocan['last_date']);
    $smarty->assign('taocan',$taocan);
    $smarty->assign('glist',$glist);
    $smarty->assign('form_act','info');
    $smarty->display("usertc_info.htm");
}

if($_REQUEST['act'] == 'edit'){
    $smarty->assign('action_link', array('href' => 'user_taocan.php?act=list', 'text' => '套餐列表'));
    $smarty->assign('cat_list', cat_list(0, $goods['cat_id']));
    $smarty->assign('brand_list', get_brand_list());
    $id = $_REQUEST['id'];
    $taocan = $db->getRow("select * from ".$ecs->table("user_taocan")." where id=".$id);
    $glist = $db->getAll("select *  from ".$ecs->table("user_tc_goods")."   where tcid=".$id." order by id asc");

    foreach($glist as $k=>$g){
        $goodsid = unserialize($g['gids']);
        $glist[$k]['province_list'] = get_regions(1,1);
        $glist[$k]['city_list'] = get_regions(2,$g['province']);
        $glist[$k]['district_list'] = get_regions(3,$g['city']);
        $gnums = unserialize($g['gnums']);

        $glist2 = $db->getAll("select g.goods_name,g.shop_price,g.goods_id from ".$ecs->table("goods")."  g where g.goods_id ".db_create_in($goodsid)." ");
        foreach($glist2 as $gg){
            foreach($goodsid as $j=>$id){
                if($gg['goods_id']==$id){
                    $gg['goods_num'] = $gnums[$j];

                    $glist[$k]['goods'][] = $gg;
                }
            }
        }

    }
    $smarty->assign('country_list', get_regions());
    include_once(ROOT_PATH . 'includes/fckeditor/fckeditor.php'); // 包含 html editor 类文件$smarty->assign('brand_list', get_brand_list());
    $kindeditor = returnfck('desc',$taocan['descs']);
    $smarty->assign('FCKeditor', $kindeditor);  //这里前面的 FCKEditor 不要变
    $smarty->assign('nglist',$glist);
    $smarty->assign('taocan',$taocan);
    $smarty->assign('form_act','update');
    $smarty->display("usertc_info.htm");
}

if($_REQUEST['act'] == 'update'){

    $taocan['tname'] =  $_POST['tname'];
    $taocan['beizhu'] =  $_POST['beizhu'];
    $taocan['tprice'] = trim($_POST['tprice']);
    $taocan['descs'] =  empty($_POST['desc'])?'':$_POST['desc'];
    $taocan['last_date'] = gmtime();
    $taocan['status'] = trim($_POST['status']);
    $id = trim($_POST['id']);
    include_once(ROOT_PATH . '/includes/cls_image.php');
    $image = new cls_image($_CFG['bgcolor']);

    foreach ($_FILES['tpic']['tmp_name'] AS $key => $value)
    {

        if ($value != 'none' && $value)
        {
            if (!$image->check_img_type($_FILES['tpic']['type'][$key]))
            {
                $links[] = array('text' => '返会套餐列表', 'href' => 'user_taocan.php?act=list');
                sys_msg('无效的图片格式:'.$_FILES['tpic']['type'][$key], 1, $links);

            }
        }
    }
    foreach ($_FILES['tpic']['size'] AS $key => $value)
    {
        if($value){
            if($value/1024/1024>4){
                $links[] = array('text' => '返会套餐列表', 'href' => 'user_taocan.php?act=list');
                sys_msg('图片大于4M:'.$_FILES['tpic']['name'][$key], 1, $links);
            }
        }
    }
    foreach($_FILES['tpic']['tmp_name'] AS $key => $value){
        if($value){
            $upload = array(
                'name' => $_FILES['tpic']['name'][$key],
                'type' => $_FILES['tpic']['type'][$key],
                'tmp_name' => $_FILES['tpic']['tmp_name'][$key],
                'size' => $_FILES['tpic']['size'][$key],
            );
            $newimgs   = $image->upload_image($upload); // 原始图片
            $taocan['tpic'] = $newimgs;
        }
    }
    //$sgid =$db->getAll("select id  from ".$ecs->table('system_tc_goods'). " where tcid =".$id);
    $db->autoExecute($ecs->table('user_taocan'),$taocan,'UPDATE','id='.$id);
    $db->query("delete from ".$ecs->table('user_tc_goods')." where tcid=".$id);
    
    // Added by edward 2015.1.12
    $sgid = array();
    $sgid = $db->getAll("select id  from ".$ecs->table('system_tc_goods'). " where tcid = (select id from ". $ecs->table('system_taocan') . " where tname=\"".$_POST['tname'] ."\")" );
   
    
    //套餐商品
    for($i=0;$i<7;$i++){
        if(isset($_POST['goodsid'.$i])){
            $tcgoods = array();
            $tcgoods['tcid'] = $id;
            $tcgoods['gids'] = serialize($_POST['goodsid'.$i]);
            $tcgoods['country'] = $_POST['country'.$i];
            $tcgoods['province'] = $_POST['province'.$i];
            $tcgoods['city'] = $_POST['city'.$i];
            $tcgoods['district'] = $_POST['district'.$i];
            $tcgoods['address'] = $_POST['address'.$i];
            $tcgoods['zipcode'] = $_POST['zipcode'.$i];
            $tcgoods['consignee'] = $_POST['consignee'.$i];
            $tcgoods['country'] = $_POST['country'.$i];
            $tcgoods['email'] = $_POST['email'.$i];
            $tcgoods['mobile'] = $_POST['mobile'.$i];
            $tcgoods['weekdays'] = $_POST['weekdays'.$i];
            $tcgoods['halfday'] = $_POST['halfday'.$i];
            // Added by Edward, 2015.1.12
            $tcgoods['sgid']  = $sgid[$i]['id'];
            $ngoodsnum = array();
            foreach($_POST['goodsnum'.$i] as $n){
                if(!empty($n)){
                    $ngoodsnum[] =$n;
                }
            }

            $tcgoods['gnums'] = serialize($ngoodsnum);
            $db->autoExecute($ecs->table("user_tc_goods"),$tcgoods,'INSERT');
        }
    }
    $links[] = array('text' => '套餐列表', 'href' => 'user_taocan.php?act=list');
    sys_msg($_LANG['attradd_succed'], 1, $links);
    exit;
}
 if ($_REQUEST['act'] == 'getprice')
{
    include_once(ROOT_PATH . 'includes/cls_json.php');
    $json = new JSON;
    $opt = array();
    $price = $db->getOne("select shop_price from ".$ecs->table("goods")." where goods_id=".$_REQUEST['id']);


    if(!$_REQUEST['type']){
      $price = '-'.$price;
    }
    $opt[] = array('price'=>$price);

    make_json_result($opt);
}
 if ($_REQUEST['act'] == 'remove')
{
    $db->query("delete from ".$ecs->table("user_taocan")." where id=".$_REQUEST['id']);
    $db->query("delete from ".$ecs->table("user_tc_goods")." where tcid=".$_REQUEST['id']);
    $url = 'user_taocan.php?act=query&' . str_replace('act=remove', '', $_SERVER['QUERY_STRING']);
    ecs_header("Location: $url\n");
    exit;
}
if ($_REQUEST['act'] == 'get_goods_list')
{
    include_once(ROOT_PATH . 'includes/cls_json.php');
    $json = new JSON;

    $filters = $json->decode($_GET['JSON']);
    $tcgoods = array();
    if(!empty($filters->tcg_id)){
        $taocangoods = $db->getOne("select gids from ".$ecs->table("system_tc_goods")." where id=".$filters->tcg_id);
        $tcgoods = unserialize($taocangoods);
    }
    $flag = false;
    $arr = get_goods_list($filters);
    $opt = array();

    foreach ($arr AS $key => $val)
    {
        $opt[] = array('id'=>$val['goods_id'],'gname'=>$val['goods_name'].'('.$val['shop_price'].')','shopprice'=>$val['shop_price'],'checked'=>false);

    }

    make_json_result($opt);
}
function usertaocanlist(){
    $where = ' ';
    $filter['username']          = empty($_REQUEST['username']) ? '' : trim($_REQUEST['username']);
    $filter['tcname']          = empty($_REQUEST['tcname']) ? '' : trim($_REQUEST['tcname']);
    $filter['status']          = empty($_REQUEST['status']) ? '' : trim($_REQUEST['status']);
    $filter['sort_order']       = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);
    $filter['sort_by']          = empty($_REQUEST['sort_by']) ? 'id' : trim($_REQUEST['sort_by']);
    if($filter['username']){
         $where.=" and u.user_name like '%".$filter['username']."%' ";
    }
    if($filter['tcname']){
        $where.=" and t.tname like '%".$filter['tcname']."%'";
    }
    if($filter['status']){
        $where.=" and t.status = '".$filter['status']."'";
    }
    $sql = "SELECT COUNT(t.id) FROM ".$GLOBALS['ecs']->table('user_taocan')." t,".$GLOBALS['ecs']->table('users')." u where u.user_id = t.user_id ".$where;
    $filter['record_count'] = $GLOBALS['db']->getOne($sql);

    $filter = page_and_size($filter);

    $sql = " SELECT t.*,u.user_name  ".
        " FROM " . $GLOBALS['ecs']->table('user_taocan') . " t," .
         $GLOBALS['ecs']->table('users') . " u "
        ." where u.user_id = t.user_id ".$where.
        " ORDER BY $filter[sort_by] $filter[sort_order] ".
        " LIMIT " . $filter['start'] . ",$filter[page_size]";

    $row = $GLOBALS['db']->getAll($sql);
    foreach($row as $k=>$r){
        $row[$k]['last_date'] = local_date("Y-m-d H:i:s",$r['last_date']);
        $utaocangoods = $GLOBALS['db']->getAll("select weekdays,halfday from ".$GLOBALS['ecs']->table('user_tc_goods')." where tcid=".$r['id']);
        $row[$k]['pingci'] = count($utaocangoods);
        $row[$k]['tcinfolist']  = $utaocangoods;
    }

    return array('usertaocanlist' => $row, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);


}





?>