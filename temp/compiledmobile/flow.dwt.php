<!DOCTYPE html>
<html manifest="/manifest/tmallCateAppCache.manifest">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" /><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
          
<meta charset="utf-8">     
<title><?php echo $this->_var['page_title']; ?>触屏版</title>          
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" name="viewport">     
<meta content="yes" name="apple-mobile-web-app-capable">     
<meta content="black" name="apple-mobile-web-app-status-bar-style">     
<meta content="telephone=no" name="format-detection">    
<LINK rel=apple-touch-icon-precomposed href="themes/default/images/touch-icon.png">
<LINK rel="shortcut icon" type=image/x-icon href="themes/default/images/favicon2.ico"> 
<LINK rel=stylesheet type=text/css href="themes/default/cart.css">
<LINK rel=stylesheet type=text/css href="themes/default/style.css">
</head>

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,shopping_flow.js')); ?>
</head>
<body style="min-height: 0px;">
<div class="viewport enableNavbar enableToolbar enableTransition enableNavbar enableToolbar enableTransition"> 
 
 
<div class="block">
  <?php if ($this->_var['step'] == "cart"): ?>
  
  
  <?php echo $this->smarty_insert_scripts(array('files'=>'showdiv.js')); ?>
  <script type="text/javascript">
  <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
    var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  </script>
  <header class="navbar">
  <ul>
	  <li>购物车</li>
	  <li>
		  <a class="c-btn c-btn-aw" href="javascript:history.go(-1)"><span>返回</span></a>
	  </li>
	  <li>
	 	 <a class="c-btn on del" style="" onclick="location.href='flow.php?step=clear'"><span>删除</span></a>
	  </li>
  </ul>
  </header>
	<section class="content">
	<div id="J_plugin_cart">
	
	
	
	<?php if ($this->_var['goods_list']): ?>
		<div class="s-tab" id="J_cartTab">
		<ul>
			<li class="cur">购物车列表</li>
			<img src="themes/default/images/step1.png">
			<li>确认订单</li>
			<img src="themes/default/images/step2.png">
			<li>购买成功</li>
		</ul>
		</div>
		<div class="bcont">
			<div id="J_allGoods">
				<div class="cont"> 
					<form id="formCart" name="formCart" method="post" action="flow.php">
						<section class="order on"> 
							<div class="shop"> 
								<div class="title"> 
								<div class="info"><h3>购物车列表</h3> <p></p></div>  
								</div> 
							</div> 
							<ul class="itemlist">  
							<?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
								<li> 
									<div class="item"> 
										<?php if ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['extension_code'] != 'package_buy'): ?>
										<a  class="pic fragment" href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>" target="_blank"><img class="lazy" src="<?php echo $this->_var['goods']['goods_thumb']; ?>" border="0" title="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" /></a>
										<?php if ($this->_var['goods']['parent_id'] > 0): ?>
										<span style="color:#FF0000">（<?php echo $this->_var['lang']['accessories']; ?>）</span>
										<?php endif; ?>
										<?php if ($this->_var['goods']['is_gift'] > 0): ?>
										<span style="color:#FF0000">（<?php echo $this->_var['lang']['largess']; ?>）</span>
										<?php endif; ?>
										<?php elseif ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['extension_code'] == 'package_buy'): ?>
										<a href="javascript:void(0)" onclick="setSuitShow(<?php echo $this->_var['goods']['goods_id']; ?>)" class="f6"><?php echo $this->_var['goods']['goods_name']; ?><span style="color:#FF0000;">（<?php echo $this->_var['lang']['remark_package']; ?>）</span></a>
										<div id="suit_<?php echo $this->_var['goods']['goods_id']; ?>" style="display:none">
										<?php $_from = $this->_var['goods']['package_goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'package_goods_list');if (count($_from)):
    foreach ($_from AS $this->_var['package_goods_list']):
?>
										<a href="goods.php?id=<?php echo $this->_var['package_goods_list']['goods_id']; ?>" target="_blank" class="f6"><?php echo $this->_var['package_goods_list']['goods_name']; ?></a><br />
										<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
										</div>
										<?php else: ?>
										<?php echo $this->_var['goods']['goods_name']; ?>
									<?php endif; ?>
										<div class="desc"> 
										<a style="color:#333" href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>" target="_blank" class="fragment">
										<h4><?php echo $this->_var['goods']['goods_name']; ?></h4> 
										</a>
										<a href="javascript:if (confirm('<?php echo $this->_var['lang']['drop_goods_confirm']; ?>')) location.href='flow.php?step=drop_goods&amp;id=<?php echo $this->_var['goods']['rec_id']; ?>'; "   class="cha"> </a>
										<div style="clear:both"> </div>
										<?php if ($this->_var['show_goods_attribute'] == 1): ?>
										<p class="props"> 
										<?php echo nl2br($this->_var['goods']['goods_attr']); ?>
										</p>  
										<?php endif; ?>
											<div class="price"> 
											<?php if ($this->_var['show_marketprice']): ?>
											<del class="grey"> 
											<?php echo $this->_var['goods']['market_price']; ?> 
											</del> 
											<?php endif; ?>
												<div class="quantity"><em class="h subtotal" tprice="19.00"><?php echo $this->_var['goods']['goods_price']; ?></em> x <span class="txt"> 
												<?php if ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['is_gift'] == 0 && $this->_var['goods']['parent_id'] == 0): ?>
												<input class="c-f-text qt" type="text" name="goods_number[<?php echo $this->_var['goods']['rec_id']; ?>]" id="goods_number_<?php echo $this->_var['goods']['rec_id']; ?>" value="<?php echo $this->_var['goods']['goods_number']; ?>" size="4"   onkeyup="changenum(<?php echo $this->_var['goods']['rec_id']; ?>)"/>
												<?php echo $this->smarty_insert_scripts(array('files'=>'transport.js')); ?>
                              <script>
                              
                             function changenum(rec_id){
								
								 var goods_number = parseInt(document.getElementById('goods_number_'+rec_id).value);				  	   
							     change_goods_number(rec_id,goods_number);
								
								 }
								function change_goods_number(rec_id, goods_number)
								{   
								
								   Ajax.call('flow.php?step=ajax_update_cart', 'rec_id=' + rec_id +'&goods_number=' + goods_number, change_goods_number_response, 'POST','JSON');                
								} 
								
								function change_goods_number_response(result)
								{    
									if (result.error == 0)
									{
										var rec_id = result.rec_id;
										document.getElementById('total_number').innerHTML = result.total_number;//更新数量
										document.getElementById('goods_subtotal').innerHTML = result.total_desc;//更新小计
										if (document.getElementById('ECS_CARTINFO'))
										{//更新购物车数量
										   document.getElementById('ECS_CARTINFO').innerHTML = result.cart_info;
										}
									}
									else if (result.message != '')
									{
										alert(result.message);
									}                
								}

                              </script>
												<?php else: ?>
												<?php echo $this->_var['goods']['goods_number']; ?>
												<?php endif; ?>	
												</span> 
												</div> 
											</div>  
										</div> 
									</div> 
								</li>  
							<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
							</ul> 
						</section>
						<input type="hidden" name="step" value="update_cart" />
					</form>
				</div>
			</div>
		</div>
	<?php else: ?>	
	<div class="empty-cart">
		<div class="cart-logo"></div>
		<p class="message">没有宝贝哦，不如去添加宝贝</p>
		<ul class="list">
			<li>
				<a href="index.php">去购物</a>
				<span class="arrow right"></span>
			</li>
			<li>
				<a href="user.php?act=collection_list">查看我的收藏夹</a>
				<span class="arrow right"></span>
			</li>
		</ul>
	</div>
	<?php endif; ?>	
	</div>
	</section>
 
		
<footer class="toolbar" style="height: 40px;"><div class="totalprice"><p>合计: <em class="h price" id="goods_subtotal"><?php echo $this->_var['total']['goods_price']; ?></em></p>
<a style="display:block; text-align:center; line-height:40px;" class="c-btn-orgn c-btn-sub"  href="flow.php?step=checkout">结算(<em class="num" id="total_number"><?php echo $this->_var['total']['total_number']; ?></em>)</a>
</div>
</footer>
		
       <?php if ($_SESSION['user_id'] > 0): ?>
       <?php echo $this->smarty_insert_scripts(array('files'=>'transport.js')); ?>
       <script type="text/javascript" charset="utf-8">
        function collect_to_flow(goodsId)
        {
          var goods        = new Object();
          var spec_arr     = new Array();
          var fittings_arr = new Array();
          var number       = 1;
          goods.spec     = spec_arr;
          goods.goods_id = goodsId;
          goods.number   = number;
          goods.parent   = 0;
          Ajax.call('flow.php?step=add_to_cart', 'goods=' + goods.toJSONString(), collect_to_flow_response, 'POST', 'JSON');
        }
        function collect_to_flow_response(result)
        {
          if (result.error > 0)
          {
            // 如果需要缺货登记，跳转
            if (result.error == 2)
            {
              if (confirm(result.message))
              {
                location.href = 'user.php?act=add_booking&id=' + result.goods_id;
              }
            }
            else if (result.error == 6)
            {
              openSpeDiv(result.message, result.goods_id);
            }
            else
            {
              alert(result.message);
            }
          }
          else
          {
            location.href = 'flow.php';
          }
        }
      </script>
 
   
  <?php endif; ?>
  <?php endif; ?>
 

 


        <?php if ($this->_var['step'] == "consignee"): ?>
        
        <?php echo $this->smarty_insert_scripts(array('files'=>'region.js,utils.js')); ?>
        <script type="text/javascript">
          region.isAdmin = false;
          <?php $_from = $this->_var['lang']['flow_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
          var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

          
          onload = function() {
            if (!document.all)
            {
              document.forms['theForm'].reset();
            }
          }
          
        </script>
		
		<header class="navbar">
		<ul>
		  <li>收货人信息</li>
		  <li>
			  <a class="c-btn c-btn-aw" href="javascript:history.go(-1)"><span>返回</span></a>
		  </li>
		  <li>
		  </li>
		</ul>
		</header>
		<section class="content">
		<div id="J_plugin_cart">
			<div class="s-tab" id="J_cartTab">
			<ul>
				<li>购物车列表</li>
				<img src="themes/default/images/step3.png">
				<li  class="cur">确认订单</li>
				<img src="themes/default/images/step1.png">
				<li>购买成功</li>
			</ul>
			</div>
			<div class="bcont">
			<div id="J_allGoods">
			<div class="cont"> 
				<section class="order on"> 
				 
					  <?php $_from = $this->_var['consignee_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('sn', 'consignee');if (count($_from)):
    foreach ($_from AS $this->_var['sn'] => $this->_var['consignee']):
?> 
					  <div class="shop"> 
						<div class="title"> 
						<div class="info"><h3>收货人信息</h3> <p></p></div>  
						</div> 
						</div>
						 <form style="padding:8px;" action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
						
						  <?php echo $this->fetch('library/consignee.lbi'); ?>
						 
						</form>
					 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				  </section> 	
					</div> 
					</div> 
					</div>
					</div>
					</section>
				 <?php endif; ?>
        <?php if ($this->_var['step'] == "checkout"): ?>
	    <header class="navbar">
		<ul>
		  <li>订单确认页</li>
		  <li>
			  <a class="c-btn c-btn-aw" href="javascript:history.go(-1)"><span>返回</span></a>
		  </li>
		  <li>
		  </li>
		</ul>
		</header>
		
		<section class="content">
		<div id="J_plugin_cart">
			<div class="s-tab" id="J_cartTab">
			<ul>
				<li>购物车列表</li>
				<img src="themes/default/images/step3.png">
				<li  class="cur">确认订单</li>
				<img src="themes/default/images/step1.png">
				<li>购买成功</li>
			</ul>
			</div>
			<div class="bcont">
			<div id="J_allGoods">
			<div class="cont"> 
				 
        <form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkOrderForm(this)">
        <script type="text/javascript">
        var flow_no_payment = "<?php echo $this->_var['lang']['flow_no_payment']; ?>";
        var flow_no_shipping = "<?php echo $this->_var['lang']['flow_no_shipping']; ?>";
        </script>
		
		<section class="order on"> 
		<div class="shop"> 
		<div class="title"> 
		<div class="info"><h3><?php echo $this->_var['lang']['goods_list']; ?> <a href="flow.php" class="f6"><?php echo $this->_var['lang']['modify']; ?></a></h3> </div>  
		</div> 
		</div>
			
      
        <table width="100%" align="center" border="0" cellpadding="5" cellspacing="0" bgcolor="">
            <tr>
              <th bgcolor="" width="200"><?php echo $this->_var['lang']['goods_name']; ?></th>
            
               
             
              <th bgcolor=""><?php echo $this->_var['lang']['number']; ?></th>
              <th bgcolor=""><?php echo $this->_var['lang']['subtotal']; ?></th>
            </tr>
            <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
            <tr>
              <td bgcolor="" align="left" style=" padding-left:10px;">
              <?php if ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['extension_code'] == 'package_buy'): ?>
          <a href="javascript:void(0)" onclick="setSuitShow(<?php echo $this->_var['goods']['goods_id']; ?>)" class="f6"><?php echo $this->_var['goods']['goods_name']; ?><span style="color:#FF0000;">（<?php echo $this->_var['lang']['remark_package']; ?>）</span></a>
          <div id="suit_<?php echo $this->_var['goods']['goods_id']; ?>" style="display:none">
              <?php $_from = $this->_var['goods']['package_goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'package_goods_list');if (count($_from)):
    foreach ($_from AS $this->_var['package_goods_list']):
?>
            <a href="goods.php?id=<?php echo $this->_var['package_goods_list']['goods_id']; ?>" target="_blank" class="f6"><?php echo $this->_var['package_goods_list']['goods_name']; ?></a><br />
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          </div>
          <?php else: ?>
          <a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>" target="_blank" class="f6"><?php echo $this->_var['goods']['goods_name']; ?></a>
                <?php if ($this->_var['goods']['parent_id'] > 0): ?>
                <span style="color:#FF0000">（<?php echo $this->_var['lang']['accessories']; ?>）</span>
                <?php elseif ($this->_var['goods']['is_gift']): ?>
                <span style="color:#FF0000">（<?php echo $this->_var['lang']['largess']; ?>）</span>
                <?php endif; ?>
          <?php endif; ?>
          <?php if ($this->_var['goods']['is_shipping']): ?>(<span style="color:#FF0000"><?php echo $this->_var['lang']['free_goods']; ?></span>)<?php endif; ?>
              </td>
              
             
            
              <td bgcolor="" align="center"><?php echo $this->_var['goods']['goods_number']; ?></td>
              <td bgcolor="" align="center"><?php echo $this->_var['goods']['formated_subtotal']; ?></td>
            </tr>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            <?php if (! $this->_var['gb_deposit']): ?>
            <tr>
              <td bgcolor="" align="left" colspan="7" style=" padding-left:10px;">
            
              <?php echo $this->_var['shopping_money']; ?> 
              </td>
            </tr>
            <?php endif; ?>
          </table>
		</section> 	
     
   	  
	  
	  
	  <section class="order on"> 
		<div class="shop"> 
		<div class="title"> 
		<div class="info"><h3><?php echo $this->_var['lang']['consignee_info']; ?> <a href="flow.php?step=consignee" class="f6"><?php echo $this->_var['lang']['modify']; ?></a></h3> </div>  
		</div> 
		</div>
      <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="">
            <tr>
              <td style="padding-left:10px;" bgcolor=""><?php echo $this->_var['lang']['consignee_name']; ?>:</td>
              <td bgcolor=""><?php echo htmlspecialchars($this->_var['consignee']['consignee']); ?></td>
              <td bgcolor="">Email邮件:</td>
              <td bgcolor=""><?php echo htmlspecialchars($this->_var['consignee']['email']); ?></td>
            </tr>
            <?php if ($this->_var['total']['real_goods_count'] > 0): ?>
            <tr>
              <td   style="padding-left:10px;" bgcolor=""><?php echo $this->_var['lang']['detailed_address']; ?>:</td>
              <td bgcolor=""><?php echo htmlspecialchars($this->_var['consignee']['address']); ?> </td>
              <td bgcolor=""><?php echo $this->_var['lang']['phone']; ?>:</td>
              <td bgcolor=""><?php echo $this->_var['consignee']['tel']; ?></td>
            </tr>
            <?php endif; ?>
        
            
          </table>
	  </section> 
     <div class="blank"></div>
    <?php if ($this->_var['total']['real_goods_count'] != 0): ?>
	
	
	<section class="order on"> 
		<div class="shop"> 
		<div class="title"> 
		<div class="info"><h3><?php echo $this->_var['lang']['shipping_method']; ?> </h3> </div>  
		</div> 
		</div>
	<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="" id="shippingTable">
            <tr>
              <th bgcolor="" width="5%">&nbsp;</th>
              <th bgcolor="" align="left"  width="25%"><?php echo $this->_var['lang']['name']; ?></th>
             
              <th bgcolor="" width="15%"><?php echo $this->_var['lang']['fee']; ?></th>
             
           
            </tr>
            <?php $_from = $this->_var['shipping_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'shipping');if (count($_from)):
    foreach ($_from AS $this->_var['shipping']):
?>
            <tr>
              <td bgcolor="" style="padding-left:10px;"  align="left" valign="top"><input  name="shipping" type="radio" value="<?php echo $this->_var['shipping']['shipping_id']; ?>" <?php if ($this->_var['order']['shipping_id'] == $this->_var['shipping']['shipping_id']): ?>checked="true"<?php endif; ?> supportCod="<?php echo $this->_var['shipping']['support_cod']; ?>" insure="<?php echo $this->_var['shipping']['insure']; ?>" onclick="selectShipping(this)" />
              </td>
              <td bgcolor=""  align="left" valign="top"><strong><?php echo $this->_var['shipping']['shipping_name']; ?></strong></td>
           
              <td bgcolor="" align="center" valign="top"><?php echo $this->_var['shipping']['format_shipping_fee']; ?></td>
      
             
            </tr>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
             
          </table>
	 </section> 

     
   
    <div class="blank"></div>
        <?php else: ?>
        <input name = "shipping" type="radio" value = "-1" checked="checked"  style="display:none"/>
        <?php endif; ?>
    <?php if ($this->_var['is_exchange_goods'] != 1 || $this->_var['total']['real_goods_count'] != 0): ?>
	
	
	
	<section class="order on"> 
		<div class="shop"> 
		<div class="title"> 
		<div class="info"><h3><?php echo $this->_var['lang']['payment_method']; ?></h3> </div>  
		</div> 
		</div>
	 
    <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="" id="paymentTable">
            <tr>
              <th width="5%" bgcolor="">&nbsp;</th>
              <th width="20%" bgcolor="" style=" text-align:left"><?php echo $this->_var['lang']['name']; ?></th>
             
              <th bgcolor="" width="15%"  style=" text-align:center"><?php echo $this->_var['lang']['pay_fee']; ?></th>
            </tr>
            <?php $_from = $this->_var['payment_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'payment');if (count($_from)):
    foreach ($_from AS $this->_var['payment']):
?>
            
            <tr>
              <td valign="top" bgcolor="" style=" padding-left:10px;">
			  <input type="radio" name="payment" value="<?php echo $this->_var['payment']['pay_id']; ?>" <?php if ($this->_var['order']['pay_id'] == $this->_var['payment']['pay_id']): ?>checked<?php endif; ?> isCod="<?php echo $this->_var['payment']['is_cod']; ?>" onclick="selectPayment(this)" <?php if ($this->_var['cod_disabled'] && $this->_var['payment']['is_cod'] == "1"): ?>disabled="true"<?php endif; ?>/>
			  </td>
              <td valign="top" bgcolor="" style=" text-align:left"><strong><?php echo $this->_var['payment']['pay_name']; ?></strong></td>
             
              <td align="right" bgcolor="" style=" text-align:center" valign="top"><?php echo $this->_var['payment']['format_pay_fee']; ?></td>
            </tr>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          </table>
     </section> 

    <?php else: ?>
        <input name = "payment" type="radio" value = "-1" checked="checked"  style="display:none"/>
    <?php endif; ?>
    <div class="blank"></div>
          
       
    </div>
    <div class="blank"></div>
	
	
	
		<section class="order on"> 
		<div class="shop"> 
		<div class="title"> 
		<div class="info"><h3><?php echo $this->_var['lang']['fee_total']; ?></h3> </div>  
		</div> 
		</div>
  
          <?php echo $this->fetch('library/order_total.lbi'); ?>
          
		</section> 
		<div class="pay_bottom" align="center" style="margin:8px auto;"> 
		<input type="submit" name="submit" value="提交订单"  class="c-btn-oran"  style="border:none;" />
		<input type="hidden" name="step" value="done" />
		</div>
		</form>
			 
			</div> 
			</div> 
			</div>
			</section>
        <?php endif; ?>

        <?php if ($this->_var['step'] == "done"): ?>
        
      
       
 
		
		
		
		<header class="navbar">
		<ul>
		  <li>订单提交成功</li>
		  <li>
			  <a class="c-btn c-btn-aw" href="index.php"><span>返回首页</span></a>
		  </li>
		  <li>
		  </li>
		</ul>
		</header>
		<section class="content">
		<div id="J_plugin_cart">
			<div class="s-tab" id="J_cartTab">
			<ul>
				<li>购物车列表</li>
				<img src="themes/default/images/step2.png">
				<li  >确认订单</li>
				<img src="themes/default/images/step3.png">
				<li  class="cur">购买成功</li>
			</ul>
			</div>
			<div class="bcont">
			<div id="J_allGoods">
			<div class="cont"> 
				<section class="order on"> 
				<h6 style="text-align:center; height:40px; line-height:20px;"><?php echo $this->_var['lang']['remember_order_number']; ?>: <font style="color:red"><?php echo $this->_var['order']['order_sn']; ?></font></h6>
          <table class="pay_bottom" width="90%" align="center" border="0" cellpadding="15" cellspacing="0" style="border:1px solid #ddd; margin:10px auto;" >
            <tr>
              <td align="center" bgcolor="">
              <?php if ($this->_var['order']['shipping_name']): ?><?php echo $this->_var['lang']['select_shipping']; ?>: <strong><?php echo $this->_var['order']['shipping_name']; ?></strong>，<?php endif; ?><?php echo $this->_var['lang']['select_payment']; ?>: <strong><?php echo $this->_var['order']['pay_name']; ?></strong>。<?php echo $this->_var['lang']['order_amount']; ?>: <strong><?php echo $this->_var['total']['amount_formated']; ?></strong>
              </td>
            </tr>
            <tr>
              <td align="center" bgcolor=""><?php echo $this->_var['order']['pay_desc']; ?></td>
            </tr>
            <?php if ($this->_var['pay_online']): ?>
            
            <tr>
			<style type="text/css">
		/* 本例子css */
		.pay_bottom input{display: inline-block;
min-width: 60px;
height: 40px;
padding: 0 15px;
border: 0;
background: #f40;
text-align: center;
text-decoration: none;
line-height: 40px;
color: #fff;
font-size: 14px;
font-weight: 700;
-webkit-border-radius: 2px;
background: -webkit-gradient(linear,0 0,0 100%,color-stop(0,#f50),color-stop(1,#f40));
text-shadow: 0 -1px 1px #ca3511;
-webkit-box-shadow: 0 -1px 0 #bf3210 inset;  }
	
</style>
              <td class="pay_bottom" align="center" bgcolor=""><?php echo $this->_var['pay_online']; ?></td>
            </tr>
            <?php endif; ?>
          </table>
          <?php if ($this->_var['virtual_card']): ?>
          <div  style="text-align:center;overflow:hidden;border:1px solid #E2C822; background:#FFF9D7;margin:10px;padding:10px 50px 30px; margin:10px;">
          <?php $_from = $this->_var['virtual_card']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'vgoods');if (count($_from)):
    foreach ($_from AS $this->_var['vgoods']):
?>
            <h3 style="color:#2359B1; font-size:12px;"><?php echo $this->_var['vgoods']['goods_name']; ?></h3>
            <?php $_from = $this->_var['vgoods']['info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'card');if (count($_from)):
    foreach ($_from AS $this->_var['card']):
?>
              <ul style="list-style:none;padding:0;margin:0;clear:both">
              <?php if ($this->_var['card']['card_sn']): ?>
              <li style="margin-right:50px;float:left;">
              <strong><?php echo $this->_var['lang']['card_sn']; ?>:</strong><span style="color:red;"><?php echo $this->_var['card']['card_sn']; ?></span>
              </li><?php endif; ?>
              <?php if ($this->_var['card']['card_password']): ?>
              <li style="margin-right:50px;float:left;">
              <strong><?php echo $this->_var['lang']['card_password']; ?>:</strong><span style="color:red;"><?php echo $this->_var['card']['card_password']; ?></span>
              </li><?php endif; ?>
              <?php if ($this->_var['card']['end_date']): ?>
              <li style="float:left;">
              <strong><?php echo $this->_var['lang']['end_date']; ?>:</strong><?php echo $this->_var['card']['end_date']; ?>
              </li><?php endif; ?>
              </ul>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          </div>
          <?php endif; ?>
          <p style="text-align:center; margin-bottom:20px;"><?php echo $this->_var['order_submit_back']; ?></p>
				  </section> 	
					</div> 
					</div> 
					</div>
					</div>
					</section>
		
		
        <?php endif; ?>
        <?php if ($this->_var['step'] == "login"): ?>
		<header class="navbar">
			<ul>
				<li>会员登录</li>
				<li>
				<a class="c-btn c-btn-aw" href="javascript:history.go(-1)"><span>返回</span></a>
				</li>
				<li>
				 
				</li>
			</ul>
		</header>
		<section class="content">
		<div id="J_plugin_cart">
			<div class="s-tab" id="J_cartTab">
			<ul>
			<li>购物车列表</li>
			<img src="themes/default/images/step3.png">
			<li class="cur">确认订单</li>
			<img src="themes/default/images/step1.png">
			<li>购买成功</li>
			</ul>
			</div>
			
        <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js,user.js')); ?>
        <script type="text/javascript">
        <?php $_from = $this->_var['lang']['flow_login_register']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
          var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

        
        function checkLoginForm(frm) {
          if (Utils.isEmpty(frm.elements['username'].value)) {
            alert(username_not_null);
            return false;
          }

          if (Utils.isEmpty(frm.elements['password'].value)) {
            alert(password_not_null);
            return false;
          }

          return true;
        }

        function checkSignupForm(frm) {
          if (Utils.isEmpty(frm.elements['username'].value)) {
            alert(username_not_null);
            return false;
          }

          if (Utils.trim(frm.elements['username'].value).match(/^\s*$|^c:\\con\\con$|[%,\'\*\"\s\t\<\>\&\\]/))
          {
            alert(username_invalid);
            return false;
          }

          if (Utils.isEmpty(frm.elements['email'].value)) {
            alert(email_not_null);
            return false;
          }

          if (!Utils.isEmail(frm.elements['email'].value)) {
            alert(email_invalid);
            return false;
          }

          if (Utils.isEmpty(frm.elements['password'].value)) {
            alert(password_not_null);
            return false;
          }

          if (frm.elements['password'].value.length < 6) {
            alert(password_lt_six);
            return false;
          }

          if (frm.elements['password'].value != frm.elements['confirm_password'].value) {
            alert(password_not_same);
            return false;
          }
          return true;
        }
        
        </script>
		<div class="bcont">
		<div id="J_allGoods">
		<div class="cont"> 
			<section class="order on"> 
				<div class="shop"> 
					<div class="title"> 
					<div class="info"><h3>用户登录</h3> <p></p></div>  
					</div> 
				</div>
				<form  style="padding:8px;" action="flow.php?step=login" method="post" name="loginForm" id="loginForm" onsubmit="return checkLoginForm(this)">
					<table width="100%" border="0" cellpadding="3">
						<tr>
						<td>
						<input placeholder="<?php echo $this->_var['lang']['username']; ?>" name="username" type="text" class="inputBg" id="username" />
						</td>
						</tr>
						<tr>
						<td>
						<input  placeholder="<?php echo $this->_var['lang']['password']; ?>" name="password" class="inputBg" type="password" />
						</td>
						</tr>
						<tr>
						<td>
						<?php if ($this->_var['enabled_login_captcha']): ?>
						<input  placeholder="<?php echo $this->_var['lang']['comment_captcha']; ?>"  type="text" size="8" name="captcha" class="inputBg" />
						<img src="captcha.php?is_login=1&<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onClick="this.src='captcha.php?is_login=1&'+Math.random()" />
						<?php endif; ?>
						</td>
						</tr> 
  
						<tr>
						<td>
						<input type="submit" class="c-btn"  name="login" value="<?php echo $this->_var['lang']['forthwith_login']; ?>" style="margin-right:5px;" />
						<?php if ($this->_var['anonymous_buy'] == 1): ?>
						<input type="button" class="c-btn" value="<?php echo $this->_var['lang']['direct_shopping']; ?>" onclick="location.href='flow.php?step=consignee&amp;direct_shopping=1'" />
						<?php endif; ?>
						<input name="act" type="hidden" value="signin" /> <a href="user.php?act=get_password" class="f6">忘记密码</a>
						</td>
						</tr>   
					</table>
				</form> 
			</section> 	
		</div> 
		</div> 
		</div> 	
		
		<div class="bcont">
		<div id="J_allGoods">
		<div class="cont"> 
			<section class="order on"> 
				<div class="shop"> 
					<div class="title"> 
					<div class="info"><h3>用户注册</h3> <p></p></div>  
					</div> 
				</div>
			<form style="padding:8px;"  action="flow.php?step=login" method="post" name="formUser" id="registerForm" onsubmit="return checkSignupForm(this)">
			<table width="100%" border="0" cellpadding="3">
			<tr>
			<td>
            <input placeholder="<?php echo $this->_var['lang']['username']; ?>" class="inputBg" name="username" type="text" id="username" onblur="is_registered(this.value);" /><br />
            <span id="username_notice" style="color:#FF0000"></span>
			</td>
			</tr>  
			<tr>
			<td>
			<input placeholder="<?php echo $this->_var['lang']['email_address']; ?>" class="inputBg" name="email" type="text"  id="email" onblur="checkEmail(this.value);" />
			<br />
            <span id="email_notice" style="color:#FF0000"></span>
			</td>
			</tr> 
			<tr>
			<td>
			<input placeholder="<?php echo $this->_var['lang']['password']; ?>" class="inputBg" name="password" type="password" id="password1" onblur="check_password(this.value);" onkeyup="checkIntensity(this.value)" /><br />
            <span style="color:#FF0000" id="password_notice"></span>
			</td>
			</tr> 
			<tr>
			<td>
			<input placeholder="<?php echo $this->_var['lang']['confirm_password']; ?>" class="inputBg" name="confirm_password" type="password" id="confirm_password" onblur="check_conform_password(this.value);" /><br />
            <span style="color:#FF0000" id="conform_password_notice"></span>
			</td>
			</tr>
			<tr>
			<td>
			<?php if ($this->_var['enabled_register_captcha']): ?>
			<input  placeholder="<?php echo $this->_var['lang']['comment_captcha']; ?>" class="inputBg" type="text" size="8" name="captcha" />
			<img src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onClick="this.src='captcha.php?'+Math.random()" /> 
			<?php endif; ?>
			<input type="submit" name="Submit" class="c-btn" value="<?php echo $this->_var['lang']['forthwith_register']; ?>" />
			<input name="act" type="hidden" value="signup" />
			</td>
			</tr> 
			</table>      
			</form>
          
          <?php if ($this->_var['need_rechoose_gift']): ?>
        <?php echo $this->_var['lang']['gift_remainder']; ?>
          <?php endif; ?>
				
			</section> 	
		</div> 
		</div> 
		</div> 				
        </div>
		</section>
        
        <?php endif; ?>
 </div>
 </div>
 
 
 <div style="width:1px; height:1px; overflow:hidden"><?php $_from = $this->_var['lang']['p_y']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'pv');if (count($_from)):
    foreach ($_from AS $this->_var['pv']):
?><?php echo $this->_var['pv']; ?><?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?></div>


 </body>
<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
<?php $_from = $this->_var['lang']['passport_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var username_exist = "<?php echo $this->_var['lang']['username_exist']; ?>";
var compare_no_goods = "<?php echo $this->_var['lang']['compare_no_goods']; ?>";
var btn_buy = "<?php echo $this->_var['lang']['btn_buy']; ?>";
var is_cancel = "<?php echo $this->_var['lang']['is_cancel']; ?>";
var select_spe = "<?php echo $this->_var['lang']['select_spe']; ?>";
</script>
</html>
