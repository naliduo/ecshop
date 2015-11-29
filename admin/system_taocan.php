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

    $smarty->assign('ur_here','系统套餐');
    $smarty->assign('action_link', array('href' => 'system_taocan.php?act=add', 'text' => '新增套餐'));
    $systemtc_list =  systemtaocanlist();

    $smarty->assign('systemtc_list',   $systemtc_list['systemtaocanlist']);
    $smarty->assign('filter',       $systemtc_list['filter']);
    $smarty->assign('record_count', $systemtc_list['record_count']);
    $smarty->assign('page_count',   $systemtc_list['page_count']);
    $smarty->assign('full_page',    1);
    assign_query_info();
    $smarty->display("systemtc_list.htm");


}
if ($_REQUEST['act'] == 'query')
{
    $systemtc_list = systemtaocanlist();
    $smarty->assign('systemtc_list',   $systemtc_list['systemtaocanlist']);
    $smarty->assign('filter',       $systemtc_list['filter']);
    $smarty->assign('record_count', $systemtc_list['record_count']);
    $smarty->assign('page_count',   $systemtc_list['page_count']);
    make_json_result($smarty->fetch('systemtc_list.htm'), '', array('filter' => $systemtc_list['filter'], 'page_count' => $systemtc_list['page_count']));
}
if($_REQUEST['act'] == 'add'){
    $smarty->assign('action_link', array('href' => 'system_taocan.php?act=list', 'text' => '套餐列表'));
    $smarty->assign('cat_list', cat_list(0, $goods['cat_id']));
    $smarty->assign('brand_list', get_brand_list());
    include_once(ROOT_PATH . 'includes/fckeditor/fckeditor.php'); // 包含 html editor 类文件$smarty->assign('brand_list', get_brand_list());
    $kindeditor = returnfck('desc');
    $smarty->assign('FCKeditor', $kindeditor);  //这里前面的 FCKEditor 不要变

    $smarty->assign('form_act','insert');

    $smarty->display("systemtc_info.htm");
}
if($_REQUEST['act'] == 'edit'){
    $smarty->assign('action_link', array('href' => 'system_taocan.php?act=list', 'text' => '套餐列表'));
    $smarty->assign('cat_list', cat_list(0, $goods['cat_id']));
    $smarty->assign('brand_list', get_brand_list());
    $id = $_REQUEST['id'];
    $taocan = $db->getRow("select * from ".$ecs->table("system_taocan")." where id=".$id);
    $glist1 = $db->getAll("select id,gids,gnums from ".$ecs->table("system_tc_goods")."   where tcid=".$id." order by id asc");
    $nglist = array();
    foreach($glist1 as $k=>$g){
      $goodsid = unserialize($g['gids']);
      $gnums = unserialize($g['gnums']);

      $glist2 = $db->getAll("select g.goods_name,g.shop_price,g.goods_id from ".$ecs->table("goods")."  g where g.goods_id ".db_create_in($goodsid)." ");
      foreach($glist2 as $gg){
           foreach($goodsid as $j=>$id){
                  if($gg['goods_id']==$id){
                      $gg['goods_num'] = $gnums[$j];

                        $nglist[$g['id']][] = $gg;
                  }
           }
      }

    }

    include_once(ROOT_PATH . 'includes/fckeditor/fckeditor.php'); // 包含 html editor 类文件$smarty->assign('brand_list', get_brand_list());
    $kindeditor = returnfck('desc',$taocan['descs']);
    $smarty->assign('FCKeditor', $kindeditor);  //这里前面的 FCKEditor 不要变
    $smarty->assign('nglist',$nglist);
    $smarty->assign('taocan',$taocan);
    $smarty->assign('form_act','update');
    $smarty->display("systemtc_info.htm");
}
if($_REQUEST['act'] == 'insert'){

    $tname =  $_POST['tname'];
    $tprice = trim($_POST['tprice']);
    $desc =  empty($_POST['desc'])?'':$_POST['desc'];

    include_once(ROOT_PATH . '/includes/cls_image.php');
    $image = new cls_image($_CFG['bgcolor']);

    foreach ($_FILES['tpic']['tmp_name'] AS $key => $value)
    {

        if ($value != 'none' && $value)
        {
            if (!$image->check_img_type($_FILES['tpic']['type'][$key]))
            {
                $links[] = array('text' => '返会套餐列表', 'href' => 'system_taocan.php?act=list');
                sys_msg('无效的图片格式:'.$_FILES['tpic']['type'][$key], 1, $links);

            }
        }
    }
    foreach ($_FILES['tpic']['size'] AS $key => $value)
    {
        if($value){
            if($value/1024/1024>4){
                $links[] = array('text' => '返会套餐列表', 'href' => 'system_taocan.php?act=list');
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
        }
    }
    $sql = "insert into ".$ecs->table('system_taocan')." (tname,tprice,tpic,last_date,descs) values ('".$tname."','".$tprice."','".$newimgs."','".gmtime()."','".$desc."')";
    $db->query($sql);
    $tid= $db->insert_id();

    //套餐商品
    for($i=0;$i<7;$i++){
        if(isset($_POST['goodsid'.$i])){
             $gids = serialize($_POST['goodsid'.$i]);
             $ngoodsnum = array();
             foreach($_POST['goodsnum'.$i] as $n){
                 if(!empty($n)){
                     $ngoodsnum[] =$n;
                 }
             }
             $goodsnum = serialize($ngoodsnum);
             $db->query("insert into ".$ecs->table('system_tc_goods')." (tcid,gids,gnums) values (".$tid.",'".$gids."','".$goodsnum."')");
        }
    }

    $links[] = array('text' => '套餐列表', 'href' => 'system_taocan.php?act=list');
    sys_msg($_LANG['attradd_succed'], 1, $links);
    exit;
}

if($_REQUEST['act'] == 'update'){

    $taocan['tname'] =  $_POST['tname'];
    $taocan['tprice'] = trim($_POST['tprice']);
    $taocan['descs'] =  empty($_POST['desc'])?'':$_POST['desc'];
    $taocan['last_date'] = gmtime();

    $id = trim($_POST['id']);
    include_once(ROOT_PATH . '/includes/cls_image.php');
    $image = new cls_image($_CFG['bgcolor']);

    foreach ($_FILES['tpic']['tmp_name'] AS $key => $value)
    {

        if ($value != 'none' && $value)
        {
            if (!$image->check_img_type($_FILES['tpic']['type'][$key]))
            {
                $links[] = array('text' => '返会套餐列表', 'href' => 'system_taocan.php?act=list');
                sys_msg('无效的图片格式:'.$_FILES['tpic']['type'][$key], 1, $links);

            }
        }
    }
    foreach ($_FILES['tpic']['size'] AS $key => $value)
    {
        if($value){
            if($value/1024/1024>4){
                $links[] = array('text' => '返会套餐列表', 'href' => 'system_taocan.php?act=list');
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

    $db->autoExecute($ecs->table('system_taocan'),$taocan,'UPDATE','id='.$id);



    $ulist  = $db->getAll("select  id from ".$ecs->table('system_tc_goods')." where tcid=".$id);
    $newulist = array();
    foreach($ulist as $j=>$u){
        $newulist[$j] = $u['id'];
    }
    $db->query("update ".$ecs->table('user_taocan')." set tprice=".$taocan['tprice']."  where id in (select  tcid from ".$ecs->table('user_tc_goods')." where sgid=".$newulist[0].")");
   //$uglist  = $db->getAll("select  tcid from ".$ecs->table('user_tc_goods')." where tcid=".$id);

   // $db->query("delete from ".$ecs->table('system_tc_goods')." where tcid=".$id);

    //套餐商品
    for($i=0;$i<7;$i++){
        if(isset($_POST['goodsid'.$i])){
            $gids = serialize($_POST['goodsid'.$i]);
            $ngoodsnum = array();
            foreach($_POST['goodsnum'.$i] as $n){
                if(!empty($n)){
                    $ngoodsnum[] =$n;
                }
            }

             $goodsnum = serialize($ngoodsnum);
             if(isset($newulist[$i])){
                  $db->query("update ".$ecs->table('system_tc_goods')." set gids='".$gids."',gnums='".$goodsnum."' where id=".$newulist[$i]." ");
                  $db->query("update ".$ecs->table('user_tc_goods')." set gids='".$gids."',gnums='".$goodsnum."' where sgid=".$newulist[$i]."");





              }

             //else{
               //  $db->query("insert into ".$ecs->table('system_tc_goods')." (tcid,gids,gnums) values (".$id.",'".$gids."','".$goodsnum."')");
           ///  }

        }
    }
    $links[] = array('text' => '套餐列表', 'href' => 'system_taocan.php?act=list');
    sys_msg($_LANG['attradd_succed'], 1, $links);
    exit;
}
 if ($_REQUEST['act'] == 'getprice')
{
    include_once(ROOT_PATH . 'includes/cls_json.php');
    $json = new JSON;
    $opt = array();
    $gnum = empty($_REQUEST['gnum'])?1:$_REQUEST['gnum'];
    $price = $db->getOne("select shop_price from ".$ecs->table("goods")." where goods_id=".$_REQUEST['id']);


    if(!$_REQUEST['type']){
      $price = floatval('-'.$price)*$gnum;
    }
    $opt[] = array('price'=>$price);

    make_json_result($opt);
}
 if ($_REQUEST['act'] == 'remove')
{
    $db->query("delete from ".$ecs->table("system_taocan")." where id=".$_REQUEST['id']);
    $url = 'system_taocan.php?act=query&' . str_replace('act=remove', '', $_SERVER['QUERY_STRING']);

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
function systemtaocanlist(){
    $filter['sort_by']          = empty($_REQUEST['sort_by']) ? 'id' : trim($_REQUEST['sort_by']);
    $filter['sort_order']       = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);
    $sql = "SELECT COUNT(*) FROM " .$GLOBALS['ecs']->table('system_taocan');
    $filter['record_count'] = $GLOBALS['db']->getOne($sql);

    $filter = page_and_size($filter);

    $sql = " SELECT *  ".
        " FROM " . $GLOBALS['ecs']->table('system_taocan') . " " .
        " ORDER BY $filter[sort_by] $filter[sort_order] ".
        " LIMIT " . $filter['start'] . ",$filter[page_size]";

    $row = $GLOBALS['db']->getAll($sql);
    foreach($row as $k=>$r){
        $row[$k]['last_date'] = local_date("Y-m-d",$r['last_date']);
        $row[$k]['pingci'] =  $GLOBALS['db']->getOne("select count(id) from ".$GLOBALS['ecs']->table('system_tc_goods')." where tcid=".$r['id']);
    }

    return array('systemtaocanlist' => $row, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);


}





?>