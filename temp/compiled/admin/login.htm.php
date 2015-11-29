<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $this->_var['lang']['cp_home']; ?><?php if ($this->_var['ur_here']): ?> - <?php echo $this->_var['ur_here']; ?><?php endif; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="styles/generalog.css" rel="stylesheet" type="text/css" />
<link href="styles/main.css" rel="stylesheet" type="text/css" />

<style type="text/css">
body {
  color: white; margin:0; padding:0;
}
</style>

<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,validator.js')); ?>
<script language="JavaScript">
<!--
// 这里把JS用到的所有语言都赋值到这里
<?php $_from = $this->_var['lang']['js_languages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

if (window.parent != window)
{
  window.top.location.href = location.href;
}

//-->
</script>
</head>
<body style="background: url(images/admin_bg.png)">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top colSpan=2>
      <TABLE height=600 cellSpacing=0 cellPadding=0 width=1000 align=center border=0>
        <TBODY>
        <TR>
          <TD vAlign=top style="background:url(images/login.png) no-repeat 141px 0;">
		  <TABLE height=auto cellSpacing=0 cellPadding=0 width=1000 border=0>
              <TBODY>
              <TR>
                <TD width=389 height=292>&nbsp;</TD>
                <TD width=347>&nbsp;</TD>
                <TD width=264>&nbsp;</TD></TR>
              <TR>
                <TD height=195>&nbsp;</TD>
                <TD vAlign=top>
<form method="post" action="privilege.php" name='theForm' onsubmit="return validate()">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD height=20><SPAN class=searchbar><INPUT class=login_input type="text" name="username"> </SPAN></TD></TR>
                    <TR>
                      <TD>&nbsp;</TD></TR>
                    <TR>
                      <TD height=20><SPAN class=searchbar><INPUT class=password_input type="password" name="password"> </SPAN></TD></TR></TBODY></TABLE>

                  <TABLE height=134 cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD colSpan=2 height=26><input type="checkbox" checked="checked" style="display:none" value="1" name="remember" id="remember" /><div style="display:none"><a href="javascript:void();" style="color:white; font-family:'Microsoft YaHei';margin-top:-2px;">保存这次登陆</a></div></TD></TR>
                    <TR>
                      <TD colSpan=2><SPAN class=searchbar><input type="submit" value="" class=login_button />
                        </SPAN></TD></TR>
                    <TR>
                      <TD colSpan=2 height=14><div style="float:left;margin-left:173px;margin-top:30px;"><a href="get_password.php?act=forget_pwd" style="color:#FFFFFF;">找回登陆密码</a></div></TD></TR></TBODY></TABLE>
					  </TD><TD>&nbsp;</TD></TR>
                    <TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
	<input type="hidden" name="act" value="signin" />
</form>
</TD></TR>
  <TR>
    <TD vAlign=top colSpan=2>&nbsp;</TD></TR></TBODY></TABLE>
<script language="JavaScript">
<!--
  document.forms['theForm'].elements['username'].focus();
  
  /**
   * 检查表单输入的内容
   */
  function validate()
  {
    var validator = new Validator('theForm');
    validator.required('username', user_name_empty);
    //validator.required('password', password_empty);
    if (document.forms['theForm'].elements['captcha'])
    {
      validator.required('captcha', captcha_empty);
    }
    return validator.passed();
  }
  
//-->
</script>
</body>