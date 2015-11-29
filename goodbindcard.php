<?php

/**
 * ECSHOP 商品分类
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: category.php 17217 2011-01-19 06:29:08Z liubo $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = true;
}
    //合同到期
    $todate = $db->getOne("select to_date from ".$ecs->table("users")." where user_id=".$_SESSION['user_id']);
    if(!empty($todate) && $todate<gmtime()){ //判断合同期限
        ecs_header("Location: user.php?act=user_card \n");
        exit;
    }

    $id = isset($_REQUEST['id'])?trim($_REQUEST['id']):0;

    $catlist = $GLOBALS['db']->getAll("select distinct(c.cat_id) ,c.cat_name from ".$GLOBALS['ecs']->table('category')." c,".$GLOBALS['ecs']->table('goods')." g
     where  g.is_on_sale = 1 and g.is_bind_card='2' AND g.is_alone_sale = 1 AND g.is_delete = 0  and g.cat_id = c.cat_id");

    $smarty->assign('cid',      $id );
    $smarty->assign('catlist',      $catlist );
    $bindusercardme =  $smarty->get_template_vars("bindusercardme");
  if(empty($_SESSION['user_id'])){

        ecs_header("Location: ./\n");

        exit;

    }
    $smarty->assign('page_title',       '会员俱乐部');    // 页面标题
    $smarty->assign('ur_here',          '会员俱乐部');  // 当前位置

    $smarty->assign('categories',       get_categories_tree()); // 分类树
    $smarty->assign('helps',            get_shop_help());              // 网店帮助
    $smarty->assign('top_goods',        get_top10());                  // 销售排行
    $smarty->assign('show_marketprice', $_CFG['show_marketprice']);

    $goodslist = category_get_goods22();
$smarty->assign('num',          count($goodslist));  // 当前位置
    $smarty->assign('goods_list',       $goodslist);

$smarty->display('goodbindcard.dwt');



function category_get_goods22()
{

    $where = "g.is_on_sale = 1 and g.is_bind_card='2' AND g.is_alone_sale = 1 AND ".
            "g.is_delete = 0  ";
    $id = isset($_REQUEST['id'])?trim($_REQUEST['id']):0;

    if($id){
      $where.=" and g.cat_id ". db_create_in(array_unique(array_keys(cat_list($id, 0, false))));
    }




    /* 获得商品列表 */
    $sql = 'SELECT g.goods_id, g.goods_name,g.cat_id, g.goods_name_style, g.market_price, g.is_new, g.is_best, g.is_hot, g.shop_price AS org_price, ' .
                "IFNULL(mp.user_price, g.shop_price * '$_SESSION[discount]') AS shop_price, g.promote_price, g.goods_type, " .
                'g.promote_start_date, g.promote_end_date, g.goods_brief, g.goods_thumb , g.goods_img ' .
            'FROM ' . $GLOBALS['ecs']->table('goods') . ' AS g ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('member_price') . ' AS mp ' .
                "ON mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]' " .
            "WHERE $where ";

    $goodlist =  $GLOBALS['db']->getAll($sql);

    $arr = array();
    foreach($goodlist as $row){

        if ($row['promote_price'] > 0)
        {
            $promote_price = bargain_price($row['promote_price'], $row['promote_start_date'], $row['promote_end_date']);
        }
        else
        {
            $promote_price = 0;
        }

        /* 处理商品水印图片 */
        $watermark_img = '';

        if ($promote_price != 0)
        {
            $watermark_img = "watermark_promote_small";
        }
        elseif ($row['is_new'] != 0)
        {
            $watermark_img = "watermark_new_small";
        }
        elseif ($row['is_best'] != 0)
        {
            $watermark_img = "watermark_best_small";
        }
        elseif ($row['is_hot'] != 0)
        {
            $watermark_img = 'watermark_hot_small';
        }

        if ($watermark_img != '')
        {
            $arr[$row['goods_id']]['watermark_img'] =  $watermark_img;
        }

        $arr[$row['goods_id']]['goods_id']         = $row['goods_id'];

        $arr[$row['goods_id']]['goods_name']       = $row['goods_name'];

        $arr[$row['goods_id']]['name']             = $row['goods_name'];
        $arr[$row['goods_id']]['goods_brief']      = $row['goods_brief'];
        $arr[$row['goods_id']]['goods_style_name'] = add_style($row['goods_name'],$row['goods_name_style']);
        $arr[$row['goods_id']]['market_price']     = price_format($row['market_price']);
        $arr[$row['goods_id']]['shop_price']       = price_format($row['shop_price']);
        $arr[$row['goods_id']]['type']             = $row['goods_type'];
        $arr[$row['goods_id']]['promote_price']    = ($promote_price > 0) ? price_format($promote_price) : '';
        $arr[$row['goods_id']]['goods_thumb']      = get_image_path($row['goods_id'], $row['goods_thumb'], true);
        $arr[$row['goods_id']]['goods_img']        = get_image_path($row['goods_id'], $row['goods_img']);
        $arr[$row['goods_id']]['url']              = build_uri('goods', array('gid'=>$row['goods_id']), $row['goods_name']);
    }

    return $arr;
}




?>
