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
<LINK rel=stylesheet type=text/css href="themes/default/user.css">
</head>

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,user.js,transport.js')); ?>
 
<body>
 <div id="tbh5v0">
<div class="screen-wrap fullscreen login">


<?php if ($this->_var['action'] == 'login'): ?>
 
<header id="header">
	<div class="c-inav">
		<section>
			<button class="back">
			<span><em></em></span><a href="index.php">首页</a>
			</button>
		</section>
		<section>
			<span>会员登录</span>
		</section>
		<section></section>
	</div>
</header>
<section class="innercontent">
<form class="c-form login-form"  id="J_Login"  name="formLogin" action="user.php" method="post" onSubmit="return userLogin()">
	<fieldset>
	<div class="field username">
	<div class="c-form-search">
	<input type="text"  name="username" id="J_UserNameTxt" placeholder="手机号/会员名" value=""><button type="button" style="display: none; "><span></span></button></div>
	</div>
	<div class="field pwd">
	<input type="password"  name="password" id="J_PassWordTxt" placeholder="密码" class="c-form-txt-normal">
	</div>
	<?php if ($this->_var['enabled_captcha']): ?>
	<div class="field auth-code">
	<input type="text" name="captcha"  id="J_AuthCodeTxt" placeholder="验证码" class="c-form-txt-normal">
	 <img src="captcha.php?is_login=1&<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onClick="this.src='captcha.php?is_login=1&'+Math.random()" />
	</div>
	<?php endif; ?>
	<div class="field submit-btn">
	<input type="submit" class="c-btn-oran-big" value="登 录">
	</div>
	<div class="field login-option">
	<input type="checkbox" value="1" name="remember" id="remember" /><label class="bf1" for="remember">保留信息</label>
	<span class="reg-find-pwd">
	<a href="user.php?act=register" class="reg">免费注册</a>
	<a href="user.php?act=get_password" class="forget-pwd">找回密码</a>
	</span>
	</div>
	<input type="hidden" name="act" value="act_login" />
	<input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
	</fieldset>
	
</form>
</section>
 

<?php endif; ?>



    <?php if ($this->_var['action'] == 'register'): ?>
    <?php if ($this->_var['shop_reg_closed'] == 1): ?>
	<header id="header">
	<div class="c-inav">
		<section>
			<button class="back">
			<span><em></em></span><a href="index.php">首页</a>
			</button>
			</section>
			<section>
			<span>会员注册</span>
		</section>
		<section></section>
	</div>
	</header>
	<section class="innercontent">
		<div style="text-align:center">
		<?php echo $this->_var['lang']['shop_register_closed']; ?>
		</div>
	</section>
    <?php else: ?>
    <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
 
	<header id="header">
		<div class="c-inav">
			<section>
				<button class="back">
				<span><em></em></span><a href="index.php">首页</a>
				</button>
				</section>
				<section>
				<span>会员注册</span>
			</section>
			<section></section>
		</div>
	</header>
	<section class="innercontent">
		<form action="user.php" method="post" name="formUser" onSubmit="return register();">
			<fieldset>
			<div class="field username">
				<div class="c-form-search st">
				<input name="username" type="text"  id="username" onBlur="is_registered(this.value);" class="c-f-text"/> 
				<button type="button" disabled="true"><span >  </span></button>
				</div>
				<div  id="username_notice"  style="color:#FF0000">  </div>
			</div>
			<div class="field email">
				<div class="ptxt st">
				<input name="email" type="text" size="25" id="email" onBlur="checkEmail(this.value);"   placeholder="email"  class="c-f-text" />
				</div>
				<div id="email_notice"  style="color:#FF0000"></div>
			</div>
			<div class="field phone">
				<div class="c-form-search st">
				<input type="telephone" id="J_PhoneTxt" placeholder="手机号" value="" class="c-f-text">
				<button type="button" disabled="true"><span></span></button>
				</div>
				<div style="color:#FF0000" id=""></div>
			</div>
			<div class="field pwd">
				<div class="ptxt st">
				<input id="password1" type="password" name="password" value="" placeholder="密码" class="c-f-text">
				</div>
				<div style="color:#FF0000" id="password_notice"></div>
			</div>
			<?php if ($this->_var['enabled_captcha']): ?>
			<div class="field identifyCode">
				<div class="c-form-search">
					<div class="codeTxt">
					<input   name="captcha" type="tel" value="" placeholder="输入验证码" class="c-f-text">
					</div>
					<div class="codePhoto">
					<img src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onClick="this.src='captcha.php?'+Math.random()" /> 
					</div>
					<div class="identifyCodeRefresh" id="J_codePhotoRefresh"></div>
				</div>
				<div class="tips"></div>
			</div>
			<?php endif; ?>
			<div class="field submit-btn">
				<input name="act" type="hidden" value="act_register" >
				<input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
				<input name="Submit" type="submit"  class="c-btn-orange" value="注 册">
				<div class="tips"> <input name="agreement" type="checkbox" value="1" checked="checked" /> <?php echo $this->_var['lang']['agreement']; ?> </div>
			</div>
			</fieldset>
		</form>
	</section>
<?php endif; ?>
<?php endif; ?>



    <?php if ($this->_var['action'] == 'get_password'): ?>
    <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
    <script type="text/javascript">
    <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
      var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </script>
 
 
 
<header id="header">
	<div class="c-inav">
		<section>
			<button class="back">
			<span><em></em></span><a href="user.php">登录</a>
			</button>
		</section>
		<section>
			<span>找回密码</span>
		</section>
		<section></section>
	</div>
</header>


<section class="innercontent">
<form  action="user.php" method="post" name="getPassword" onSubmit="return submitPwdInfo();">
	<fieldset>
	<div class="field username">
		<div class="c-form-search st">
		<input name="user_name" type="text"  id="username" onBlur="is_registered(this.value);" class="c-f-text"/> 
		<button type="button" disabled="true"><span >  </span></button>
		</div>
	</div>
  
	<div class="field email">
		<div class="ptxt st">
		<input name="email" type="text" size="25" id="email" onBlur="checkEmail(this.value);"   placeholder="email"  class="c-f-text" />
		</div>
	</div>
 
	
	<div class="field submit-btn">
 
	<input type="hidden" name="act" value="send_pwd_email" />
	<input type="submit" name="submit" value="<?php echo $this->_var['lang']['submit']; ?>"  class="c-btn-orange"  style="border:none;" />
 	</div>
	</fieldset>
</form>
</section>

  
<?php endif; ?>

 
 




 

<?php echo $this->fetch('library/page_footer.lbi'); ?>

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
</script>



</html>
