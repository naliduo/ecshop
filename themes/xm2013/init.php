<?php

function get_collect_count($goods_id)
{
	   
	$sql = "select count(rec_id) as collect_count from ".$GLOBALS['ecs']->table( "collect_goods" )." where goods_id = ".$goods_id;
		   
    $row = $GLOBALS['db']->GetRow($sql);

    if ($row)
    {
        $number = $row['collect_count'];
    }
    else
    {
        $number = 0;
    }

    return $number;
}

/**
 * 获得推荐商品
 *
 * @access  public
 * @param   string      $type       推荐类型，可以是 best, new, hot
 * @return  array
 */
function get_recommend_goods2($type = '', $cats = '', $goodsnum = '')
{
    if (!in_array($type, array('best', 'new', 'hot')))
    {
        return array();
    }

    //取不同推荐对应的商品
    static $type_goods = array();
    if (empty($type_goods[$type]))
    {
        //初始化数据
        $type_goods['best'] = array();
        $type_goods['new'] = array();
        $type_goods['hot'] = array();
        $data = read_static_cache('recommend_goods');
        if ($data === false)
        {
            $sql = 'SELECT g.goods_id, g.is_best, g.is_new, g.is_hot, g.is_promote, b.brand_name,g.sort_order ' .
               ' FROM ' . $GLOBALS['ecs']->table('goods') . ' AS g ' .
               ' LEFT JOIN ' . $GLOBALS['ecs']->table('brand') . ' AS b ON b.brand_id = g.brand_id ' .
               ' WHERE g.is_on_sale = 1 AND g.is_alone_sale = 1 AND g.is_delete = 0 AND (g.is_best = 1 OR g.is_new =1 OR g.is_hot = 1)'.
               ' ORDER BY g.sort_order, g.last_update DESC';
            $goods_res = $GLOBALS['db']->getAll($sql);
            //定义推荐,最新，热门，促销商品
            $goods_data['best'] = array();
            $goods_data['new'] = array();
            $goods_data['hot'] = array();
            $goods_data['brand'] = array();
            if (!empty($goods_res))
            {
                foreach($goods_res as $data)
                {
                    if ($data['is_best'] == 1)
                    {
                        $goods_data['best'][] = array('goods_id' => $data['goods_id'], 'sort_order' => $data['sort_order']);
                    }
                    if ($data['is_new'] == 1)
                    {
                        $goods_data['new'][] = array('goods_id' => $data['goods_id'], 'sort_order' => $data['sort_order']);
                    }
                    if ($data['is_hot'] == 1)
                    {
                        $goods_data['hot'][] = array('goods_id' => $data['goods_id'], 'sort_order' => $data['sort_order']);
                    }
                    if ($data['brand_name'] != '')
                    {
                        $goods_data['brand'][$data['goods_id']] = $data['brand_name'];
                    }
                }
            }
            write_static_cache('recommend_goods', $goods_data);
        }
        else
        {
            $goods_data = $data;
        }

        $time = gmtime();
        $order_type = $GLOBALS['_CFG']['recommend_order'];

        //按推荐数量及排序取每一项推荐显示的商品 order_type可以根据后台设定进行各种条件显示
        static $type_array = array();
        $type2lib = array('best'=>'recommend_best', 'new'=>'recommend_new', 'hot'=>'recommend_hot');
        if (empty($type_array))
        {
            foreach($type2lib as $key => $data)
            {
                if (!empty($goods_data[$key]))
                {
					if($goodsnum!='')
					{
					   $num = $goodsnum;
					}
					else
					{
                       $num = get_library_number($data);
					}
					
                    $data_count = count($goods_data[$key]);
                    $num = $data_count > $num  ? $num : $data_count;
                    if ($order_type == 0)
                    {
                        //usort($goods_data[$key], 'goods_sort');
                        $rand_key = array_slice($goods_data[$key], 0, $num);
                        foreach($rand_key as $key_data)
                        {
                            $type_array[$key][] = $key_data['goods_id'];
                        }
                    }
                    else
                    {
                        $rand_key = array_rand($goods_data[$key], $num);
                        if ($num == 1)
                        {
                            $type_array[$key][] = $goods_data[$key][$rand_key]['goods_id'];
                        }
                        else
                        {
                            foreach($rand_key as $key_data)
                            {
                                $type_array[$key][] = $goods_data[$key][$key_data]['goods_id'];
                            }
                        }
                    }
                }
                else
                {
                    $type_array[$key] = array();
                }
            }
        }

        //取出所有符合条件的商品数据，并将结果存入对应的推荐类型数组中
        $sql = 'SELECT g.goods_id, g.goods_name, g.goods_name_style, g.market_price, g.shop_price AS org_price, g.promote_price, g.click_count, ' .
                "IFNULL(mp.user_price, g.shop_price * '$_SESSION[discount]') AS shop_price, b.brand_name, b.brand_id, ".
                "promote_start_date, promote_end_date, g.goods_brief, g.goods_thumb, g.goods_img, RAND() AS rnd " .
				",(select count(c.rec_id) from ".$GLOBALS['ecs']->table( "collect_goods" )." as c where c.goods_id = g.goods_id) AS collect_count ".
                'FROM ' . $GLOBALS['ecs']->table('goods') . ' AS g ' .
				'LEFT JOIN '.$GLOBALS['ecs']->table( "brand" ).' AS b ON b.brand_id = g.brand_id '.
                "LEFT JOIN " . $GLOBALS['ecs']->table('member_price') . " AS mp ".
                "ON mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]' ";
        $type_merge = array_merge($type_array['new'], $type_array['best'], $type_array['hot']);
        $type_merge = array_unique($type_merge);
        $sql .= ' WHERE g.goods_id ' . db_create_in($type_merge);
        $sql .= ' ORDER BY collect_count desc, g.sort_order, g.last_update DESC';

        $result = $GLOBALS['db']->getAll($sql);
        foreach ($result AS $idx => $row)
        {
            if ($row['promote_price'] > 0)
            {
                $promote_price = bargain_price($row['promote_price'], $row['promote_start_date'], $row['promote_end_date']);
                $goods[$idx]['promote_price'] = $promote_price > 0 ? price_format($promote_price) : '';
            }
            else
            {
                $goods[$idx]['promote_price'] = '';
            }

            $goods[$idx]['id']           = $row['goods_id'];
            $goods[$idx]['name']         = $row['goods_name'];
            $goods[$idx]['brief']        = $row['goods_brief'];
            $goods[$idx]['brand_name']   = isset($goods_data['brand'][$row['goods_id']]) ? $goods_data['brand'][$row['goods_id']] : '';
            $goods[$idx]['goods_style_name']   = add_style($row['goods_name'],$row['goods_name_style']);

            $goods[$idx]['short_name']   = $GLOBALS['_CFG']['goods_name_length'] > 0 ?
                                               sub_str($row['goods_name'], $GLOBALS['_CFG']['goods_name_length']) : $row['goods_name'];
            $goods[$idx]['short_style_name']   = add_style($goods[$idx]['short_name'],$row['goods_name_style']);
            $goods[$idx]['market_price'] = price_format($row['market_price']);
            $goods[$idx]['shop_price']   = price_format($row['shop_price']);
            $goods[$idx]['thumb']        = get_image_path($row['goods_id'], $row['goods_thumb'], true);
            $goods[$idx]['goods_img']    = get_image_path($row['goods_id'], $row['goods_img']);
            $goods[$idx]['url']          = build_uri('goods', array('gid' => $row['goods_id']), $row['goods_name']);
			
			$goods[$idx]['collect_count'] = $row['collect_count'];
			$goods[$idx]['goods_brand_url'] = build_uri('brand', array('bid'=>$row['brand_id']), $row['brand_name']);
			
            if (in_array($row['goods_id'], $type_array['best']))
            {
                $type_goods['best'][] = $goods[$idx];
            }
            if (in_array($row['goods_id'], $type_array['new']))
            {
                $type_goods['new'][] = $goods[$idx];
            }
            if (in_array($row['goods_id'], $type_array['hot']))
            {
                $type_goods['hot'][] = $goods[$idx];
            }
			
			
					
        }
    }
    return $type_goods[$type];
}


/**
 * 获得商品的详细信息
 *
 * @access  public
 * @param   integer     $goods_id
 * @return  void
 */
function get_goods_info2($goods_id)
{
    $time = gmtime();
    $sql = 'SELECT g.*, c.measure_unit, b.brand_id, b.brand_name AS goods_brand, m.type_money AS bonus_money, b.brand_logo, b.brand_desc, ' .
                'IFNULL(AVG(r.comment_rank), 0) AS comment_rank, ' .
                "IFNULL(mp.user_price, g.shop_price * '$_SESSION[discount]') AS rank_price " .
			",(select count(c.rec_id) from ".$GLOBALS['ecs']->table( "collect_goods" )." as c where c.goods_id = g.goods_id) AS collect_count ".
            'FROM ' . $GLOBALS['ecs']->table('goods') . ' AS g ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('category') . ' AS c ON g.cat_id = c.cat_id ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('brand') . ' AS b ON g.brand_id = b.brand_id ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('comment') . ' AS r '.
                'ON r.id_value = g.goods_id AND comment_type = 0 AND r.parent_id = 0 AND r.status = 1 ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('bonus_type') . ' AS m ' .
                "ON g.bonus_type_id = m.type_id AND m.send_start_date <= '$time' AND m.send_end_date >= '$time'" .
            " LEFT JOIN " . $GLOBALS['ecs']->table('member_price') . " AS mp ".
                    "ON mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]' ".
            "WHERE g.goods_id = '$goods_id' AND g.is_delete = 0 " .
            "GROUP BY g.goods_id";
    $row = $GLOBALS['db']->getRow($sql);

    if ($row !== false)
    {
        /* 用户评论级别取整 */
        $row['comment_rank']  = ceil($row['comment_rank']) == 0 ? 5 : ceil($row['comment_rank']);

        /* 获得商品的销售价格 */
        $row['market_price']        = price_format($row['market_price']);
        $row['shop_price_formated'] = price_format($row['shop_price']);

        /* 修正促销价格 */
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
            $watermark_img = "watermark_promote";
        }
        elseif ($row['is_new'] != 0)
        {
            $watermark_img = "watermark_new";
        }
        elseif ($row['is_best'] != 0)
        {
            $watermark_img = "watermark_best";
        }
        elseif ($row['is_hot'] != 0)
        {
            $watermark_img = 'watermark_hot';
        }

        if ($watermark_img != '')
        {
            $row['watermark_img'] =  $watermark_img;
        }

        $row['promote_price_org'] =  $promote_price;
        $row['promote_price'] =  price_format($promote_price);

        /* 修正重量显示 */
        $row['goods_weight']  = (intval($row['goods_weight']) > 0) ?
            $row['goods_weight'] . $GLOBALS['_LANG']['kilogram'] :
            ($row['goods_weight'] * 1000) . $GLOBALS['_LANG']['gram'];

        /* 修正上架时间显示 */
        $row['add_time']      = local_date($GLOBALS['_CFG']['date_format'], $row['add_time']);

        /* 促销时间倒计时 */
        $time = gmtime();
        if ($time >= $row['promote_start_date'] && $time <= $row['promote_end_date'])
        {
             $row['gmt_end_time']  = $row['promote_end_date'];
        }
        else
        {
            $row['gmt_end_time'] = 0;
        }

        /* 是否显示商品库存数量 */
        $row['goods_number']  = ($GLOBALS['_CFG']['use_storage'] == 1) ? $row['goods_number'] : '';

        /* 修正积分：转换为可使用多少积分（原来是可以使用多少钱的积分） */
        $row['integral']      = $GLOBALS['_CFG']['integral_scale'] ? round($row['integral'] * 100 / $GLOBALS['_CFG']['integral_scale']) : 0;

        /* 修正优惠券 */
        $row['bonus_money']   = ($row['bonus_money'] == 0) ? 0 : price_format($row['bonus_money'], false);

        /* 修正商品图片 */
        $row['goods_img']   = get_image_path($goods_id, $row['goods_img']);
        $row['goods_thumb'] = get_image_path($goods_id, $row['goods_thumb'], true);
		
		$row['goods_brand_url'] = build_uri('brand', array('bid'=>$row['brand_id']), $row['brand_name']);

        return $row;
    }
    else
    {
        return false;
    }
}

/**
* 获得首页主广告
*/
function get_flash_xml()
{
    $flashdb = array();
    if (file_exists(ROOT_PATH . DATA_DIR . '/flash_data.xml'))
    {

        // 兼容v2.7.0及以前版本
        if (!preg_match_all('/item_url="([^"]+)"\slink="([^"]+)"\stext="([^"]*)"\ssort="([^"]*)"/', file_get_contents(ROOT_PATH . DATA_DIR . '/flash_data.xml'), $t, PREG_SET_ORDER))
        {
            preg_match_all('/item_url="([^"]+)"\slink="([^"]+)"\stext="([^"]*)"/', file_get_contents(ROOT_PATH . DATA_DIR . '/flash_data.xml'), $t, PREG_SET_ORDER);
        }

        if (!empty($t))
        {
            foreach ($t as $key => $val)
            {
                $val[4] = isset($val[4]) ? $val[4] : 0;
                $flashdb[] = array('src'=>$val[1],'url'=>$val[2],'text'=>$val[3],'sort'=>$val[4]);
            }
        }
    }
    return $flashdb;
}

function get_catid_byurl($nav_url)
{
  $needle = "category";

  $tmparray = explode($needle,$nav_url);   

  if(count($tmparray)>1){   

      return true;   

   } else{   

     return false;   

  }

}

function get_adv($ad_name)
{
		$arr = array( );
		$sql = "select ap.ad_width,ap.ad_height,ap.position_desc,ad.ad_id,ad.ad_name,ad.ad_code,ad.ad_link,ad.ad_id from ".$GLOBALS['ecs']->table( "ad_position" )." as ap left join ".$GLOBALS['ecs']->table( "ad" )." as ad on ad.position_id = ap.position_id where ad.ad_name ='".$ad_name.("' and ad.enabled=1");
		
		$row = $GLOBALS['db']->GetRow($sql);
		
		if($row)
		{
		$row['name'] = $row['ad_name'];
		$row['url'] = "affiche.php?ad_id=".$row['ad_id']."&uri=".$row['ad_link'];
		$row['image'] = "data/afficheimg/".$row['ad_code'];
		$row['content'] = "<a href='".$row['url']."' target='_blank'><img src='data/afficheimg/".$row['ad_code']."' width='".$row['ad_width']."' height='".$row['ad_height']."' /></a>";
		$row['width'] = $row['ad_width'];
		$row['height'] = $row['ad_height'];
		$row['desc'] = $row['position_desc'];
		}
		
		return $row;

}

?>