<?php

/**
 * ECSHOP 发货商品统计
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: sale_order.php 17217 2011-01-19 06:29:08Z liubo $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . 'includes/lib_order.php');

// 

if (isset($_REQUEST['start_date']) && isset($_REQUEST['end_date']))
{
	
	$start_date= local_strtotime($_REQUEST['start_date']);
	$end_date = local_strtotime($_REQUEST['end_date']);
	
	

	//$sql = "select order_sn from ". $ecs->table(order_info) . " WHERE  order_status='5' and add_time >= '". $start_date ."' and add_time<= '". $end_date ."' ORDER BY add_time DESC ";
		$sql = "select  oi.order_sn from ". $ecs->table(order_info) . " As oi " . " where oi.add_time >='". $start_date ."' and oi.add_time<= '". $end_date . "' ".order_query_sql('finished', 'oi.'). " ORDER BY add_time DESC ";
	
       $all_order = $db->getCol($sql);
       
       
    
        @ set_time_limit(0);
        
        $strOrder = "";
        if(!empty($all_order)){
        	foreach ($all_order as $string) {
        		$strOrder .= $string . " ";
       		 }
        }
        else{
        	show_message("该时间段无订单，请选择正确时间！");
        }
        $strOrder = trim($strOrder);
        
    
    	$html = '';
    	$order_sn_list = explode(' ', $strOrder);
    
    	require_once dirname(__FILE__) . '/Classes/PHPExcel.php';
    	require_once dirname(__FILE__) . '/Classes/PHPExcel/IOFactory.php';
    	$PHPExcel = new PHPExcel();
    
    	//设置excel属性基本信息
    	$PHPExcel->getProperties()->setCreator("Neo")
    	->setLastModifiedBy("Neo")
    	->setTitle("东莞XX系统有限公司")
    	->setSubject("订单列表")
    	->setDescription("")
    	->setKeywords("订单列表")
    	->setCategory("");
    	$PHPExcel->setActiveSheetIndex(0);
    	$PHPExcel->getActiveSheet()->setTitle("订单列表");
    	//填入表头主标题
    	$PHPExcel->getActiveSheet()->setCellValue('A1', $_CFG['shop_name'].'订单列表');
    	//填入表头副标题
    	$PHPExcel->getActiveSheet()->setCellValue('A2', '操作者：'.$_SESSION['admin_name'].' 导出日期：'.date('Y-m-d',time()).' 地址：'.$_CFG['shop_address'].' 电话：'.$_CFG['service_phone']);
    	//合并表头单元格
    	$PHPExcel->getActiveSheet()->mergeCells('A1:T1');
    	$PHPExcel->getActiveSheet()->mergeCells('A2:T2');
    
    	//设置表头行高
    	$PHPExcel->getActiveSheet()->getRowDimension(1)->setRowHeight(40);
    	$PHPExcel->getActiveSheet()->getRowDimension(2)->setRowHeight(20);
    	$PHPExcel->getActiveSheet()->getRowDimension(3)->setRowHeight(30);
    
    	//设置表头字体
    	$PHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setName('黑体');
    	$PHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
    	$PHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
    	$PHPExcel->getActiveSheet()->getStyle('A2')->getFont()->setName('宋体');
    	$PHPExcel->getActiveSheet()->getStyle('A2')->getFont()->setSize(14);
    	$PHPExcel->getActiveSheet()->getStyle('A3:T3')->getFont()->setBold(true);
    
    	//设置单元格边框
    	$styleArray = array(
    			'borders' => array(
    					'allborders' => array(
    							//'style' => PHPExcel_Style_Border::BORDER_THICK,//边框是粗的
    							'style' => PHPExcel_Style_Border::BORDER_THIN,//细边框
    							//'color' => array('argb' => 'FFFF0000'),
    					),
    			),
    	);
    
    	//表格宽度
    	$PHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(18);//订单编号
    	$PHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(20);//下单时间
    	$PHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(20);//付款时间
    	$PHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(20);//发货时间
    	$PHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(18);//发货单号
    	$PHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(20);//支付方式
    	$PHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(10);//配送方式
    	$PHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(10);//配送费用
    	$PHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(10);//收件人
    	$PHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(35);//收货地址
    	$PHPExcel->getActiveSheet()->getColumnDimension('K')->setWidth(15);//电话
    	$PHPExcel->getActiveSheet()->getColumnDimension('L')->setWidth(15);//手机
    	$PHPExcel->getActiveSheet()->getColumnDimension('M')->setWidth(25);//邮箱
    	$PHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(15);//货号
    	$PHPExcel->getActiveSheet()->getColumnDimension('O')->setWidth(15);//商品名称
    	$PHPExcel->getActiveSheet()->getColumnDimension('P')->setWidth(15);//属性
    	$PHPExcel->getActiveSheet()->getColumnDimension('Q')->setWidth(10);//价格
    	$PHPExcel->getActiveSheet()->getColumnDimension('R')->setWidth(6);//数量
    	$PHPExcel->getActiveSheet()->getColumnDimension('S')->setWidth(15);//小计
    	$PHPExcel->getActiveSheet()->getColumnDimension('T')->setWidth(15);//应付款金额
    
    	//表格标题
    	$PHPExcel->getActiveSheet()->setCellValue('A3', '订单编号');
    	$PHPExcel->getActiveSheet()->setCellValue('B3', '下单时间');
    	$PHPExcel->getActiveSheet()->setCellValue('C3', '付款时间');
    	$PHPExcel->getActiveSheet()->setCellValue('D3', '发货时间');
    	$PHPExcel->getActiveSheet()->setCellValue('E3', '发货单号');
    	$PHPExcel->getActiveSheet()->setCellValue('F3', '支付方式');
    	$PHPExcel->getActiveSheet()->setCellValue('G3', '配送方式');
    	$PHPExcel->getActiveSheet()->setCellValue('H3', '配送费用');
    	$PHPExcel->getActiveSheet()->setCellValue('I3', '收件人');
    	$PHPExcel->getActiveSheet()->setCellValue('J3', '收货地址');
    	$PHPExcel->getActiveSheet()->setCellValue('K3', '电话');
    	$PHPExcel->getActiveSheet()->setCellValue('L3', '手机');
    	$PHPExcel->getActiveSheet()->setCellValue('M3', '邮箱');
    	$PHPExcel->getActiveSheet()->setCellValue('N3', '货号');
    	$PHPExcel->getActiveSheet()->setCellValue('O3', '商品名称');
    	$PHPExcel->getActiveSheet()->setCellValue('P3', '属性');
    	$PHPExcel->getActiveSheet()->setCellValue('Q3', '价格');
    	$PHPExcel->getActiveSheet()->setCellValue('R3', '数量');
    	$PHPExcel->getActiveSheet()->setCellValue('S3', '小计');
    	$PHPExcel->getActiveSheet()->setCellValue('T3', '商品总金额');
    
    	$hang = 4;
    	foreach ($order_sn_list as $order_sn) {
    		/* 取得订单信息 */
    		$order = order_info(0, $order_sn);
    		if (empty($order)) {
    			continue;
    		}
    
    		/* 根据订单是否完成检查权限 */
    		if (order_finished($order)) {
    			if (!admin_priv('order_view_finished', '', false)) {
    				continue;
    			}
    		} else {
    			if (!admin_priv('order_view', '', false)) {
    				continue;
    			}
    		}
    
    		/* 如果管理员属于某个办事处，检查该订单是否也属于这个办事处 */
    		$sql       = "SELECT agency_id FROM " . $ecs->table('admin_user') . " WHERE user_id = '$_SESSION[admin_id]'";
    		$agency_id = $db->getOne($sql);
    		if ($agency_id > 0) {
    			if ($order['agency_id'] != $agency_id) {
    				continue;
    			}
    		}
    
    		/* 取得用户名 */
    		if ($order['user_id'] > 0) {
    			$user = user_info($order['user_id']);
    			if (!empty($user)) {
    				$order['user_name'] = $user['user_name'];
    
    			}
    		}
    
    		/* 取得区域名 */
    		$sql             = "SELECT concat(IFNULL(c.region_name, ''), '  ', IFNULL(p.region_name, ''), " . "'  ', IFNULL(t.region_name, ''), '  ', IFNULL(d.region_name, '')) AS region " . "FROM " . $ecs->table('order_info') . " AS o " . "LEFT JOIN " . $ecs->table('region') . " AS c ON o.country = c.region_id " . "LEFT JOIN " . $ecs->table('region') . " AS p ON o.province = p.region_id " . "LEFT JOIN " . $ecs->table('region') . " AS t ON o.city = t.region_id " . "LEFT JOIN " . $ecs->table('region') . " AS d ON o.district = d.region_id " . "WHERE o.order_id = '$order[order_id]'";
    		$order['region'] = $db->getOne($sql);
    			
    		/* 其他处理 */
    		$order['order_time']    = local_date($_CFG['time_format'], $order['add_time']);
    		$order['pay_time']      = $order['pay_time'] > 0 ? local_date($_CFG['time_format'], $order['pay_time']) : $_LANG['ps'][PS_UNPAYED];
    		$order['shipping_time'] = $order['shipping_time'] > 0 ? local_date($_CFG['time_format'], $order['shipping_time']) : $_LANG['ss'][SS_UNSHIPPED];
    		$order['status']        = $_LANG['os'][$order['order_status']] . ',' . $_LANG['ps'][$order['pay_status']] . ',' . $_LANG['ss'][$order['shipping_status']];
    		$order['invoice_no']    = $order['shipping_status'] == SS_UNSHIPPED || $order['shipping_status'] == SS_PREPARING ? $_LANG['ss'][SS_UNSHIPPED] : $order['invoice_no'];
    
    		/* 此订单的发货备注(此订单的最后一条操作记录) */
    		$sql                   = "SELECT action_note FROM " . $ecs->table('order_action') . " WHERE order_id = '$order[order_id]' AND shipping_status = 1 ORDER BY log_time DESC";
    		$order['invoice_note'] = $db->getOne($sql);
    
    		$shuliang = 0;
    
    		/* 取得订单商品 */
    		$sql        = "SELECT o.*, g.goods_number AS storage, o.goods_attr, IFNULL(b.brand_name, '') AS brand_name " . "FROM " . $ecs->table('order_goods') . " AS o " . "LEFT JOIN " . $ecs->table('goods') . " AS g ON o.goods_id = g.goods_id " . "LEFT JOIN " . $ecs->table('brand') . " AS b ON g.brand_id = b.brand_id " . "WHERE o.order_id = '$order[order_id]' ";
    		$res        = $db->query($sql);
    		$shuliang   = 0;
    		$chanpin    = $hang;
    		while ($row = $db->fetchRow($res)) {
    			$shuliang = $shuliang + 1;
    			/* 虚拟商品支持 */
    			if ($row['is_real'] == 0) {
    				/* 取得语言项 */
    				$filename = ROOT_PATH . 'plugins/' . $row['extension_code'] . '/languages/common_' . $_CFG['lang'] . '.php';
    				if (file_exists($filename)) {
    					include_once($filename);
    					if (!empty($_LANG[$row['extension_code'] . '_link'])) {
    						$row['goods_name'] = $row['goods_name'] . sprintf($_LANG[$row['extension_code'] . '_link'], $row['goods_id'], $order['order_sn']);
    					}
    				}
    			}
    
    			$row['formated_subtotal']    = price_format($row['goods_price'] * $row['goods_number']);
    			$row['formated_goods_price'] = price_format($row['goods_price']);
    
    			//var_dump($order);die;
    			//输出订单的商品，由于可能一个人购买多个商品，所以在这先输出了
    			$PHPExcel->getActiveSheet()->setCellValue('N' . $chanpin, $row['goods_sn']);
    			$PHPExcel->getActiveSheet()->setCellValue('O' . $chanpin, $row['goods_name']);
    			$PHPExcel->getActiveSheet()->setCellValue('P' . $chanpin, $row['goods_attr']);
    			$PHPExcel->getActiveSheet()->setCellValue('Q' . $chanpin, $row['goods_price']);
    			$PHPExcel->getActiveSheet()->setCellValue('R' . $chanpin, $row['goods_number']);
    			$PHPExcel->getActiveSheet()->setCellValue('S' . $chanpin, $row['formated_subtotal']);
    
    			$chanpin      = $chanpin + 1;
    		}
    
    		for ($kk = $hang; $kk < ($hang + $shuliang); $kk++) {
    			//合并单元格
    			$PHPExcel->getActiveSheet()->mergeCells('A' . $hang . ':A' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('B' . $hang . ':B' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('C' . $hang . ':C' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('D' . $hang . ':D' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('E' . $hang . ':E' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('F' . $hang . ':F' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('G' . $hang . ':G' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('H' . $hang . ':H' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('I' . $hang . ':I' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('J' . $hang . ':J' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('K' . $hang . ':K' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('L' . $hang . ':L' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('M' . $hang . ':M' . $kk);
    			$PHPExcel->getActiveSheet()->mergeCells('T' . $hang . ':T' . $kk);
    		}
    		$PHPExcel->getActiveSheet()->setCellValue('A' . ($hang), $order['order_sn']." ");//加个空格，防止时间戳被转换
    		$PHPExcel->getActiveSheet()->setCellValue('B' . ($hang), $order['order_time']);
    		$PHPExcel->getActiveSheet()->setCellValue('C' . ($hang), $order['pay_time']);
    		$PHPExcel->getActiveSheet()->setCellValue('D' . ($hang), $order['shipping_time']);
    		$PHPExcel->getActiveSheet()->setCellValue('E' . ($hang), $order['invoice_no']." ");
    		$PHPExcel->getActiveSheet()->setCellValue('F' . ($hang), $order['pay_name']);
    		$PHPExcel->getActiveSheet()->setCellValue('G' . ($hang), $order['shipping_name']);
    		$PHPExcel->getActiveSheet()->setCellValue('H' . ($hang), $order['shipping_fee'].'元');
    		$PHPExcel->getActiveSheet()->setCellValue('I' . ($hang), $order['consignee']);
    		$PHPExcel->getActiveSheet()->setCellValue('J' . ($hang), str_replace(" ","",$order['region']).$order['address']);
    		$PHPExcel->getActiveSheet()->setCellValue('K' . ($hang), $order['tel']);
    		$PHPExcel->getActiveSheet()->setCellValue('L' . ($hang), $order['mobile']);
    		$PHPExcel->getActiveSheet()->setCellValue('M' . ($hang), $order['email']);
    		$PHPExcel->getActiveSheet()->setCellValue('T' . ($hang), $order['formated_goods_amount']);
    			
    		$hang = $hang + $shuliang;
    	}
    	//设置单元格边框
    	$PHPExcel->getActiveSheet()->getStyle('A1:T'.$hang)->applyFromArray($styleArray);
    	//设置自动换行
    	$PHPExcel->getActiveSheet()->getStyle('A4:T'.$hang)->getAlignment()->setWrapText(true);
    	//设置字体大小
    	$PHPExcel->getActiveSheet()->getStyle('A4:T'.$hang)->getFont()->setSize(12);
    	//垂直居中
    	$PHPExcel->getActiveSheet()->getStyle('A1:T'.$hang)->getAlignment()->setVertical(PHPExcel_Style_Alignment::VERTICAL_CENTER);
    	//水平居中
    	$PHPExcel->getActiveSheet()->getStyle('A1:T'.$hang)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
    
    	$Writer = PHPExcel_IOFactory::createWriter($PHPExcel, 'Excel5');
    	$Writer->save(str_replace('.php', '.xls', __FILE__));
    	$url = "order_export.xls";
    	ecs_header("Location: $url\n");
    	exit;

       
   
}
else
{


    /* 时间参数 */
    if (!isset($_REQUEST['start_date']))
    {
        $_REQUEST['start_date'] = local_date('Y-m-d',local_strtotime('-1 months'));
    }
    if (!isset($_REQUEST['end_date']))
    {
        $_REQUEST['end_date'] = local_date('Y-m-d',local_strtotime('+1 day'));
    }

    /* $goods_order_data = get_sell_order(); */

    /* 赋值到模板 */
    $smarty->assign('ur_here',          '订单导出');
    $smarty->assign('goods_order_data', $goods_order_data['sales_order_data']);
    $smarty->assign('filter',           $goods_order_data['filter']);
    $smarty->assign('record_count',     $goods_order_data['record_count']);
    $smarty->assign('page_count',       $goods_order_data['page_count']);
    $smarty->assign('filter',           $goods_order_data['filter']);
    $smarty->assign('full_page',        1);
    $smarty->assign('sort_goods_num',   '<img src="images/sort_desc.gif">');
   
    $smarty->assign('start_date',         $_REQUEST['start_date']);
    $smarty->assign('end_date',           $_REQUEST['end_date']);
    $smarty->assign('action_link',      array('text' => $_LANG['send_sell'], 'href' => '#download' )); 

    /* 显示页面 */
   
    $smarty->display('order_export.htm');
}

/*------------------------------------------------------ */
//--排行统计需要的函数
/*------------------------------------------------------ */
/**
 * 取得销售排行数据信息
 * @param   bool  $is_pagination  是否分页
 * @return  array   销售排行数据
 */
function get_sell_order($is_pagination = true)
{
    $filter['start_date'] = empty($_REQUEST['start_date']) ? '' :  $_REQUEST['start_date'];
    $filter['end_date'] = empty($_REQUEST['end_date']) ? '' :  $_REQUEST['end_date'];
    $filter['sort_by'] = empty($_REQUEST['sort_by']) ? 'goods_num' : trim($_REQUEST['sort_by']);
    $filter['sort_order'] = empty($_REQUEST['sort_order']) ? 'DESC' : trim($_REQUEST['sort_order']);

    $where = " WHERE oi.order_id = og.order_id  ";
    //var_dump($filter);

    if ($filter['start_date'])
    {
        $fromd = explode("-",$filter['start_date']);
        if($fromd[1]<10){
            $fromd[1] = '0'.$fromd[1];
        }
        if($fromd[2]<10){
            $fromd[2] = '0'.$fromd[2];
        }
        $where .= " AND substring_index(oi.best_time,' ',1) >= '" . $fromd[0].'-'.$fromd[1].'-'.$fromd[2]. "'";
    }
    if ($filter['end_date'])
    {
        $tod = explode("-",$filter['end_date']);
        if($tod[1]<10){
            $tod[1] = '0'.$tod[1];
        }
        if($tod[2]<10){
            $tod[2] = '0'.$tod[2];
        }
        $where .= " AND substring_index(oi.best_time,' ',1)  <= '" . $tod[0].'-'.$tod[1].'-'.$tod[2]. "'";
    }

    $sql = "SELECT COUNT(distinct(og.goods_id)) FROM " .
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('order_goods') . ' AS og '.
           $where;

    $filter['record_count'] = $GLOBALS['db']->getOne($sql);

    /* 分页大小 */
    $filter = page_and_size($filter);

    $sql = "SELECT og.goods_id, og.goods_sn, og.goods_name, oi.order_status, " .
           "SUM(og.goods_number) AS goods_num, SUM(og.goods_number * og.goods_price) AS turnover ".
           "FROM ".$GLOBALS['ecs']->table('order_goods')." AS og, " .
           $GLOBALS['ecs']->table('order_info')." AS oi  " .$where .
           " GROUP BY og.goods_id ".
           ' ORDER BY ' . $filter['sort_by'] . ' ' . $filter['sort_order'] ;

    if ($is_pagination)
    {
        $sql .= " LIMIT " . $filter['start'] . ', ' . $filter['page_size'];
    }

    $sales_order_data = $GLOBALS['db']->getAll($sql);

    foreach ($sales_order_data as $key => $item)
    {
        $sales_order_data[$key]['wvera_price'] = price_format($item['goods_num'] ? $item['turnover'] / $item['goods_num'] : 0);
        $sales_order_data[$key]['short_name']  = sub_str($item['goods_name'], 30, true);
        $sales_order_data[$key]['turnover']    = price_format($item['turnover']);
        $sales_order_data[$key]['taxis']       = $key + 1;
    }

    $arr = array('sales_order_data' => $sales_order_data, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);

    return $arr;
}

?>