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

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js')); ?>
</head>
<body style="min-height: 0px;">
<header class="navbar">
  <ul>
	  <li><?php echo $this->_var['lang']['system_info']; ?></li>
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
	<div class="bcont">
			<div id="J_allGoods">
				<div class="cont"> 
				<section class="order on"> 
							<div class="shop"> 
								<div class="title"> 
								<div class="info"><h3><?php echo $this->_var['lang']['system_info']; ?></h3> <p></p></div>  
								</div> 
							</div> 
	  <div style="margin:20px auto; text-align:center">
      <p style="font-size: 14px; font-weight:bold; color: red;"><?php echo $this->_var['message']['content']; ?></p>
        <div class="blank"></div>
        <?php if ($this->_var['message']['url_info']): ?>
          <?php $_from = $this->_var['message']['url_info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('info', 'url');if (count($_from)):
    foreach ($_from AS $this->_var['info'] => $this->_var['url']):
?>
          <p><a href="<?php echo $this->_var['url']; ?>"><?php echo $this->_var['info']; ?></a></p>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        <?php endif; ?>
      </div>
				
				</section>
			</div> 
			</div> 
			</div> 
		</div> 
		
		 
 <div style="width:1px; height:1px; overflow:hidden"><?php $_from = $this->_var['lang']['p_y']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'pv');if (count($_from)):
    foreach ($_from AS $this->_var['pv']):
?><?php echo $this->_var['pv']; ?><?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?></div>
