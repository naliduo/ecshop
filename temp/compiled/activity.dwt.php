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
</head>
<body><?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="block box">
 <div id="ur_here"><?php echo $this->fetch('library/ur_here.lbi'); ?></div>
</div>

<div class="blank"></div>
<div class="block">
  <h5><span><?php echo $this->_var['lang']['activity_list']; ?></span></h5>
  <div class="blank"></div>
   <?php $_from = $this->_var['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'val');if (count($_from)):
    foreach ($_from AS $this->_var['val']):
?>
  <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
    <tr>
      <th bgcolor="#ffffff"><?php echo $this->_var['lang']['label_act_name']; ?></th>
      <td colspan="3" bgcolor="#ffffff"><?php echo $this->_var['val']['act_name']; ?></td>
    </tr>
    <tr>
      <th bgcolor="#ffffff"><?php echo $this->_var['lang']['label_start_time']; ?></th>
      <td width="200" bgcolor="#ffffff"><?php echo $this->_var['val']['start_time']; ?></td>
      <th bgcolor="#ffffff"><?php echo $this->_var['lang']['label_max_amount']; ?></th>
      <td bgcolor="#ffffff">
        <?php if ($this->_var['val']['max_amount'] > 0): ?>
        <?php echo $this->_var['val']['max_amount']; ?>
        <?php else: ?>
        <?php echo $this->_var['lang']['nolimit']; ?>
        <?php endif; ?>
      </td>
    </tr>
    <tr>
      <th bgcolor="#ffffff"><?php echo $this->_var['lang']['label_end_time']; ?></th>
      <td bgcolor="#ffffff"><?php echo $this->_var['val']['end_time']; ?></td>
      <th bgcolor="#ffffff"><?php echo $this->_var['lang']['label_min_amount']; ?></th>
      <td width="200" bgcolor="#ffffff"><?php echo $this->_var['val']['min_amount']; ?></td>
    </tr>
    <tr>
      <th bgcolor="#ffffff"><?php echo $this->_var['lang']['label_act_range']; ?></th>
      <td bgcolor="#ffffff">
        <?php echo $this->_var['val']['act_range']; ?>
        <?php if ($this->_var['val']['act_range'] != $this->_var['lang']['far_all']): ?>
        :<br />
        <?php $_from = $this->_var['val']['act_range_ext']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'ext');if (count($_from)):
    foreach ($_from AS $this->_var['ext']):
?>
        <a href="<?php echo $this->_var['val']['program']; ?><?php echo $this->_var['ext']['id']; ?>" taget="_blank" class="f6"><span class="f_user_info"><u><?php echo $this->_var['ext']['name']; ?></u></span></a>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        <?php endif; ?>
      </td>
      <th bgcolor="#ffffff"><?php echo $this->_var['lang']['label_user_rank']; ?></th>
      <td bgcolor="#ffffff">
        <?php $_from = $this->_var['val']['user_rank']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'user');if (count($_from)):
    foreach ($_from AS $this->_var['user']):
?>
        <?php echo $this->_var['user']; ?>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      </td>
    </tr>
    <tr>
      <th bgcolor="#ffffff"><?php echo $this->_var['lang']['label_act_type']; ?></th>
      <td colspan="3" bgcolor="#ffffff">
        <?php echo $this->_var['val']['act_type']; ?><?php if ($this->_var['val']['act_type'] != $this->_var['lang']['fat_goods']): ?><?php echo $this->_var['val']['act_type_ext']; ?><?php endif; ?>
      </td>
    </tr>
    <?php if ($this->_var['val']['gift']): ?>
    <tr>
      <td colspan="4" bgcolor="#ffffff">
      <?php $_from = $this->_var['val']['gift']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
      <table border="0" style="float:left;">
        <tr>
          <td align="center"><a href="goods.php?id=<?php echo $this->_var['goods']['id']; ?>"><img src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo $this->_var['goods']['name']; ?>" /></a></td>
        </tr>
        <tr>
          <td align="center"><a href="goods.php?id=<?php echo $this->_var['goods']['id']; ?>" class="f6"><?php echo $this->_var['goods']['name']; ?></a></td>
        </tr>
        <tr>
          <td align="center">
            <?php if ($this->_var['goods']['price'] > 0): ?>
            <?php echo $this->_var['goods']['price']; ?><?php echo $this->_var['lang']['unit_yuan']; ?>
            <?php else: ?>
            <?php echo $this->_var['lang']['for_free']; ?>
            <?php endif; ?>
          </td>
        </tr>
      </table>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      </td>
    </tr>
    <?php endif; ?>
  </table>
  <div class="blank5"></div>
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
<div class="blank5"></div>

<div class="block">



<?php if ($this->_var['img_links'] || $this->_var['txt_links']): ?>
<div id="bottomNav" class="box">
 <div class="box_1">
  <div class="links clearfix">
    <?php $_from = $this->_var['img_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'link');if (count($_from)):
    foreach ($_from AS $this->_var['link']):
?>
    <a href="<?php echo $this->_var['link']['url']; ?>" target="_blank" title="<?php echo $this->_var['link']['name']; ?>"><img src="<?php echo $this->_var['link']['logo']; ?>" alt="<?php echo $this->_var['link']['name']; ?>" border="0" /></a>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    <?php if ($this->_var['txt_links']): ?>
    <?php $_from = $this->_var['txt_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'link');if (count($_from)):
    foreach ($_from AS $this->_var['link']):
?>
    [<a href="<?php echo $this->_var['link']['url']; ?>" target="_blank" title="<?php echo $this->_var['link']['name']; ?>"><?php echo $this->_var['link']['name']; ?></a>]
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    <?php endif; ?>
  </div>
 </div>
</div>
<?php endif; ?>

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
