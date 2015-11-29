<?php
define('IN_ECS', true);



require(dirname(__FILE__) . '/includes/init.php');

//$james=fopen("taocanlog.txt","a");

//fwrite($james,local_date('Y-m-d')."   开始执行:".local_date('Y-m-d H:i:s')."\n");

//echo '当前时间:'.local_date('Y-m-d H:i:s');
//if(local_date("H")=='01' || local_date("H")=='12' || local_date("H")=='13'  || local_date("H")=='14'  || local_date("H")=='15' || local_date("H")=='16' || local_date("H")=='17'){
    require(dirname(__FILE__) . '/includes/lib_order.php');
    $weekarray=array("周日","周一","周二","周三","周四","周五","周六");
	$today_num = local_date("w", gmtime());
	
	$today_num = ($today_num+1>6) ? 0 : ($today_num+1);
    $today = $weekarray[$today_num];
   
    $weeks = intval(local_date('W',gmtime()));
   

    //运行自动生成订单任务
    $job = $db->getRow("select * from ".$ecs->table("taocan_job")." where status='1'");
            if($job){
               // echo "select t.id as tid,t.tcid,t.gids,t.weekdays,t.halfday,t.consignee,t.email,t.country,t.province,t.city,t.district,t.address,t.zipcode,t.mobile,u.tprice,u.user_id,u.id from ".$ecs->table("user_taocan")." u,
                 //".$ecs->table("user_tc_goods")." t  where u.status='1' and u.id=t.tcid and weeks!=".$job['weeks']." and weekdays='".$today."'";

                $tgoodslist = $db->getAll("select t.id as tid,t.tcid,t.gnums,t.gids,t.weekdays,t.halfday,t.consignee,t.email,t.country,t.province,t.city,t.district,t.address,t.zipcode,t.mobile,u.tprice,u.user_id,u.id from ".$ecs->table("user_taocan")." u,
                 ".$ecs->table("user_tc_goods")." t  where u.status='1' and u.id=t.tcid and weeks!=".$job['weeks']." and weekdays='".$today."'");

               foreach($tgoodslist as $taocan){
                   $user = $db->getRow("select user_rank, rank_points, to_date, user_money from ".$ecs->table("users")." where user_id=".$taocan['user_id']);

                   if(empty($user['to_date']) || $user['to_date']<gmtime()){ //判断合同期限
                       $db->query("update ".$ecs->table("user_taocan")." set status='2',beizhu='用户合同期限到期' where id=".$taocan['id']);
                        continue;
                   }

                   if($user['user_money']<$taocan['tprice']){ //判断用户余额
                       $db->query("update ".$ecs->table("user_taocan")." set status='2',beizhu='用户余额不足' where id=".$taocan['id']);
                       continue;
                   }

                 //根据套餐金额减去用户余额，并生成相关订单
                   $tcgoods = $db->getOne("select count(*) from ".$ecs->table("user_tc_goods")." where tcid=".$taocan['id']);
				   if($user['user_rank']==0)
				   {
					    $sql = 'SELECT discount FROM ' . $GLOBALS['ecs']->table('user_rank') . " WHERE special_rank = '0' AND min_points <= " . intval($user['rank_points']) . ' AND max_points > ' . intval($user['rank_points'])." limit 1";
					    
				   }
				   else
				   {
					   $sql = 'SELECT discount FROM ' . $GLOBALS['ecs']->table('user_rank') . " WHERE rank_id = '$user[user_rank]' limit 1";
				   }
				   
				   $discount = $db->getOne($sql);
				   $discount = $discount / 100.00;
				   
                   $ordertotalprice = round($taocan['tprice']/$tcgoods,2)*$discount;
                   $goodsid = unserialize($taocan['gids']);
                   $goodslist = $db->getAll("select g.goods_name,g.shop_price,g.goods_sn,g.goods_id from ".$ecs->table("goods")."  g where g.goods_id ".db_create_in($goodsid)." ");
                   $ngoodslist = array();
                   $gnums = unserialize($taocan['gnums']);
                   foreach($goodslist as $n){
                       foreach($goodsid as $j=>$id){
                           if($n['goods_id']==$id){
                               $n['goods_num'] = $gnums[$j];
                               $ngoodslist[] = $n;
                           }
                       }
                   }

                  $totalprice = 0;
                  foreach($goodslist as $g){
                        $totalprice+=$g['shop_price'];
                  }


                  $order = array(
                       'order_sn'     => get_order_sn(),
                       'user_id'          => $taocan['user_id'],
                       'shipping_name'   =>'黑猫宅急便',
                       'shipping_id'    => 2,
                       'order_status'  => OS_CONFIRMED,
                       'shipping_status'   =>SS_UNSHIPPED,
                       'pay_status'   => PS_PAYED,
                       'consignee'   => $taocan['consignee'],
                       'country'          => $taocan['country'],
                       'province'        => $taocan['province'],
                       'city'          => $taocan['city'],
                       'district'       => $taocan['district'],
                       'address'    => $taocan['address'],
                       'zipcode'    =>  $taocan['zipcode'],
                       'tel'      =>  '',
                       'mobile'  => $taocan['mobile'],
                       'email' => $taocan['email'],
                       //'best_time'     => $taocan['weekdays'].$taocan['halfday'],
                       'best_time'     => local_date('Y-m-d',gmstr2time("1 day"))." ".$taocan['halfday'],
                       'sign_building'    => '',
                       'email'           => $taocan['email'],
                       'pay_id'       =>'4',
                       'pay_name'      => '余额支付',
                       'goods_amount'         => $totalprice,
                       'money_paid'       =>$ordertotalprice,
                       'order_amount'      =>$ordertotalprice,
                       'referer'         =>'用户套餐自动生成',
                       'add_time'         =>gmtime(),
                       'confirm_time'         => gmtime(),
                       'pay_time'             => gmtime(),
                       'shipping_time'    => gmtime(),
                       'discount'   => ($totalprice-$ordertotalprice)
                   );

                  // Add by Edward
                  //fwrite($james,"订单号:".get_order_sn()."--用户ID:".$taocan['user_id']."——收货人：".$taocan['consignee']."\n");
         
                   $GLOBALS['db']->autoExecute($GLOBALS['ecs']->table('order_info'), $order, 'INSERT');
                   $new_order_id = $db->insert_id();
                   foreach($ngoodslist as $goods){
                       $ogoods  = array(
                           'order_id' => $new_order_id,
                           'goods_id' => $goods['goods_id'],
                           'goods_name' => $goods['goods_name'],
                           'goods_sn' => $goods['goods_sn'],
                           'product_id'=> '0',
                           'goods_number'=> $goods['goods_num'],
                           'goods_price' => $goods['shop_price'],
                           'goods_attr' => '',
                           'send_number'=>'0',
                           'is_real'=>'1',
                           'extension_code'=>'',
                           'parent_id'=>'',
                           'is_gift'=>'0',
                           'goods_attr_id'=>''
                       );
                       $GLOBALS['db']->autoExecute($GLOBALS['ecs']->table('order_goods'), $ogoods, 'INSERT');
                   }
                  //添加日志
                  order_action($order['order_sn'], OS_CONFIRMED, SS_UNSHIPPED, PS_PAYED, '','套餐自动生成订单');
                  log_account_change($order['user_id'], -$ordertotalprice, 0, 0, 0, '用户套餐自动生成订单:'.$order['order_sn'].',自动扣除', ACT_OTHER);
                  $db->query("update ".$ecs->table("user_tc_goods")." set weeks = ".$weeks." where id=".$taocan['tid']);
               }
              $db->query("update ".$ecs->table("taocan_job")." set last_date='".gmtime()."', weeks = ".$weeks."");
            }
            
    //fwrite($james, "    结束执行:".local_date('Y-m-d H:i:s')."\n");
    //fclose($james);
?>
 
