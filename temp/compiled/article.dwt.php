<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<title><?php echo $this->_var['page_title']; ?></title>
<link rel="shortcut icon" href="favicon.ico"/>
<link rel="icon" href="animated_favicon.gif" type="image/gif"/>
<link href="themes/xm2013/style.css" rel="stylesheet" type="text/css"/>
<link href="themes/xm2013/base.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="themes/xm2013/js/common.js"></script>
</head>
<body><?php echo $this->fetch('library/page_header.lbi'); ?><div class="clear"></div>
<div class="block">
  <div id="ur_here"></div>
  <div id="container" class="support">
    <div class="support-title">
      <h1>服务支持</h1>
    </div>
    <div class="aside">
      <div class="online_service"><a target="_blank" href="#">进入在线客服</a></div>
      <dl class="navhelp">
	  <?php $_from = get_shop_help(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'help_cat');if (count($_from)):
    foreach ($_from AS $this->_var['help_cat']):
?>
        <dt><?php echo $this->_var['help_cat']['cat_name']; ?></dt>
		 <?php $_from = $this->_var['help_cat']['article']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
        <dd><a class="current1" target="_self" href="<?php echo $this->_var['item']['url']; ?>" title="<?php echo $this->_var['item']['short_title']; ?>"><?php echo $this->_var['item']['short_title']; ?></a></dd>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>	

      </dl>
    </div>
    <div class="mainr xm-box">
      <div class="provision">
        <div class="section">
          <h2 class="tit"><?php echo htmlspecialchars($this->_var['article']['title']); ?></h2>
        </div>
	<div>
         <?php if ($this->_var['article']['content']): ?>
          <?php echo $this->_var['article']['content']; ?>
         <?php endif; ?>
	</div>
      </div>
    </div>
  </div>
</div>
<div class="blank5"></div><?php echo $this->fetch('library/page_footer.lbi'); ?></body>

<script type="text/javascript">
var time_hide_all_cat = null;
if (document.getElementById("div_all_cat").className == 'showlist snone'){
   document.getElementById("btnnav").onmouseover = show_all_cat;
   
   document.getElementById("btnnav").onmouseout = function(e){
      time_hide_all_cat = setTimeout("hide_all_cat()",100);
   }
   
   document.getElementById("div_all_cat").onmouseover = show_all_cat;
   
   document.getElementById("div_all_cat").onmouseout = hide_all_cat;
}

function hide_all_cat(){
   document.getElementById("div_all_cat").className = 'showlist snone';
}

function show_all_cat(){
   clearTimeout(time_hide_all_cat);
   document.getElementById("div_all_cat").className = 'showlist';
}

</script>

</html>
