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
require(ROOT_PATH . 'includes/lib_goods.php');
include_once(ROOT_PATH . 'includes/cls_image.php');

$image = new cls_image($_CFG['bgcolor']);
$exc = new exchange($ecs->table('countdown_goods'), $db, 'act_id', 'act_name');

/*------------------------------------------------------ */
//-- 活动列表页
/*------------------------------------------------------ */

if ($_REQUEST['act'] == 'list')
{
    admin_priv('countdown_goods');

    /* 模板赋值 */
    $smarty->assign('full_page',   1);
    $smarty->assign('ur_here',     $_LANG['countdown_goods_list']);
    $smarty->assign('action_link', array('href' => 'countdown_goods.php?act=add', 'text' => $_LANG['add_countdown_goods']));

    $list = countdown_goods();

    $smarty->assign('countdown_goods', $list['item']);
    $smarty->assign('filter',          $list['filter']);
    $smarty->assign('record_count',    $list['record_count']);
    $smarty->assign('page_count',      $list['page_count']);

    $sort_flag  = sort_flag($list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    /* 显示商品列表页面 */
    assign_query_info();
    $smarty->display('countdown_goods.htm');
}

/*------------------------------------------------------ */
//-- 分页、排序、查询
/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'query')
{
    $list = countdown_goods();

    $smarty->assign('countdown_goods', $list['item']);
    $smarty->assign('filter',          $list['filter']);
    $smarty->assign('record_count',    $list['record_count']);
    $smarty->assign('page_count',      $list['page_count']);

    $sort_flag  = sort_flag($list['filter']);
    $smarty->assign($sort_flag['tag'], $sort_flag['img']);

    make_json_result($smarty->fetch('countdown_goods.htm'), '',
        array('filter' => $list['filter'], 'page_count' => $list['page_count']));
}

/*------------------------------------------------------ */
//-- 删除
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'remove')
{
    check_authz_json('countdown_goods');

    $id = intval($_GET['id']);
    $countdown_goods = countdown_goods_info($id);
    if (empty($countdown_goods))
    {
        make_json_error($_LANG['countdown_not_exist']);
    }
    $name = $countdown_goods['act_name'];
    $exc->drop($id);

    /* 记日志 */
    admin_log($name, 'remove', 'countdown_goods');

    /* 清除缓存 */
    clear_cache_files();

    $url = 'countdown_goods.php?act=query&' . str_replace('act=remove', '', $_SERVER['QUERY_STRING']);

    ecs_header("Location: $url\n");
    exit;
}

/*------------------------------------------------------ */
//-- 批量操作
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'batch')
{
    /* 取得要操作的记录编号 */
    if (empty($_POST['checkboxes']))
    {
        sys_msg($_LANG['no_record_selected']);
    }
    else
    {
        /* 检查权限 */
        admin_priv('countdown_goods');

        $ids = $_POST['checkboxes'];

        if (isset($_POST['drop']))
        {
            /* 删除记录 */
            $sql = "DELETE FROM " . $ecs->table('countdown_goods') .
                    " WHERE act_id " . db_create_in($ids);
            $db->query($sql);

            /* 记日志 */
            admin_log('', 'batch_remove', 'countdown_goods');

            /* 清除缓存 */
            clear_cache_files();

            $links[] =array('href' => 'countdown_goods.php?act=list', 'text' => $_LANG['back_countdown_goods_list']);
            sys_msg($_LANG['batch_drop_ok']);        
      
        }
    }
}

/*------------------------------------------------------ */
//-- 修改排序
/*------------------------------------------------------ */
//elseif ($_REQUEST['act'] == 'edit_sort_order')
//{
//    check_authz_json('countdown_goods');
//
//    $id  = intval($_POST['id']);
//    $val = intval($_POST['val']);
//
//    $sql = "UPDATE " . $ecs->table('countdown_goods') .
//            " SET sort_order = '$val'" .
//            " WHERE act_id = '$id' LIMIT 1";
//    $db->query($sql);
//
//    make_json_result($val);
//}

/*------------------------------------------------------ */
//-- 添加、编辑
/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'add' || $_REQUEST['act'] == 'edit')
{
    /* 检查权限 */
    admin_priv('countdown_goods');

    /* 是否添加 */
    $is_add = $_REQUEST['act'] == 'add';
    $smarty->assign('form_action', $is_add ? 'insert' : 'update');

    /* 初始化、取得优惠活动信息 */
    if ($is_add)
    {
        $countdown_goods = array(
            'act_id'        => 0,
            'act_name'      => '',
            'start_time'    => date('Y-m-d', time() + 86400),
            'end_time'      => date('Y-m-d', time() + 4 * 86400),
            'act_url'       => '',
        );
    }
    else
    {
        if (empty($_GET['id']))
        {
            sys_msg('invalid param');
        }
        $id = intval($_GET['id']);
        $countdown_goods = countdown_goods_info($id);
        if (empty($countdown_goods))
        {
            sys_msg($_LANG['countdown_not_exist']);
        }
    }
    $smarty->assign('countdown_goods', $countdown_goods);

    /* 赋值时间控件的语言 */
    $smarty->assign('cfg_lang', $_CFG['lang']);

    /* 显示模板 */
    if ($is_add)
    {
        $smarty->assign('ur_here', $_LANG['add_countdown_goods']);
    }
    else
    {
        $smarty->assign('ur_here', $_LANG['edit_countdown_goods']);
    }
    $href = 'countdown_goods.php?act=list';
    if (!$is_add)
    {
        $href .= '&' . list_link_postfix();
    }
    $smarty->assign('action_link', array('href' => $href, 'text' => $_LANG['countdown_goods_list']));
    assign_query_info();
    $smarty->display('countdown_goods_info.htm');
}

/* 删除倒计时活动图片 */
elseif ($_REQUEST['act'] == 'drop_act_img')
{
    /* 权限判断 */
    admin_priv('countdown_goods');
    $act_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

    /* 取得logo名称 */
    $sql = "SELECT act_img FROM " .$ecs->table('countdown_goods'). " WHERE act_id = '$act_id'";
    $img_name = $db->getOne($sql);

    if (!empty($img_name))
    {
        @unlink(ROOT_PATH . DATA_DIR . '/countdowngoodsimg/' .$img_name);
        $sql = "UPDATE " .$ecs->table('countdown_goods'). " SET act_img = '' WHERE act_id = '$act_id'";
        $db->query($sql);
    }
    
    /* 清除缓存 */
    clear_cache_files();
    
    $link= array(array('text' => $_LANG['act_edit_lnk'], 'href'=>'countdown_goods.php?act=edit&id=' .$act_id), array('text' => $_LANG['act_list_lnk'], 'href'=>'countdown_goods.php?act=list'));
    sys_msg($_LANG['drop_act_img_success'], 0, $link);
}

/*------------------------------------------------------ */
//-- 添加、编辑后提交
/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'insert' || $_REQUEST['act'] == 'update')
{
    /* 检查权限 */
    admin_priv('countdown_goods');

    /* 是否添加 */
    $is_add = $_REQUEST['act'] == 'insert';

    /* 检查名称是否重复 */
    //$act_name = sub_str($_POST['act_name'], 255, false);
    //if (!$exc->is_only('act_name', $act_name, intval($_POST['id'])))
    //{
    //    sys_msg($_LANG['act_name_exists']);
    //}
   
    $actid=intval($_POST['id']);
    $sql = "SELECT act_img FROM " . $ecs->table('countdown_goods') .
            " WHERE act_id =" . $actid;
    $arr = $db->getOne($sql);    
   
    if ((isset($_FILES['act_img']['error']) && $_FILES['act_img']['error'] == 0) || (!isset($_FILES['act_img']['error']) && isset($_FILES['act_img']['tmp_name'] ) &&$_FILES['act_img']['tmp_name'] != 'none'))
    {
        $actimg = basename($image->upload_image($_FILES['act_img'], 'afficheimg'));
    }
    if(!empty($arr))
    {
        $actimg=$arr;
    }
    
    if (((isset($_FILES['act_img']['error']) && $_FILES['act_img']['error'] > 0) || (!isset($_FILES['act_img']['error']) && isset($_FILES['act_img']['tmp_name']) && $_FILES['act_img']['tmp_name'] == 'none'))&&empty($arr))
    {
        $link[] = array('text' => $_LANG['go_back'], 'href' => 'javascript:history.back(-1)');
        sys_msg($_LANG['js_languages']['act_photo_empty'], 0, $link);
    }
   
    /* 提交值 */
    $countdown_goods = array(
        'act_id'        => intval($_POST['id']),
        'act_name'      => $_POST['act_name'],
        'start_time'    => local_strtotime($_POST['start_time']),
        'end_time'      => local_strtotime($_POST['end_time']),
        'act_url'       => $_POST['act_url'],
        'act_img'       => $actimg,
    );
    /* 保存数据 */
    if ($is_add)
    {
        $db->autoExecute($ecs->table('countdown_goods'), $countdown_goods, 'INSERT');
        $countdown_goods['act_id'] = $db->insert_id();
    }
    else
    {
        $db->autoExecute($ecs->table('countdown_goods'), $countdown_goods, 'UPDATE', "act_id = '$countdown_goods[act_id]'");
    }

    /* 记日志 */
    if ($is_add)
    {
        admin_log($countdown_goods['act_name'], 'add', 'countdown_goods');
    }
    else
    {
        admin_log($countdown_goods['act_name'], 'edit', 'countdown_goods');
    }

    /* 清除缓存 */
    clear_cache_files();

    /* 提示信息 */
    if ($is_add)
    {
        $links = array(
            array('href' => 'countdown_goods.php?act=add', 'text' => $_LANG['continue_add_countdown_goods']),
            array('href' => 'countdown_goods.php?act=list', 'text' => $_LANG['back_countdown_goods_list'])
        );
        sys_msg($_LANG['add_countdown_goods_ok'], 0, $links);
    }
    else
    {
        $links = array(
            array('href' => 'countdown_goods.php?act=list&' . list_link_postfix(), 'text' => $_LANG['back_countdown_goods_list'])
        );
        sys_msg($_LANG['edit_countdown_goods_ok'], 0, $links);
    }
}

/*------------------------------------------------------ */
//-- 搜索商品
/*------------------------------------------------------ */

//elseif ($_REQUEST['act'] == 'search')
//{
//    /* 检查权限 */
//    check_authz_json('countdown_goods');
//
//    include_once(ROOT_PATH . 'includes/cls_json.php');
//
//    $json   = new JSON;
//    $filter = $json->decode($_GET['JSON']);
//    $filter->keyword = json_str_iconv($filter->keyword);
//    if ($filter->act_range == FAR_ALL)
//    {
//        $arr[0] = array(
//            'id'   => 0,
//            'name' => $_LANG['js_languages']['all_need_not_search']
//        );
//    }
//    elseif ($filter->act_range == FAR_CATEGORY)
//    {
//        $sql = "SELECT cat_id AS id, cat_name AS name FROM " . $ecs->table('countdown_goods') .
//            " WHERE cat_name LIKE '%" . mysql_like_quote($filter->keyword) . "%' LIMIT 50";
//        $arr = $db->getAll($sql);
//    }
//    elseif ($filter->act_range == FAR_BRAND)
//    {
//        $sql = "SELECT brand_id AS id, brand_name AS name FROM " . $ecs->table('brand') .
//            " WHERE brand_name LIKE '%" . mysql_like_quote($filter->keyword) . "%' LIMIT 50";
//        $arr = $db->getAll($sql);
//    }
//    else
//    {
//        $sql = "SELECT goods_id AS id, goods_name AS name FROM " . $ecs->table('goods') .
//            " WHERE goods_name LIKE '%" . mysql_like_quote($filter->keyword) . "%'" .
//            " OR goods_sn LIKE '%" . mysql_like_quote($filter->keyword) . "%' LIMIT 50";
//        $arr = $db->getAll($sql);
//    }
//    if (empty($arr))
//    {
//        $arr = array(0 => array(
//            'id'   => 0,
//            'name' => $_LANG['search_result_empty']
//        ));
//    }
//
//    make_json_result($arr);
//}



/*
 * 取得优惠活动列表
 * @return   array
 */
function countdown_goods()
{
    $result = get_filter();
    if ($result === false)
    {
        /* 过滤条件 */
        $filter['keyword']    = empty($_REQUEST['keyword']) ? '' : trim($_REQUEST['keyword']);
        if (isset($_REQUEST['is_ajax']) && $_REQUEST['is_ajax'] == 1)
        {
            $filter['keyword'] = json_str_iconv($filter['keyword']);
        }
        $filter['is_going']   = empty($_REQUEST['is_going']) ? 0 : 1;
        $filter['sort_by']    = empty($_REQUEST['sort_by']) ? 'act_id' : trim($_REQUEST['sort_by']);
        $filter['sort_order'] = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);

        $where = "";
        if (!empty($filter['keyword']))
        {
            $where .= " AND act_name LIKE '%" . mysql_like_quote($filter['keyword']) . "%'";
        }
        if ($filter['is_going'])
        {
            $now = gmtime();
            $where .= " AND start_time <= '$now' AND end_time >= '$now' ";
        }

        $sql = "SELECT COUNT(*) FROM " . $GLOBALS['ecs']->table('countdown_goods') .
                " WHERE 1 $where";
        $filter['record_count'] = $GLOBALS['db']->getOne($sql);

        /* 分页大小 */
        $filter = page_and_size($filter);

        /* 查询 */
        $sql = "SELECT * ".
                "FROM " . $GLOBALS['ecs']->table('countdown_goods') .
                " WHERE 1 $where ".
                " ORDER BY $filter[sort_by] $filter[sort_order] ".
                " LIMIT ". $filter['start'] .", $filter[page_size]";

        $filter['keyword'] = stripslashes($filter['keyword']);
        set_filter($filter, $sql);
    }
    else
    {
        $sql    = $result['sql'];
        $filter = $result['filter'];
    }
    $res = $GLOBALS['db']->query($sql);

    $list = array();
    while ($row = $GLOBALS['db']->fetchRow($res))
    {
        $row['start_time']  = local_date('Y-m-d H:i', $row['start_time']);
        $row['end_time']    = local_date('Y-m-d H:i', $row['end_time']);

        $list[] = $row;
    }

    return array('item' => $list, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
}

?>