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
<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,global.js,compare.js')); ?>
<script>
var _mvq = _mvq || [];
_mvq.push(['$setAccount', 'm-29971-0']);
_mvq.push(['$setGeneral', 'branddetail', '', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_name']); ?>', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_id']); ?>']);
_mvq.push(['$logConversion']);
_mvq.push(['$addBrand', '<?php echo htmlspecialchars($this->_var['brand']['brand_name']); ?>', '<?php echo htmlspecialchars($this->_var['brand']['brand_id']); ?>']);
_mvq.push(['$logData']);
</script>
							
</head>
<body><?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="block box">
 <div id="ur_here"><?php echo $this->fetch('library/ur_here.lbi'); ?></div>
</div>

<div class="blank"></div>
<div class="block clearfix">
  
  <div class="AreaL">



    <?php echo $this->fetch('library/history.lbi'); ?></div>
  
  
  <div class="AreaR">
    <div class="box">
     <div class="box_1">
      <h3><span><?php echo $this->_var['brand']['brand_name']; ?></span></h3>
      <div class="boxCenterList">
        <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
        <tr>
          <td bgcolor="#ffffff" width="200" align="center" valign="middle">
          <div style="width:200px; overflow:hidden;">
          <?php if ($this->_var['brand']['brand_logo']): ?>
            <img src="data/brandlogo/<?php echo $this->_var['brand']['brand_logo']; ?>" />
            <?php endif; ?>
          </div>
          </td>
          <td bgcolor="#ffffff">
          <?php echo nl2br($this->_var['brand']['brand_desc']); ?><br />
            <?php if ($this->_var['brand']['site_url']): ?>
            <?php echo $this->_var['lang']['official_site']; ?> <a href="<?php echo $this->_var['brand']['site_url']; ?>" target="_blank" class="f6"><?php echo $this->_var['brand']['site_url']; ?></a><br />
            <?php endif; ?>
            <?php echo $this->_var['lang']['brand_category']; ?><br />
            <div class="brandCategoryA">
              <?php $_from = $this->_var['brand_cat_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');if (count($_from)):
    foreach ($_from AS $this->_var['cat']):
?>
            <a href="<?php echo $this->_var['cat']['url']; ?>" class="f6"><?php echo htmlspecialchars($this->_var['cat']['cat_name']); ?> <?php if ($this->_var['cat']['goods_count']): ?>(<?php echo $this->_var['cat']['goods_count']; ?>)<?php endif; ?></a>
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </div>  
         </td>
        </tr>
      </table>
      </div>
     </div>
    </div>
    <div class="blank5"></div>
  

  <div class="xm-box category-list-box"><?php echo $this->fetch('library/list.lbi'); ?><?php echo $this->fetch('library/pages2.lbi'); ?></div>



  </div>  
  
</div>
<div class="blank5"></div>



<div class="blank"></div><?php echo $this->fetch('library/page_footer.lbi'); ?></body>

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
