<?php
	
//13:44 2013-07-05

define('IN_ECS', true);
define('ECS_ADMIN', true);

require(dirname(__FILE__) . '/includes/init.php');
require(ROOT_PATH . 'includes/lib_order.php');

$flow_type = 0;

if ($_SESSION['user_id'] > 0){
	$smarty->assign('user_name', $_SESSION['user_name']);
}

$act = isset($_REQUEST['act']) ? $_REQUEST['act'] : '';

//删除单品
if ($act == 'drop_goods'){
	$rec_id = isset($_GET['id']) ? intval($_GET['id']) : '';
	if($rec_id) flow_drop_cart_goods($rec_id);
	$smarty->assign('cart_faild', 1);
	$smarty->assign('tips', '成功删除该商品！');
}
/* 把优惠活动加入购物车 */
elseif ($act== 'add_favourable')
{
    /* 取得优惠活动信息 */
    $act_id = intval($_POST['act_id']);
    $favourable = favourable_info($act_id);


    /* 判断用户能否享受该优惠 */
    if (!favourable_available($favourable))
    {
        echo "<script>alert('您不能享受该优惠.');window.location.href='cart.php';</script>";
        exit;
    }

    /* 检查购物车中是否已有该优惠 */
    $cart_favourable = cart_favourable();
    if (favourable_used($favourable, $cart_favourable))
    {
        echo "<script>alert('该优惠活动已加入购物车了.');window.location.href='cart.php';</script>";
        exit;
    }
    /* 赠品（特惠品）优惠 */
    if ($favourable['act_type'] == FAT_GOODS)
    {
        /* 检查是否选择了赠品 */
        if (empty($_POST['gift']))
        {
            echo "<script>alert('请选择赠品（特惠品).');window.location.href='cart.php';</script>";
            exit;
        }

        /* 检查是否已在购物车 */
        $sql = "SELECT goods_name" .
            " FROM " . $ecs->table('cart') .
            " WHERE session_id = '" . SESS_ID . "'" .
            " AND rec_type = '" . CART_GENERAL_GOODS . "'" .
            " AND is_gift = '$act_id'" .
            " AND goods_id " . db_create_in($_POST['gift']);
        $gift_name = $db->getCol($sql);
        if (!empty($gift_name))
        {
            show_message(sprintf($_LANG['gift_in_cart'], join(',', $gift_name)));
        }

        /* 检查数量是否超过上限 */
        $count = isset($cart_favourable[$act_id]) ? $cart_favourable[$act_id] : 0;
        if ($favourable['act_type_ext'] > 0 && $count + count($_POST['gift']) > $favourable['act_type_ext'])
        {
            show_message($_LANG['gift_count_exceed']);
        }

        /* 添加赠品到购物车 */
        foreach ($favourable['gift'] as $gift)
        {
            if (in_array($gift['id'], $_POST['gift']))
            {
                add_gift_to_cart($act_id, $gift['id'], $gift['price']);
            }
        }
    }
    elseif ($favourable['act_type'] == FAT_DISCOUNT)
    {
        add_favourable_to_cart($act_id, $favourable['act_name'], cart_favourable_amount($favourable) * (100 - $favourable['act_type_ext']) / 100);
    }
    elseif ($favourable['act_type'] == FAT_PRICE)
    {
        add_favourable_to_cart($act_id, $favourable['act_name'], $favourable['act_type_ext']);
    }

    /* 刷新购物车 */
    ecs_header("Location: cart.php\n");
    exit;
}



//清空
elseif ($act == 'clear'){
	$sql = "DELETE FROM " . $ecs->table('cart') . " WHERE session_id='" . SESS_ID . "'";
	$db->query($sql);
	$smarty->assign('cart_faild', 1);
	$smarty->assign('tips', '购物车已清空！');
}
//无刷新更新购物车
elseif($act=='update_group_cart'){
	include('includes/cls_json.php');
	
	$result = array('error' => 0, 'message' => '', 'content' => '', 'goods_id' => '');
	$json = new JSON;
	$rec_id = isset($_REQUEST['rec_id']) ? intval($_REQUEST['rec_id']) : 0;
	$number = isset($_REQUEST['number']) ? intval($_REQUEST['number']) : 0;
	$goods_id = isset($_REQUEST['goods_id']) ? intval($_REQUEST['goods_id']) : 0;
	
	$result = array('rec_id' => $rec_id, 'number' => 1);
	$arr_return = check_goods_store($rec_id, $number);
	if ($rec_id <= 0 || $number <= 0){
		$result['content'] = '参数错误';
		$result['error']  = 1;
	}else if (!empty($arr_return['mes'])){
		$result['content'] = $arr_return['mes'];
		$result['error']  = 1;
		$result['number'] =$arr_return['number'];
	}else{
		$db->query("UPDATE " . $GLOBALS['ecs']->table('cart') . " set goods_number = '$number' where rec_id ='$rec_id'");
		$cart_goods = get_cart_goods();
		foreach($cart_goods['goods_list'] as $rec_goods)
		{
			if($rec_goods['rec_id'] == $rec_id)
			{
				$subtotal = $result['subtotal'] = $rec_goods['subtotal'];
				@$subtotal_exchange_integral = $rec_goods['subtotal_exchange_integral'];
			}
		}
		//购物车的描述的格式化
		$result['subtotal'] = $subtotal;
		$result['subtotal_exchange_integral'] = empty($subtotal_exchange_integral) ? 0 : $subtotal_exchange_integral;
		$result['cart_amount_desc'] = $cart_goods['total']['goods_price'];
		$result['market_amount_desc'] = $cart_goods['total']['market_price'].$cart_goods['total']['saving'].$cart_goods['total']['save_rate'];
	}
	die($json->encode($result));
}

/* 对商品信息赋值 */
$cart_goods = get_cart_goods();
$smarty->assign('goods_list', $cart_goods['goods_list']);
$smarty->assign('total', $cart_goods['total']);

$favourable_list = favourable_list($_SESSION['user_rank'],$cart_goods['total']['goods_amount']);


$smarty->assign('favourable_list', $favourable_list);
$smarty->assign('footer', get_footer());
$smarty->display('cart.dwt');


/**
 * 取得购物车中已有的优惠活动及数量
 * @return  array
 */
function cart_favourable()
{
    $list = array();
    $sql = "SELECT is_gift, COUNT(*) AS num " .
        "FROM " . $GLOBALS['ecs']->table('cart') .
        " WHERE session_id = '" . SESS_ID . "'" .
        " AND rec_type = '" . CART_GENERAL_GOODS . "'" .
        " AND is_gift > 0" .
        " GROUP BY is_gift";
    $res = $GLOBALS['db']->query($sql);
    while ($row = $GLOBALS['db']->fetchRow($res))
    {
        $list[$row['is_gift']] = $row['num'];
    }

    return $list;
}
function favourable_list($user_rank,$totalamount)
{
    /* 购物车中已有的优惠活动及数量 */
    $used_list = cart_favourable();


    /* 当前用户可享受的优惠活动 */
    $favourable_list = array();
    $user_rank = ',' . $user_rank . ',';
    $now = gmtime();
    $sql = "SELECT * " .
        "FROM " . $GLOBALS['ecs']->table('favourable_activity') .
        " WHERE CONCAT(',', user_rank, ',') LIKE '%" . $user_rank . "%'" .
        " AND start_time <= '$now' AND end_time >= '$now'" .
        " AND act_type = '" . FAT_GOODS . "' and min_amount<=".$totalamount.
        " ORDER BY min_amount desc limit 0,1";
    //echo $sql;
    $res = $GLOBALS['db']->query($sql);
    while ($favourable = $GLOBALS['db']->fetchRow($res))
    {
        $favourable['start_time'] = local_date($GLOBALS['_CFG']['time_format'], $favourable['start_time']);
        $favourable['end_time']   = local_date($GLOBALS['_CFG']['time_format'], $favourable['end_time']);
        $favourable['formated_min_amount'] = price_format($favourable['min_amount'], false);
        $favourable['formated_max_amount'] = price_format($favourable['max_amount'], false);
        $favourable['gift']       = unserialize($favourable['gift']);

        foreach ($favourable['gift'] as $key => $value)
        {
            $favourable['gift'][$key]['formated_price'] = price_format($value['price'], false);
            $sql = "SELECT COUNT(*) FROM " . $GLOBALS['ecs']->table('goods') . " WHERE is_on_sale = 1 AND goods_id = ".$value['id'];
            $is_sale = $GLOBALS['db']->getOne($sql);
            if(!$is_sale)
            {
                unset($favourable['gift'][$key]);
            }
        }

        $favourable['act_range_desc'] = act_range_desc($favourable);
        //$favourable['act_type_desc'] = sprintf($GLOBALS['_LANG']['fat_ext'][$favourable['act_type']], $favourable['act_type_ext']);

        /* 是否能享受 */
        $favourable['available'] = favourable_available($favourable);
        if ($favourable['available'])
        {
            /* 是否尚未享受 */
             if(favourable_used($favourable, $used_list)){
                 continue;
             }

        }

        $favourable_list[] = $favourable;
    }

    return $favourable_list;
}


/**
 * 根据购物车判断是否可以享受某优惠活动
 * @param   array   $favourable     优惠活动信息
 * @return  bool
 */
function favourable_available($favourable)
{
    /* 会员等级是否符合 */
    $user_rank = $_SESSION['user_rank'];
    if (strpos(',' . $favourable['user_rank'] . ',', ',' . $user_rank . ',') === false)
    {
        return false;
    }

    /* 优惠范围内的商品总额 */
    $amount = cart_favourable_amount($favourable);

    /* 金额上限为0表示没有上限 */
    return $amount >= $favourable['min_amount'] &&
        ($amount <= $favourable['max_amount'] || $favourable['max_amount'] == 0);
}

/**
 * 取得购物车中某优惠活动范围内的总金额
 * @param   array   $favourable     优惠活动
 * @return  float
 */
function cart_favourable_amount($favourable)
{
    /* 查询优惠范围内商品总额的sql */
    $sql = "SELECT SUM(c.goods_price * c.goods_number) " .
        "FROM " . $GLOBALS['ecs']->table('cart') . " AS c, " . $GLOBALS['ecs']->table('goods') . " AS g " .
        "WHERE c.goods_id = g.goods_id " .
        "AND c.session_id = '" . SESS_ID . "' " .
        "AND c.rec_type = '" . CART_GENERAL_GOODS . "' " .
        "AND c.is_gift = 0 " .
        "AND c.goods_id > 0 ";

    /* 根据优惠范围修正sql */
    if ($favourable['act_range'] == FAR_ALL)
    {
        // sql do not change
    }
    elseif ($favourable['act_range'] == FAR_CATEGORY)
    {
        /* 取得优惠范围分类的所有下级分类 */
        $id_list = array();
        $cat_list = explode(',', $favourable['act_range_ext']);
        foreach ($cat_list as $id)
        {
            $id_list = array_merge($id_list, array_keys(cat_list(intval($id), 0, false)));
        }

        $sql .= "AND g.cat_id " . db_create_in($id_list);
    }
    elseif ($favourable['act_range'] == FAR_BRAND)
    {
        $id_list = explode(',', $favourable['act_range_ext']);

        $sql .= "AND g.brand_id " . db_create_in($id_list);
    }
    else
    {
        $id_list = explode(',', $favourable['act_range_ext']);

        $sql .= "AND g.goods_id " . db_create_in($id_list);
    }

    /* 优惠范围内的商品总额 */
    return $GLOBALS['db']->getOne($sql);
}

/**
 * 购物车中是否已经有某优惠
 * @param   array   $favourable     优惠活动
 * @param   array   $cart_favourable购物车中已有的优惠活动及数量
 */
function favourable_used($favourable, $cart_favourable)
{

    if ($favourable['act_type'] == FAT_GOODS)
    {

        return isset($cart_favourable[$favourable['act_id']]) &&
            $cart_favourable[$favourable['act_id']] >= $favourable['act_type_ext'] &&
            $favourable['act_type_ext'] > 0;
    }
    else
    {
        return isset($cart_favourable[$favourable['act_id']]);
    }
}
/**
 * 取得优惠范围描述
 * @param   array   $favourable     优惠活动
 * @return  string
 */
function act_range_desc($favourable)
{
    if ($favourable['act_range'] == FAR_BRAND)
    {
        $sql = "SELECT brand_name FROM " . $GLOBALS['ecs']->table('brand') .
            " WHERE brand_id " . db_create_in($favourable['act_range_ext']);
        return join(',', $GLOBALS['db']->getCol($sql));
    }
    elseif ($favourable['act_range'] == FAR_CATEGORY)
    {
        $sql = "SELECT cat_name FROM " . $GLOBALS['ecs']->table('category') .
            " WHERE cat_id " . db_create_in($favourable['act_range_ext']);
        return join(',', $GLOBALS['db']->getCol($sql));
    }
    elseif ($favourable['act_range'] == FAR_GOODS)
    {
        $sql = "SELECT goods_name FROM " . $GLOBALS['ecs']->table('goods') .
            " WHERE goods_id " . db_create_in($favourable['act_range_ext']);
        return join(',', $GLOBALS['db']->getCol($sql));
    }
    else
    {
        return '';
    }
}
/**
 * 删除购物车中的商品
 *
 * @access  public
 * @param   integer $id
 * @return  void
 */
function flow_drop_cart_goods($id){
	/* 取得商品id */
	$sql = "SELECT * FROM " .$GLOBALS['ecs']->table('cart'). " WHERE rec_id = '$id'";
	$row = $GLOBALS['db']->getRow($sql);
	if ($row){
		//如果是超值礼包
		if ($row['extension_code'] == 'package_buy'){
			$sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') .
					" WHERE session_id = '" . SESS_ID . "' " .
					"AND rec_id = '$id' LIMIT 1";
		}

		//如果是普通商品，同时删除所有赠品及其配件
		elseif ($row['parent_id'] == 0 && $row['is_gift'] == 0){
			/* 检查购物车中该普通商品的不可单独销售的配件并删除 */
			$sql = "SELECT c.rec_id
					FROM " . $GLOBALS['ecs']->table('cart') . " AS c, " . $GLOBALS['ecs']->table('group_goods') . " AS gg, " . $GLOBALS['ecs']->table('goods'). " AS g
					WHERE gg.parent_id = '" . $row['goods_id'] . "'
					AND c.goods_id = gg.goods_id
					AND c.parent_id = '" . $row['goods_id'] . "'
					AND c.extension_code <> 'package_buy'
					AND gg.goods_id = g.goods_id
					AND g.is_alone_sale = 0";
			$res = $GLOBALS['db']->query($sql);
			$_del_str = $id . ',';
			while ($id_alone_sale_goods = $GLOBALS['db']->fetchRow($res))
			{
				$_del_str .= $id_alone_sale_goods['rec_id'] . ',';
			}
			$_del_str = trim($_del_str, ',');

			$sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') .
					" WHERE session_id = '" . SESS_ID . "' " .
					"AND (rec_id IN ($_del_str) OR parent_id = '$row[goods_id]' OR is_gift <> 0)";
		}
		//如果不是普通商品，只删除该商品即可
		else{
			$sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') .
					" WHERE session_id = '" . SESS_ID . "' " .
					"AND rec_id = '$id' LIMIT 1";
		}

		$GLOBALS['db']->query($sql);
	}

	flow_clear_cart_alone();
}

/**
 * 删除购物车中不能单独销售的商品
 *
 * @access  public
 * @return  void
 */
function flow_clear_cart_alone(){
	/* 查询：购物车中所有不可以单独销售的配件 */
	$sql = "SELECT c.rec_id, gg.parent_id
			FROM " . $GLOBALS['ecs']->table('cart') . " AS c
				LEFT JOIN " . $GLOBALS['ecs']->table('group_goods') . " AS gg ON c.goods_id = gg.goods_id
				LEFT JOIN" . $GLOBALS['ecs']->table('goods') . " AS g ON c.goods_id = g.goods_id
			WHERE c.session_id = '" . SESS_ID . "'
			AND c.extension_code <> 'package_buy'
			AND gg.parent_id > 0
			AND g.is_alone_sale = 0";
	$res = $GLOBALS['db']->query($sql);
	$rec_id = array();
	while ($row = $GLOBALS['db']->fetchRow($res)){
		$rec_id[$row['rec_id']][] = $row['parent_id'];
	}

	if (empty($rec_id)){
		return;
	}

	/* 查询：购物车中所有商品 */
	$sql = "SELECT DISTINCT goods_id
			FROM " . $GLOBALS['ecs']->table('cart') . "
			WHERE session_id = '" . SESS_ID . "'
			AND extension_code <> 'package_buy'";
	$res = $GLOBALS['db']->query($sql);
	$cart_good = array();
	while ($row = $GLOBALS['db']->fetchRow($res)){
		$cart_good[] = $row['goods_id'];
	}

	if (empty($cart_good)){
		return;
	}

	/* 如果购物车中不可以单独销售配件的基本件不存在则删除该配件 */
	$del_rec_id = '';
	foreach ($rec_id as $key => $value){
		foreach ($value as $v){
			if (in_array($v, $cart_good)){
				continue 2;
			}
		}
		$del_rec_id = $key . ',';
	}
	$del_rec_id = trim($del_rec_id, ',');
	if ($del_rec_id == ''){
		return;
	}

	/* 删除 */
	$sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') ."
			WHERE session_id = '" . SESS_ID . "'
			AND rec_id IN ($del_rec_id)";
	$GLOBALS['db']->query($sql);
}

/*
 *二次开发--检查是否超过了库存
 *@param $rec_id 购物车id号
 *@param $num 被检查的数字
 *@return $string 提示信息，没有则为空
 */
function check_goods_store($rec_id, $num){
	$return = array('mes' => '', 'number' => 1);
	$num = intval(make_semiangle($num));
	$rec_id = intval($rec_id);
	if ($num <= 0 && !is_numeric($num)){
		$return['mes'] = '所填数字必须是正整数！';
		return $return;
	}
	if ($rec_id <= 0){
		$return['mes'] = '参数错误！';
		return $return;
	}

	//查询：
	$sql = "SELECT `goods_id`, `goods_attr_id`, `product_id`, `extension_code` FROM" .$GLOBALS['ecs']->table('cart'). " WHERE rec_id='$rec_id' AND session_id='" . SESS_ID . "'";
	$goods = $GLOBALS['db']->getRow($sql);

	$sql = "SELECT g.goods_name, g.goods_number ".
			"FROM " .$GLOBALS['ecs']->table('goods'). " AS g, ".
				$GLOBALS['ecs']->table('cart'). " AS c ".
			"WHERE g.goods_id = c.goods_id AND c.rec_id = '$rec_id'";
	$row = $GLOBALS['db']->getRow($sql);

	//查询：系统启用了库存，检查输入的商品数量是否有效
	if (intval($GLOBALS['_CFG']['use_storage']) > 0 && $goods['extension_code'] != 'package_buy'){
		
		if ($row['goods_number'] < $num){
			$return['mes'] = "非常抱歉，您选择的商品" . $row['goods_name'] . " 的库存数量不足 ， 您最多只能购买 " . $row['goods_number'] ." 件。";
			$return['number'] = $row['goods_number'];
			return $return;
		}
		/* 是货品 */
		$goods['product_id'] = trim($goods['product_id']);
		if (!empty($goods['product_id'])){
			$sql = "SELECT product_number FROM " .$GLOBALS['ecs']->table('products'). " WHERE goods_id = '" . $goods['goods_id'] . "' AND product_id = '" . $goods['product_id'] . "'";

			$product_number = $GLOBALS['db']->getOne($sql);
			if ($product_number < $num)
			{
				$return['mes'] = "非常抱歉，您选择的商品" . $row['goods_name'] . " 的库存数量只有 " . $row['product_number'] . "，您最多只能购买 " . $row['product_number'] ." 件。";
				$return['number'] = $row['product_number'];
				return $return;
			}
		}
	}elseif (intval($GLOBALS['_CFG']['use_storage']) > 0 && $goods['extension_code'] == 'package_buy'){
		if (judge_package_stock($goods['goods_id'], $num)){
				$return['mes'] = "非常抱歉，库存数量不足，请减少购买数购买。";
				return $return;
		}
	}
	return $return;
}
/**
 * 添加优惠活动（非赠品）到购物车
 * @param   int     $act_id     优惠活动id
 * @param   string  $act_name   优惠活动name
 * @param   float   $amount     优惠金额
 */
function add_favourable_to_cart($act_id, $act_name, $amount)
{
    $sql = "INSERT INTO " . $GLOBALS['ecs']->table('cart') . "(" .
        "user_id, session_id, goods_id, goods_sn, goods_name, market_price, goods_price, ".
        "goods_number, is_real, extension_code, parent_id, is_gift, rec_type ) ".
        "VALUES('$_SESSION[user_id]', '" . SESS_ID . "', 0, '', '$act_name', 0, ".
        "'" . (-1) * $amount . "', 1, 0, '', 0, '$act_id', '" . CART_GENERAL_GOODS . "')";
    $GLOBALS['db']->query($sql);
}


function add_gift_to_cart($act_id, $id, $price)
{
    $sql = "INSERT INTO " . $GLOBALS['ecs']->table('cart') . " (" .
        "user_id, session_id, goods_id, goods_sn, goods_name, market_price, goods_price, ".
        "goods_number, is_real, extension_code, parent_id, is_gift, rec_type ) ".
        "SELECT '$_SESSION[user_id]', '" . SESS_ID . "', goods_id, goods_sn, goods_name, market_price, ".
        "'$price', 1, is_real, extension_code, 0, '$act_id', '" . CART_GENERAL_GOODS . "' " .
        "FROM " . $GLOBALS['ecs']->table('goods') .
        " WHERE goods_id = '$id'";
    $GLOBALS['db']->query($sql);
}
?>