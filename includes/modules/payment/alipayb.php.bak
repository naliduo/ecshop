<?php

/**
 * ECSHOP 支付宝插件
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: douqinghua $
 * $Id: alipay.php 17217 2011-01-19 06:29:08Z douqinghua $
 */

if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}

$payment_lang = ROOT_PATH . 'languages/' .$GLOBALS['_CFG']['lang']. '/payment/alipay.php';

if (file_exists($payment_lang))
{
    global $_LANG;

    include_once($payment_lang);
}

/* 模块的基本信息 */
if (isset($set_modules) && $set_modules == TRUE)
{
    $i = isset($modules) ? count($modules) : 0;

    /* 代码 */
    $modules[$i]['code']    = basename(__FILE__, '.php');

    /* 描述对应的语言项 */
    $modules[$i]['desc']    = 'alipay_desc';

    /* 是否支持货到付款 */
    $modules[$i]['is_cod']  = '0';

    /* 是否支持在线支付 */
    $modules[$i]['is_online']  = '1';

    /* 作者 */
    $modules[$i]['author']  = 'ECSHOP TEAM';

    /* 网址 */
    $modules[$i]['website'] = 'http://www.alipay.com';

    /* 版本号 */
    $modules[$i]['version'] = '1.0.2';

    /* 配置信息 */
    $modules[$i]['config']  = array(
        array('name' => 'alipay_account',           'type' => 'text',   'value' => ''),
        array('name' => 'alipay_key',               'type' => 'text',   'value' => ''),
        array('name' => 'alipay_partner',           'type' => 'text',   'value' => ''),
        array('name' => 'alipay_pay_method',        'type' => 'select', 'value' => '')
    );

    return;
}

/**
 * 类
 */
$ua = strtolower($_SERVER['HTTP_USER_AGENT']);
$uachar = "/(nokia|sony|ericsson|mot|samsung|sgh|lg|philips|panasonic|alcatel|lenovo|cldc|midp|mobile)/i";
if(($ua == '' || preg_match($uachar, $ua)) && !strpos(strtolower($_SERVER['REQUEST_URI']),'wap'))
{
	class alipay
	{
	
		/**
		 * 构造函数
		 *
		 * @access  public
		 * @param
		 *
		 * @return void
		 */
		function alipay()
		{
		}
	
		function __construct()
		{
			$this->alipay();
		}
	
		/**
		 * 生成支付代码
		 * @param   array   $order      订单信息
		 * @param   array   $payment    支付方式信息
		 */
		function get_code($order, $payment)
		{
			if (!defined('EC_CHARSET'))
			{
				$charset = 'utf-8';
			}
			else
			{
				$charset = EC_CHARSET;
			}
	
			$gateway = 'http://wappaygw.alipay.com/service/rest.htm?';
	
			/************************功能开始**************************/
	
			//请求业务数据
			$req_data = '<direct_trade_create_req>'
					. '<subject>'. $order['order_sn'] .'</subject>'
					. '<out_trade_no>'. $order['order_sn'] . '_' . $order['log_id'] .'</out_trade_no>'
					. '<total_fee>'. $order['order_amount'] .'</total_fee>'
					. '<seller_account_name>'. $payment['alipay_account'] .'</seller_account_name>'
					. '<call_back_url>'. return_url(basename(__FILE__, '.php')) .'</call_back_url>'
					. '<notify_url>'. return_url(basename(__FILE__, '.php')) .'</notify_url>'
					//. '<out_user>'. $order['consignee'] .'</out_user>'
					. '<merchant_url>'. $GLOBALS['ecs']->url() .'</merchant_url>'
					. '<pay_expire>3600</pay_expire>'
					. '</direct_trade_create_req>';
	
			$parameter = array(
				'service'           => 'alipay.wap.trade.create.direct', //接口名称
				'format'            => 'xml', //请求参数格式
				'v'                 => '2.0', //接口版本号
				'partner'           => $payment['alipay_partner'], //合作者身份ID
				'req_id'            => date('Ymdhis').rand(1000,9999), //请求号，唯一
				'sec_id'            => 'MD5', //签名方式
				'req_data'          => $req_data, //请求业务数据
				"_input_charset"	=> $charset
			);
	
			ksort($parameter);
			reset($parameter);
	
			$param = '';
			$sign  = '';
	
			foreach ($parameter AS $key => $val)
			{
				$param .= "$key=" .urlencode($val). "&";
				$sign  .= "$key=$val&";
			}
	
			$param = substr($param, 0, -1);
			$sign  = substr($sign, 0, -1). $payment['alipay_key'];
	
			/************************功能分割**************************/
			
			//请求授权接口
			$result = $this->post($gateway, $param . '&sign='.md5($sign));
			$result = urldecode($result); //URL转码
			$result_array = explode('&', $result); //根据 & 符号拆分
			//重构数组
			$new_result_array = $temp_item = array();
			if(is_array($result_array)){
				foreach ($result_array as $vo){
					$temp_item = explode('=', $vo, 2); //根据 & 符号拆分
					$new_result_array[$temp_item[0]] = $temp_item[1];
				}
			}
	
			/************************功能分割**************************/
			
			$xml = simplexml_load_string($new_result_array['res_data']);
			$request_token = (array)$xml->request_token;
			//请求交易接口
			$parameter = array(
				'service'           => 'alipay.wap.auth.authAndExecute', //接口名称
				'format'            => 'xml', //请求参数格式
				'v'                 => $new_result_array['v'], //接口版本号
				'partner'           => $new_result_array['partner'], //合作者身份ID
				'sec_id'            => $new_result_array['sec_id'],
				'req_data'          => '<auth_and_execute_req><request_token>'. $request_token[0] .'</request_token></auth_and_execute_req>',
				'request_token'     => $request_token[0],
				'_input_charset'    => $charset
			);
	
			ksort($parameter);
			reset($parameter);
	
			$param = '';
			$sign  = '';
	
			foreach ($parameter AS $key => $val)
			{
				$param .= "$key=" .urlencode($val). "&";
				$sign  .= "$key=$val&";
			}
	
			$param = substr($param, 0, -1);
			$sign  = substr($sign, 0, -1). $payment['alipay_key'];
	
			/************************生成支付链接**************************/
			
			$button = '<div style="text-align:center"><input type="button" onclick="window.open(\''.$gateway.$param. '&sign='.md5($sign).'\')" value="' .$GLOBALS['_LANG']['pay_button']. '" /></div>';
			return $button;
		}
	
		/**
		 * 响应操作
		 */
		function respond()
		{
			if (!empty($_POST))
			{
				foreach($_POST as $key => $data)
				{
					$_GET[$key] = $data;
				}
			}
	
			$payment  = get_payment($_GET['code']);
			
			$order_sn = explode('_', $_GET['out_trade_no']);
			$order_sn = $order_sn[1];
	
			/* 检查数字签名是否正确 */
			ksort($_GET);
			reset($_GET);
	
			$sign = '';
			foreach ($_GET AS $key=>$val)
			{
				if ($key != 'sign' && $key != 'sign_type' && $key != 'code')
				{
					$sign .= "$key=$val&";
				}
			}
	
			$sign = substr($sign, 0, -1) . $payment['alipay_key'];
			if (md5($sign) != $_GET['sign'])
			{
				return false;
			}
	
			if ($_GET['result'] == 'success')
			{
				/* 改变订单状态 */
				order_paid($order_sn, 2);
	
				return true;
			}
			else
			{
				return false;
			}
		}
	
		function post($url, $curlPost) {
			$curl = curl_init();
			curl_setopt($curl, CURLOPT_URL, $url);
			curl_setopt($curl, CURLOPT_HEADER, false);
			curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($curl, CURLOPT_NOBODY, true);
			curl_setopt($curl, CURLOPT_POST, true);
			curl_setopt($curl, CURLOPT_POSTFIELDS, $curlPost);
			$return_str = curl_exec($curl);
			curl_close($curl);
			return $return_str;
		}
	
	}
}else{
	class alipay
	{
	
		/**
		 * 构造函数
		 *
		 * @access  public
		 * @param
		 *
		 * @return void
		 */
		function alipay()
		{
		}
	
		function __construct()
		{
			$this->alipay();
		}
	
		/**
		 * 生成支付代码
		 * @param   array   $order      订单信息
		 * @param   array   $payment    支付方式信息
		 */
		function get_code($order, $payment)
		{
			if (!defined('EC_CHARSET'))
			{
				$charset = 'utf-8';
			}
			else
			{
				$charset = EC_CHARSET;
			}
	
			$real_method = $payment['alipay_pay_method'];
	
			switch ($real_method){
				case '0':
					$service = 'trade_create_by_buyer';
					break;
				case '1':
					$service = 'create_partner_trade_by_buyer';
					break;
				case '2':
					$service = 'create_direct_pay_by_user';
					break;
			}
	
			$extend_param = 'isv^sh22';
	
			$parameter = array(
				'extend_param'      => $extend_param,
				'service'           => $service,
				'partner'           => $payment['alipay_partner'],
				//'partner'           => ALIPAY_ID,
				'_input_charset'    => $charset,
				'notify_url'        => return_url(basename(__FILE__, '.php')),
				'return_url'        => return_url(basename(__FILE__, '.php')),
				/* 业务参数 */
				'subject'           => $order['order_sn'],
				'out_trade_no'      => $order['order_sn'] . $order['log_id'],
				'price'             => $order['order_amount'],
				'quantity'          => 1,
				'payment_type'      => 1,
				/* 物流参数 */
				'logistics_type'    => 'EXPRESS',
				'logistics_fee'     => 0,
				'logistics_payment' => 'BUYER_PAY_AFTER_RECEIVE',
				/* 买卖双方信息 */
				'seller_email'      => $payment['alipay_account']
			);
	
			ksort($parameter);
			reset($parameter);
	
			$param = '';
			$sign  = '';
	
			foreach ($parameter AS $key => $val)
			{
				$param .= "$key=" .urlencode($val). "&";
				$sign  .= "$key=$val&";
			}
	
			$param = substr($param, 0, -1);
			$sign  = substr($sign, 0, -1). $payment['alipay_key'];
			//$sign  = substr($sign, 0, -1). ALIPAY_AUTH;
	
			$button = '<div style="text-align:center"><input type="button" onclick="window.open(\'https://mapi.alipay.com/gateway.do?'.$param. '&sign='.md5($sign).'&sign_type=MD5\')" value="' .$GLOBALS['_LANG']['pay_button']. '" /></div>';
	
			return $button;
		}
	
		/**
		 * 响应操作
		 */
		function respond()
		{
			if (!empty($_POST))
			{
				foreach($_POST as $key => $data)
				{
					$_GET[$key] = $data;
				}
			}
			$payment  = get_payment($_GET['code']);
			$seller_email = rawurldecode($_GET['seller_email']);
			$order_sn = str_replace($_GET['subject'], '', $_GET['out_trade_no']);
			$order_sn = trim($order_sn);
	
			/* 检查数字签名是否正确 */
			ksort($_GET);
			reset($_GET);
	
			$sign = '';
			foreach ($_GET AS $key=>$val)
			{
				if ($key != 'sign' && $key != 'sign_type' && $key != 'code')
				{
					$sign .= "$key=$val&";
				}
			}
	
			$sign = substr($sign, 0, -1) . $payment['alipay_key'];
			//$sign = substr($sign, 0, -1) . ALIPAY_AUTH;
			if (md5($sign) != $_GET['sign'])
			{
				return false;
			}
	
			/* 检查支付的金额是否相符 */
			if (!check_money($order_sn, $_GET['total_fee']))
			{
				return false;
			}
	
			if ($_GET['trade_status'] == 'WAIT_SELLER_SEND_GOODS')
			{
				/* 改变订单状态 */
				order_paid($order_sn, 2);
	
				return true;
			}
			elseif ($_GET['trade_status'] == 'TRADE_FINISHED')
			{
				/* 改变订单状态 */
				order_paid($order_sn);
	
				return true;
			}
			elseif ($_GET['trade_status'] == 'TRADE_SUCCESS')
			{
				/* 改变订单状态 */
				order_paid($order_sn, 2);
	
				return true;
			}
			else
			{
				return false;
			}
		}
	}
}
?>