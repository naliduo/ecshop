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
<LINK rel=apple-touch-icon-precomposed href="mobile/default/images/touch-icon.png">
<LINK rel="shortcut icon" type=image/x-icon href="mobile/default/images/favicon2.ico"> 
<LINK rel=stylesheet type=text/css href="themes/default/user.css">
<LINK rel=stylesheet type=text/css href="themes/default/style.css">
<link rel="stylesheet" type="text/css" href="themes/default/css/pagenav.css">

<?php echo $this->smarty_insert_scripts(array('files'=>'transport.js,common.js,user.js')); ?>
</head>
<body>
<div id="tbh5v0">
<div class="login">
         
         <?php if ($this->_var['action'] == 'default'): ?>
		<header id="header">
			<div class="c-inav">
				<section>
					<button class="back">
					<span><em></em></span><a href="javascript:history.go(-1)">返回</a>
					</button>
					</section>
					<section>
					<span style="font-size:14px; color:#333; font-weight:normal">会员中心</span>
				</section>
				<section></section>
			</div>
		</header>
		<div class="mb-tms">
			<img src="themes/default/images/user_center.jpg">
		</div>
		<dl class="mb-user"> 
			<dt> 
				<img id="J_myLogo" src="themes/default/images/get_avatar.jpg">
				<span id="J_userLevel" class=""><?php echo $this->_var['rank_name']; ?></span> 
			</dt> 
				<dd id="J_nick"> 
				<span><?php echo $this->_var['info']['username']; ?></span> 
			</dd> 
		</dl>	
		<div class="mb-os"> 
			<ul>
				<li id="J_toPay"> 
				<a class="fragment" ><strong><?php echo $this->_var['info']['order_count']; ?></strong>30天订单</a> 
				</li> 
				<li id="J_hasPaid"> 
				<a class="fragment"  ><strong><?php echo $this->_var['info']['integral']; ?></strong>积分</a>
				</li> 
				<li id="J_toConfirm"> 
				<a class="fragment" href="user.php?act=account_log"  ><strong><?php echo $this->_var['info']['surplus']; ?></strong>余额</a>
				</li> 
				<li id="J_toComment"> 
				<a class="fragment" href="user.php?act=bonus"  ><strong> 0  </strong>红包</a> 
				</li> 
			</ul> 
		</div>
		
		<div class="mb-list"> 
		<a href="user.php?act=profile" class="mb-icon1 fragment"><?php echo $this->_var['lang']['label_profile']; ?></a> 
		<a href="user.php?act=order_list"  class="mb-icon2 fragment"><?php echo $this->_var['lang']['label_order']; ?></a>
	    <a href="user.php?act=address_list"  class="mb-icon3 fragment"><?php echo $this->_var['lang']['label_address']; ?></a>
		<a href="user.php?act=collection_list" class="mb-icon4 fragment"> <?php echo $this->_var['lang']['label_collection']; ?></a>
		<a href="user.php?act=message_list" class="mb-icon5 fragment"><?php echo $this->_var['lang']['label_message']; ?></a>
		<a href="user.php?act=booking_list" class="mb-icon6 fragment"><?php echo $this->_var['lang']['label_booking']; ?></a>
		<a href="user.php?act=bonus" class="mb-icon7 fragment"><?php echo $this->_var['lang']['label_bonus']; ?></a>
		<a href="user.php?act=affiliate" class="mb-icon8 fragment"><?php echo $this->_var['lang']['label_affiliate']; ?></a>
		<a href="user.php?act=comment_list" class="mb-icon9 fragment"><?php echo $this->_var['lang']['label_comment']; ?></a>
		<a href="user.php?act=track_packages" class="mb-icon10 fragment"><?php echo $this->_var['lang']['label_track_packages']; ?></a>
		<a href="user.php?act=account_log" class="mb-icon11 fragment"><?php echo $this->_var['lang']['label_user_surplus']; ?></a>
		<a href="user.php?act=logout"  class="mb-icon12 fragment">退出登录</a>
		</div>
		 
          
         <?php endif; ?>
         
         
         <?php if ($this->_var['action'] == 'message_list'): ?>
		 <header id="header">
			<div class="c-inav">
				<section>
					<button class="back">
					<span><em></em></span><a href="javascript:history.go(-1)">返回</a>
					</button>
					</section>
					<section>
					<span style="font-size:14px; color:#333; font-weight:normal"><?php echo $this->_var['lang']['label_message']; ?></span>
				</section>
				<section></section>
			</div>
		  </header>
        
          <div class="blank"></div>
		  <div class="fullscreen">
           <?php $_from = $this->_var['message_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'message');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['message']):
?>
          <div class="f_l">
          <b><?php echo $this->_var['message']['msg_type']; ?>:</b>&nbsp;&nbsp;<font class="f4"><?php echo $this->_var['message']['msg_title']; ?></font> (<?php echo $this->_var['message']['msg_time']; ?>)
          </div>
          <div class="f_r">
          <a href="user.php?act=del_msg&amp;id=<?php echo $this->_var['key']; ?>&amp;order_id=<?php echo $this->_var['message']['order_id']; ?>" title="<?php echo $this->_var['lang']['drop']; ?>" onclick="if (!confirm('<?php echo $this->_var['lang']['confirm_remove_msg']; ?>')) return false;" class="f6"><?php echo $this->_var['lang']['drop']; ?></a>
          </div>
          <div class="msgBottomBorder">
          <?php echo $this->_var['message']['msg_content']; ?>
           <?php if ($this->_var['message']['message_img']): ?>
           <div align="right">
           <a href="data/feedbackimg/<?php echo $this->_var['message']['message_img']; ?>" target="_bank" class="f6"><?php echo $this->_var['lang']['view_upload_file']; ?></a>
           </div>
           <?php endif; ?>
           <br />
           <?php if ($this->_var['message']['re_msg_content']): ?>
           <a href="mailto:<?php echo $this->_var['message']['re_user_email']; ?>" class="f6"><?php echo $this->_var['lang']['shopman_reply']; ?></a> (<?php echo $this->_var['message']['re_msg_time']; ?>)<br />
           <?php echo $this->_var['message']['re_msg_content']; ?>
           <?php endif; ?>
          </div>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          <?php if ($this->_var['message_list']): ?>
          <div class="f_r">
          <?php echo $this->fetch('library/pages.lbi'); ?>
          </div>
          <?php endif; ?>
          <div class="blank"></div>
          <form action="user.php" method="post" enctype="multipart/form-data" name="formMsg" onSubmit="return submitMsg()">
                  <table width="100%" border="0" cellpadding="3">
                    <?php if ($this->_var['order_info']): ?>
                    <tr>
                 
                      <td>   <?php echo $this->_var['lang']['order_number']; ?> 
                      <a href ="<?php echo $this->_var['order_info']['url']; ?>"><img src="themes/xm2013/images/note.gif" /><?php echo $this->_var['order_info']['order_sn']; ?></a>
                      <input name="msg_type" type="hidden" value="5" />
                      <input name="order_id" type="hidden" value="<?php echo $this->_var['order_info']['order_id']; ?>" class="inputBg" />
                      </td>
                    </tr>
                    <?php else: ?>
                    <tr>
                      <td><input name="msg_type" type="radio" value="0" checked="checked" />
                        <?php echo $this->_var['lang']['type']['0']; ?>
                        <input type="radio" name="msg_type" value="1" />
                        <?php echo $this->_var['lang']['type']['1']; ?>
                        <input type="radio" name="msg_type" value="2" />
                        <?php echo $this->_var['lang']['type']['2']; ?>
                        <input type="radio" name="msg_type" value="3" />
                        <?php echo $this->_var['lang']['type']['3']; ?>
                        <input type="radio" name="msg_type" value="4" />
                        <?php echo $this->_var['lang']['type']['4']; ?> </td>
                    </tr>
                    <?php endif; ?>
                    <tr>
                      
                      <td><input name="msg_title" type="text" size="30" placeholder="<?php echo $this->_var['lang']['message_title']; ?>" class="inputBg" /></td>
                    </tr>
                    <tr>
                   
                      <td><textarea name="msg_content" placeholder="<?php echo $this->_var['lang']['message_content']; ?>" cols="50" rows="4" wrap="virtual" class="B_blue"></textarea></td>
                    </tr>
                   
                    <tr>
                   
                      <td><input type="hidden" name="act" value="act_add_message" />
                        <input type="submit" value="<?php echo $this->_var['lang']['submit']; ?>" class="c-btn" />
                      </td>
                    </tr>
                     
                  </table>
                </form>
		 </div>		
         <?php endif; ?>
         
         
          <?php if ($this->_var['action'] == 'comment_list'): ?>
		  
		  
		  <header id="header">
			<div class="c-inav">
				<section>
					<button class="back">
					<span><em></em></span><a href="javascript:history.go(-1)">返回</a>
					</button>
					</section>
					<section>
					<span style="font-size:14px; color:#333; font-weight:normal"><?php echo $this->_var['lang']['label_comment']; ?></span>
				</section>
				<section></section>
			</div>
		  </header>
		  <div class="fullscreen">
 
          <div class="blank"></div>
          <?php $_from = $this->_var['comment_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comment');if (count($_from)):
    foreach ($_from AS $this->_var['comment']):
?>
          <div class="f_l">
          <b><?php if ($this->_var['comment']['comment_type'] == '0'): ?><?php echo $this->_var['lang']['goods_comment']; ?><?php else: ?><?php echo $this->_var['lang']['article_comment']; ?><?php endif; ?>: </b><font class="f4"><?php echo $this->_var['comment']['cmt_name']; ?></font>&nbsp;&nbsp;(<?php echo $this->_var['comment']['formated_add_time']; ?>)
          </div>
          <div class="f_r">
          <a href="user.php?act=del_cmt&amp;id=<?php echo $this->_var['comment']['comment_id']; ?>" title="<?php echo $this->_var['lang']['drop']; ?>" onclick="if (!confirm('<?php echo $this->_var['lang']['confirm_remove_msg']; ?>')) return false;" class="f6"><?php echo $this->_var['lang']['drop']; ?></a>
          </div>
          <div class="msgBottomBorder">
          <?php echo htmlspecialchars($this->_var['comment']['content']); ?><br />
          <?php if ($this->_var['comment']['reply_content']): ?>
          <b><?php echo $this->_var['lang']['reply_comment']; ?>：</b><br />
          <?php echo $this->_var['comment']['reply_content']; ?>
           <?php endif; ?>
          </div>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          <?php if ($this->_var['comment_list']): ?>
          <?php echo $this->fetch('library/pages.lbi'); ?>
          <?php else: ?>
          <?php echo $this->_var['lang']['no_comments']; ?>
          <?php endif; ?>
		  </div>
          <?php endif; ?>
    
 
    
    <?php if ($this->_var['action'] == 'collection_list'): ?> 
  <?php echo $this->smarty_insert_scripts(array('files'=>'transport.js,utils.js')); ?>
  
	<header id="header">
	<div class="c-inav">
		<section>
			<button class="back">
			<span><em></em></span><a href="javascript:history.go(-1)">返回</a>
			</button>
			</section>
			<section>
			<span style="font-size:14px; color:#333; font-weight:normal"><?php echo $this->_var['lang']['label_collection']; ?></span>
		</section>
		<section></section>
	</div>
	</header>
    <div class="blank"></div>
	  <div class="fullscreen">
     <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
      <tr align="center">
        <th width="35%" bgcolor="#ffffff"><?php echo $this->_var['lang']['goods_name']; ?></th>
        <th width="30%" bgcolor="#ffffff"><?php echo $this->_var['lang']['price']; ?></th>
        <th width="35%" bgcolor="#ffffff"><?php echo $this->_var['lang']['handle']; ?></th>
      </tr>
      <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
      <tr>
        <td bgcolor="#ffffff"><a href="<?php echo $this->_var['goods']['url']; ?>" class="f6"><?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?></a></td>
        <td bgcolor="#ffffff"><?php if ($this->_var['goods']['promote_price'] != ""): ?>
          <?php echo $this->_var['lang']['promote_price']; ?><span class="goods-price"><?php echo $this->_var['goods']['promote_price']; ?></span>
          <?php else: ?>
          <?php echo $this->_var['lang']['shop_price']; ?><span class="goods-price"><?php echo $this->_var['goods']['shop_price']; ?></span>
          <?php endif; ?>        </td>
        <td align="center" bgcolor="#ffffff">
          <?php if ($this->_var['goods']['is_attention']): ?>
          <a href="javascript:if (confirm('<?php echo $this->_var['lang']['del_attention']; ?>')) location.href='user.php?act=del_attention&rec_id=<?php echo $this->_var['goods']['rec_id']; ?>'" class="f6"><?php echo $this->_var['lang']['no_attention']; ?></a>
		  <br/>
          <?php else: ?>
          <a href="javascript:if (confirm('<?php echo $this->_var['lang']['add_to_attention']; ?>')) location.href='user.php?act=add_to_attention&rec_id=<?php echo $this->_var['goods']['rec_id']; ?>'" class="f6"><?php echo $this->_var['lang']['attention']; ?></a>
		  <br/>
          <?php endif; ?>
           <a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" class="f6"><?php echo $this->_var['lang']['add_to_cart']; ?></a> <br/><a href="javascript:if (confirm('<?php echo $this->_var['lang']['remove_collection_confirm']; ?>')) location.href='user.php?act=delete_collection&collection_id=<?php echo $this->_var['goods']['rec_id']; ?>'" class="f6"><?php echo $this->_var['lang']['drop']; ?></a>
        </td>
      </tr>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </table>
	<div class="blank"></div>
    <?php echo $this->fetch('library/pages.lbi'); ?>
 </div>

 
  <?php endif; ?>
    
    
    <?php if ($this->_var['action'] == 'booking_list'): ?>
	<header id="header">
	<div class="c-inav">
		<section>
			<button class="back">
			<span><em></em></span><a href="javascript:history.go(-1)">返回</a>
			</button>
			</section>
			<section>
			<span style="font-size:14px; color:#333; font-weight:normal"><?php echo $this->_var['lang']['label_booking']; ?></span>
		</section>
		<section></section>
	</div>
	</header>
    <div class="blank"></div>
	<div class="fullscreen">
     <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
      <tr align="center">
        <td width="20%" bgcolor="#ffffff">名称</td>
        <td width="20%" bgcolor="#ffffff">数量</td>
        <td width="20%" bgcolor="#ffffff"><?php echo $this->_var['lang']['booking_time']; ?></td>
        <td width="25%" bgcolor="#ffffff">备注</td>
        <td width="15%" bgcolor="#ffffff"><?php echo $this->_var['lang']['handle']; ?></td>
      </tr>
      <?php $_from = $this->_var['booking_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
      <tr>
        <td align="center" bgcolor="#ffffff"><a href="<?php echo $this->_var['item']['url']; ?>" target="_blank" class="f6"><?php echo $this->_var['item']['goods_name']; ?></a></td>
        <td align="center" bgcolor="#ffffff"><?php echo $this->_var['item']['goods_number']; ?></td>
        <td align="center" bgcolor="#ffffff"><?php echo $this->_var['item']['booking_time']; ?></td>
        <td align="center" bgcolor="#ffffff"><?php echo $this->_var['item']['dispose_note']; ?></td>
        <td align="center" bgcolor="#ffffff"><a href="javascript:if (confirm('<?php echo $this->_var['lang']['confirm_remove_account']; ?>')) location.href='user.php?act=act_del_booking&id=<?php echo $this->_var['item']['rec_id']; ?>'" class="f6"><?php echo $this->_var['lang']['drop']; ?></a> </td>
      </tr>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </table>
	</div>
    <?php endif; ?>
    
   
  <?php if ($this->_var['action'] == 'add_booking'): ?>
	<header id="header">
	<div class="c-inav">
		<section>
			<button class="back">
			<span><em></em></span><a href="javascript:history.go(-1)">返回</a>
			</button>
			</section>
			<section>
			<span style="font-size:14px; color:#333; font-weight:normal">{<?php echo $this->_var['lang']['add']; ?><?php echo $this->_var['lang']['label_booking']; ?></span>
		</section>
		<section></section>
	</div>
	</header>  <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
    <script type="text/javascript">
    <?php $_from = $this->_var['lang']['booking_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
    var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </script>
   <div class="fullscreen">
    <div class="blank"></div>
     <form action="user.php" method="post" name="formBooking" onsubmit="return addBooking();">
     <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
      <tr>
        <td align="right" bgcolor="#ffffff"><?php echo $this->_var['lang']['booking_goods_name']; ?></td>
        <td bgcolor="#ffffff"><?php echo $this->_var['info']['goods_name']; ?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><?php echo $this->_var['lang']['booking_amount']; ?>:</td>
        <td bgcolor="#ffffff"><input name="number" type="text" value="<?php echo $this->_var['info']['goods_number']; ?>" class="inputBg" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><?php echo $this->_var['lang']['describe']; ?>:</td>
        <td bgcolor="#ffffff"><textarea name="desc" cols="50" rows="5" wrap="virtual" class="B_blue"><?php echo $this->_var['goods_attr']; ?><?php echo htmlspecialchars($this->_var['info']['goods_desc']); ?></textarea>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><?php echo $this->_var['lang']['contact_username']; ?>:</td>
        <td bgcolor="#ffffff"><input name="linkman" type="text" value="<?php echo htmlspecialchars($this->_var['info']['consignee']); ?>" size="25"  class="inputBg"/>
        </td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><?php echo $this->_var['lang']['email_address']; ?>:</td>
        <td bgcolor="#ffffff"><input name="email" type="text" value="<?php echo htmlspecialchars($this->_var['info']['email']); ?>" size="25" class="inputBg" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><?php echo $this->_var['lang']['contact_phone']; ?>:</td>
        <td bgcolor="#ffffff"><input name="tel" type="text" value="<?php echo htmlspecialchars($this->_var['info']['tel']); ?>" size="25" class="inputBg" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff"><input name="act" type="hidden" value="act_add_booking" />
          <input name="id" type="hidden" value="<?php echo $this->_var['info']['id']; ?>" />
          <input name="rec_id" type="hidden" value="<?php echo $this->_var['info']['rec_id']; ?>" />
          <input type="submit" name="submit" class="submit" value="<?php echo $this->_var['lang']['submit_booking_goods']; ?>" />
          <input type="reset" name="reset" class="reset" value="<?php echo $this->_var['lang']['button_reset']; ?>" />
        </td>
      </tr>
    </table>
     </form>
	 </div>
    <?php endif; ?>
    
    <?php if ($this->_var['affiliate']['on'] == 1): ?>
     <?php if ($this->_var['action'] == 'affiliate'): ?>
      <?php if (! $this->_var['goodsid'] || $this->_var['goodsid'] == 0): ?>
	 <header id="header">
	 <div class="c-inav">
		<section>
			<button class="back">
			<span><em></em></span><a href="javascript:history.go(-1)">返回</a>
			</button>
			</section>
			<section>
			<span style="font-size:14px; color:#333; font-weight:normal">我的推荐</span>
		</section>
		<section></section>
	 </div>
	 </header> 
	 <div class="blank"></div>
	 <div class="fullscreen">
      <h5><span><?php echo $this->_var['lang']['affiliate_detail']; ?></span></h5>
      <div class="blank"></div>
	   <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#dddddd">
	    <tr align="left">
      <td bgcolor="#ffffff"><?php echo $this->_var['affiliate_intro']; ?></td>
	   </tr>
  </table>
      
    <?php if ($this->_var['affiliate']['config']['separate_by'] == 0): ?>
    
    <div class="blank"></div>
    <h5><span><a name="myrecommend" style="color:#333"><?php echo $this->_var['lang']['affiliate_member']; ?></a></span></h5>
    <div class="blank"></div>
   <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
    <tr align="center">
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_lever']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_num']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['level_point']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['level_money']; ?></td>
    </tr>
    <?php $_from = $this->_var['affdb']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('level', 'val');$this->_foreach['affdb'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['affdb']['total'] > 0):
    foreach ($_from AS $this->_var['level'] => $this->_var['val']):
        $this->_foreach['affdb']['iteration']++;
?>
    <tr align="center">
      <td bgcolor="#ffffff"><?php echo $this->_var['level']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['val']['num']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['val']['point']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['val']['money']; ?></td>
    </tr>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  </table>

<?php else: ?>


<?php endif; ?>

<div class="blank"></div>
<h5><span>分成规则</span></h5>
<div class="blank"></div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
    <tr align="center">
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['order_number']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_money']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_point']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_mode']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_status']; ?></td>
    </tr>
    <?php $_from = $this->_var['logdb']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'val');$this->_foreach['logdb'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['logdb']['total'] > 0):
    foreach ($_from AS $this->_var['val']):
        $this->_foreach['logdb']['iteration']++;
?>
    <tr align="center">
      <td bgcolor="#ffffff"><?php echo $this->_var['val']['order_sn']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['val']['money']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['val']['point']; ?></td>
      <td bgcolor="#ffffff"><?php if ($this->_var['val']['separate_type'] == 1 || $this->_var['val']['separate_type'] === 0): ?><?php echo $this->_var['lang']['affiliate_type'][$this->_var['val']['separate_type']]; ?><?php else: ?><?php echo $this->_var['lang']['affiliate_type'][$this->_var['affiliate_type']]; ?><?php endif; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_stats'][$this->_var['val']['is_separate']]; ?></td>
    </tr>
    <?php endforeach; else: ?>
<tr><td colspan="5" align="center" bgcolor="#ffffff"><?php echo $this->_var['lang']['no_records']; ?></td>
</tr>
    <?php endif; unset($_from); ?><?php $this->pop_vars();; ?>
    <?php if ($this->_var['logdb']): ?>
    <tr>
    <td colspan="5" bgcolor="#ffffff">
 <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
  <div id="pager"> <?php echo $this->_var['lang']['pager_1']; ?><?php echo $this->_var['pager']['record_count']; ?><?php echo $this->_var['lang']['pager_2']; ?><?php echo $this->_var['lang']['pager_3']; ?><?php echo $this->_var['pager']['page_count']; ?><?php echo $this->_var['lang']['pager_4']; ?> <span> <a href="<?php echo $this->_var['pager']['page_first']; ?>"><?php echo $this->_var['lang']['page_first']; ?></a> <a href="<?php echo $this->_var['pager']['page_prev']; ?>"><?php echo $this->_var['lang']['page_prev']; ?></a> <a href="<?php echo $this->_var['pager']['page_next']; ?>"><?php echo $this->_var['lang']['page_next']; ?></a> <a href="<?php echo $this->_var['pager']['page_last']; ?>"><?php echo $this->_var['lang']['page_last']; ?></a> </span>
    <select name="page" id="page" onchange="selectPage(this)">
    <?php echo $this->html_options(array('options'=>$this->_var['pager']['array'],'selected'=>$this->_var['pager']['page'])); ?>
    </select>
    <input type="hidden" name="act" value="affiliate" />
  </div>
</form>
    </td>
    </tr>
    <?php endif; ?>
  </table>
 <script type="text/javascript" language="JavaScript">
<!--

function selectPage(sel)
{
  sel.form.submit();
}

//-->
</script>


<div class="blank"></div>
<h5><span><?php echo $this->_var['lang']['affiliate_code']; ?></span></h5>
<div class="blank"></div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
<tr>
<td bgcolor="#ffffff"><a href="<?php echo $this->_var['shopurl']; ?>?u=<?php echo $this->_var['userid']; ?>" target="_blank" class="f6"><?php echo $this->_var['shopname']; ?></a> </td>
</tr>
<tr>
  <td bgcolor="#ffffff">
  <textarea onclick="this.select();" name="" cols="" rows=""  class="B_blue" style="font-size:12px; height:40px;">
  &lt;a href=&quot;<?php echo $this->_var['shopurl']; ?>?u=<?php echo $this->_var['userid']; ?>&quot; target=&quot;_blank&quot;&gt;<?php echo $this->_var['shopname']; ?>&lt;/a&gt;
  </textarea>
 <br/>
  <?php echo $this->_var['lang']['recommend_webcode']; ?></td>
  </tr>
<tr>
<td bgcolor="#ffffff"><a href="<?php echo $this->_var['shopurl']; ?>?u=<?php echo $this->_var['userid']; ?>" target="_blank" title="<?php echo $this->_var['shopname']; ?>"  class="f6"><img src="<?php echo $this->_var['shopurl']; ?><?php echo $this->_var['logosrc']; ?>" /></a> </td>
</tr>
<tr>
  <td bgcolor="#ffffff">
  
  
   
    <textarea onclick="this.select();" name="" cols="" rows=""  class="B_blue" style="font-size:12px; height:60px;">
 &lt;a href=&quot;<?php echo $this->_var['shopurl']; ?>?u=<?php echo $this->_var['userid']; ?>&quot; target=&quot;_blank&quot; title=&quot;<?php echo $this->_var['shopname']; ?>&quot;&gt;&lt;img src=&quot;<?php echo $this->_var['shopurl']; ?><?php echo $this->_var['logosrc']; ?>&quot; /&gt;&lt;/a&gt;
  </textarea>
   <br/>
  <?php echo $this->_var['lang']['recommend_webcode']; ?>  </td>
  </tr>
<tr>
<td bgcolor="#ffffff"><a href="<?php echo $this->_var['shopurl']; ?>?u=<?php echo $this->_var['userid']; ?>" target="_blank" class="f6"><?php echo $this->_var['shopname']; ?></a> </td>
</tr>
<tr>
  <td bgcolor="#ffffff"> 
  
     <textarea onclick="this.select();" name="" cols="" rows=""  class="B_blue" style="font-size:12px; height:40px;">
[url=<?php echo $this->_var['shopurl']; ?>?u=<?php echo $this->_var['userid']; ?>]<?php echo $this->_var['shopname']; ?>[/url]
  </textarea>
  <br/>
   <?php echo $this->_var['lang']['recommend_bbscode']; ?></td>
  </tr>
<tr>
<td bgcolor="#ffffff"><a href="<?php echo $this->_var['shopurl']; ?>?u=<?php echo $this->_var['userid']; ?>" target="_blank" title="<?php echo $this->_var['shopname']; ?>" class="f6"><img src="<?php echo $this->_var['shopurl']; ?><?php echo $this->_var['logosrc']; ?>" /></a> </td>
</tr>
<tr>
  <td bgcolor="#ffffff"> 
  
     <textarea onclick="this.select();" name="" cols="" rows=""  class="B_blue" style="font-size:12px; height:40px;">
[url=<?php echo $this->_var['shopurl']; ?>?u=<?php echo $this->_var['userid']; ?>][img]<?php echo $this->_var['shopurl']; ?><?php echo $this->_var['logosrc']; ?>[/img][/url]
  </textarea>
    <br/>
  <?php echo $this->_var['lang']['recommend_bbscode']; ?></td>
  </tr>
</table>

        <?php else: ?>
        
        <style type="text/css">
        .types a{text-decoration:none; color:#006bd0;}
        </style>
    <h5><span><?php echo $this->_var['lang']['affiliate_code']; ?></span></h5>
    <div class="blank"></div>
  <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
    <tr align="center">
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_view']; ?></td>
      <td bgcolor="#ffffff"><?php echo $this->_var['lang']['affiliate_code']; ?></td>
    </tr>
    <?php $_from = $this->_var['types']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'val');$this->_foreach['types'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['types']['total'] > 0):
    foreach ($_from AS $this->_var['val']):
        $this->_foreach['types']['iteration']++;
?>
    <tr align="center">
      <td bgcolor="#ffffff" class="types"><script src="<?php echo $this->_var['shopurl']; ?>affiliate.php?charset=<?php echo $this->_var['ecs_charset']; ?>&gid=<?php echo $this->_var['goodsid']; ?>&u=<?php echo $this->_var['userid']; ?>&type=<?php echo $this->_var['val']; ?>"></script></td>
      <td bgcolor="#ffffff">javascript <?php echo $this->_var['lang']['affiliate_codetype']; ?><br>
        <textarea cols=30 rows=2 id="txt<?php echo $this->_foreach['types']['iteration']; ?>" style="border:1px solid #ccc;"><script src="<?php echo $this->_var['shopurl']; ?>affiliate.php?charset=<?php echo $this->_var['ecs_charset']; ?>&gid=<?php echo $this->_var['goodsid']; ?>&u=<?php echo $this->_var['userid']; ?>&type=<?php echo $this->_var['val']; ?>"></script></textarea>[<a href="#" title="Copy To Clipboard" onClick="Javascript:copyToClipboard(document.getElementById('txt<?php echo $this->_foreach['types']['iteration']; ?>').value);alert('<?php echo $this->_var['lang']['copy_to_clipboard']; ?>');"  class="f6"><?php echo $this->_var['lang']['code_copy']; ?></a>]
<br>iframe <?php echo $this->_var['lang']['affiliate_codetype']; ?><br><textarea cols=30 rows=2 id="txt<?php echo $this->_foreach['types']['iteration']; ?>_iframe"  style="border:1px solid #ccc;"><iframe width="250" height="270" src="<?php echo $this->_var['shopurl']; ?>affiliate.php?charset=<?php echo $this->_var['ecs_charset']; ?>&gid=<?php echo $this->_var['goodsid']; ?>&u=<?php echo $this->_var['userid']; ?>&type=<?php echo $this->_var['val']; ?>&display_mode=iframe" frameborder="0" scrolling="no"></iframe></textarea>[<a href="#" title="Copy To Clipboard" onClick="Javascript:copyToClipboard(document.getElementById('txt<?php echo $this->_foreach['types']['iteration']; ?>_iframe').value);alert('<?php echo $this->_var['lang']['copy_to_clipboard']; ?>');" class="f6"><?php echo $this->_var['lang']['code_copy']; ?></a>]
<br /><?php echo $this->_var['lang']['bbs']; ?>UBB <?php echo $this->_var['lang']['affiliate_codetype']; ?><br /><textarea cols=30 rows=2 id="txt<?php echo $this->_foreach['types']['iteration']; ?>_ubb"  style="border:1px solid #ccc;"><?php if ($this->_var['val'] != 5): ?>[url=<?php echo $this->_var['shopurl']; ?>goods.php?id=<?php echo $this->_var['goodsid']; ?>&u=<?php echo $this->_var['userid']; ?>][img]<?php if ($this->_var['val'] < 3): ?><?php echo $this->_var['goods']['goods_thumb']; ?><?php else: ?><?php echo $this->_var['goods']['goods_img']; ?><?php endif; ?>[/img][/url]<?php endif; ?>

[url=<?php echo $this->_var['shopurl']; ?>goods.php?id=<?php echo $this->_var['goodsid']; ?>&u=<?php echo $this->_var['userid']; ?>][b]<?php echo $this->_var['goods']['goods_name']; ?>[/b][/url]
<?php if ($this->_var['val'] != 1 && $this->_var['val'] != 3): ?>[s]<?php echo $this->_var['goods']['market_price']; ?>[/s]<?php endif; ?> [color=red]<?php echo $this->_var['goods']['shop_price']; ?>[/color]</textarea>[<a href="#" title="Copy To Clipboard" onClick="Javascript:copyToClipboard(document.getElementById('txt<?php echo $this->_foreach['types']['iteration']; ?>_ubb').value);alert('<?php echo $this->_var['lang']['copy_to_clipboard']; ?>');"  class="f6"><?php echo $this->_var['lang']['code_copy']; ?></a>]
<?php if ($this->_var['val'] == 5): ?><br /><?php echo $this->_var['lang']['im_code']; ?> <?php echo $this->_var['lang']['affiliate_codetype']; ?><br /><textarea cols=30 rows=2 id="txt<?php echo $this->_foreach['types']['iteration']; ?>_txt"  style="border:1px solid #ccc;"><?php echo $this->_var['lang']['show_good_to_you']; ?> <?php echo $this->_var['goods']['goods_name']; ?>

<?php echo $this->_var['shopurl']; ?>goods.php?id=<?php echo $this->_var['goodsid']; ?>&u=<?php echo $this->_var['userid']; ?></textarea>[<a href="#" title="Copy To Clipboard" onClick="Javascript:copyToClipboard(document.getElementById('txt<?php echo $this->_foreach['types']['iteration']; ?>_txt').value);alert('<?php echo $this->_var['lang']['copy_to_clipboard']; ?>');"  class="f6"><?php echo $this->_var['lang']['code_copy']; ?></a>]<?php endif; ?></td>
    </tr>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  </table>
<script language="Javascript">
copyToClipboard = function(txt)
{
 if(window.clipboardData)
 {
    window.clipboardData.clearData();
    window.clipboardData.setData("Text", txt);
 }
 else if(navigator.userAgent.indexOf("Opera") != -1)
 {
   //暂时无方法:-(
 }
 else if (window.netscape)
 {
  try
  {
    netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
  }
  catch (e)
  {
    alert("<?php echo $this->_var['lang']['firefox_copy_alert']; ?>");
    return false;
  }
  var clip = Components.classes['@mozilla.org/widget/clipboard;1'].createInstance(Components.interfaces.nsIClipboard);
  if (!clip)
    return;
  var trans = Components.classes['@mozilla.org/widget/transferable;1'].createInstance(Components.interfaces.nsITransferable);
  if (!trans)
    return;
  trans.addDataFlavor('text/unicode');
  var str = new Object();
  var len = new Object();
  var str = Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString);
  var copytext = txt;
  str.data = copytext;
  trans.setTransferData("text/unicode",str,copytext.length*2);
  var clipid = Components.interfaces.nsIClipboard;
  if (!clip)
  return false;
  clip.setData(trans,null,clipid.kGlobalClipboard);
 }
}
                </script> </div>
            
            <?php endif; ?>
        <?php endif; ?>
 
    <?php endif; ?>

  
  
      
<?php echo $this->fetch('library/page_footer.lbi'); ?>
</div>
</div>



<div style="width:1px; height:1px; overflow:hidden"><?php $_from = $this->_var['lang']['p_y']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'pv');if (count($_from)):
    foreach ($_from AS $this->_var['pv']):
?><?php echo $this->_var['pv']; ?><?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?></div>



</body>
<script type="text/javascript">
<?php $_from = $this->_var['lang']['clips_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</script>
</html>
