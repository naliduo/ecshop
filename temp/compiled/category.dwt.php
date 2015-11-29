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
<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,transport.js,utils.js')); ?>
<?php $this->assign('mycat_tmp',$this->_var['categories'][$this->_var['category']]); ?>
<script>
var _mvq = _mvq || [];
_mvq.push(['$setAccount', 'm-29971-0']);
_mvq.push(['$setGeneral', 'category', '', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_name']); ?>', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_id']); ?>']);
_mvq.push(['$logConversion']);
_mvq.push(['$addCategory', '<?php echo htmlspecialchars($this->_var['mycat_tmp']['name']); ?>', '<?php echo htmlspecialchars($this->_var['category']); ?>']);
_mvq.push(['$logData']);
</script>

							
</head>
<body><?php echo $this->fetch('library/page_header.lbi'); ?><script type="text/javascript">
document.getElementById("div_all_cat").className = "showlist";
</script>
<div class="container">
<div class="row mileftnav">
  <div class="span3">
    <div class="xm-box">
      <div class="hd">
        <h2 class="title">你可能还喜欢</h2>
      </div>
      <div class="bd">
        <ul class="xm-goods-sublist xm-goods-sublist-l">
		<?php $_from = $this->_var['best_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
          <li>
            <div class="item-name"><a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"><?php echo $this->_var['goods']['short_style_name']; ?></a></div>
            <div class="item-price"><?php if ($this->_var['goods']['promote_price'] != ""): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></div>
            <div class="item-thumb"><a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"><img src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>" /></a></div>
          </li>
       <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
      </div>
    </div><?php echo $this->fetch('library/history.lbi'); ?></div>
  <div class="span12">
    <div class="category-bn-box clearfix">
    
    
    
    
 <?php
    $GLOBALS['smarty']->assign('ad',get_adv('首页-分类ID1-广告1'));
    ?>
	<?php if ($this->_var['ad']): ?>
      <div class="category-bn9"><a href='<?php echo $this->_var['ad']['url']; ?>' target='_blank'><img src='<?php echo $this->_var['ad']['image']; ?>' width='691' height='180' /></a></div>
	<?php endif; ?>
    
    <?php
    $GLOBALS['smarty']->assign('ad',get_adv('首页-分类ID1-广告2'));
    ?>
	<?php if ($this->_var['ad']): ?>
      <div class="category-bn3"><a href='<?php echo $this->_var['ad']['url']; ?>' target='_blank'><img src='<?php echo $this->_var['ad']['image']; ?>' width='231' height='180' /></a></div>
	<?php endif; ?>
    
    
    
       
    </div>
    <div class="xm-box category-filter-box">
      <div class="hd">
        <h2 class="title"><?php echo $this->_var['lang']['goods_filter']; ?></h2>
        <div class="category-filter-meta">共<?php echo $this->_var['pager']['record_count']; ?>个商品</div>
      </div>
	  <?php if ($this->_var['brands']['1'] || $this->_var['price_grade']['1'] || $this->_var['filter_attr_list']): ?>
      <div class="bd">
	  <?php if ($this->_var['brands']['1']): ?>
        <dl class="xm-filter-list category-filter-list clearfix">
          <dt>品牌：</dt>
          <dd>
            <ul>
			<?php $_from = $this->_var['brands']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brand');if (count($_from)):
    foreach ($_from AS $this->_var['brand']):
?>
			<?php if ($this->_var['brand']['selected']): ?>
					<li class="current"><a><?php echo $this->_var['brand']['brand_name']; ?></a></li>
					<?php else: ?>
					<li><a href="<?php echo $this->_var['brand']['url']; ?>"><?php echo $this->_var['brand']['brand_name']; ?></a></li>
					<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
          </dd>
        </dl>
		<?php endif; ?>
		
		<?php if ($this->_var['price_grade']['1']): ?>
        <dl class="xm-filter-list category-filter-list clearfix">
          <dt><?php echo $this->_var['lang']['price']; ?>：</dt>
          <dd>
            <ul>
			<?php $_from = $this->_var['price_grade']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'grade');if (count($_from)):
    foreach ($_from AS $this->_var['grade']):
?>
			<?php if ($this->_var['grade']['selected']): ?>
					<li class="current"><a><?php echo $this->_var['grade']['price_range']; ?></a></li>
					<?php else: ?>
					<li><a href="<?php echo $this->_var['grade']['url']; ?>"><?php echo $this->_var['grade']['price_range']; ?></a></li>
					<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
          </dd>
        </dl>
		<?php endif; ?>
		
		<?php $_from = $this->_var['filter_attr_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'filter_attr_0_85937500_1446882876');if (count($_from)):
    foreach ($_from AS $this->_var['filter_attr_0_85937500_1446882876']):
?>
        <dl class="xm-filter-list category-filter-list clearfix">
          <dt><?php echo htmlspecialchars($this->_var['filter_attr_0_85937500_1446882876']['filter_attr_name']); ?>：</dt>
          <dd>
            <ul>
			<?php $_from = $this->_var['filter_attr_0_85937500_1446882876']['attr_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'attr');if (count($_from)):
    foreach ($_from AS $this->_var['attr']):
?>
			<?php if ($this->_var['attr']['selected']): ?>
					<li class="current"><a><?php echo $this->_var['attr']['attr_value']; ?></a></li>
					<?php else: ?>
					<li><a href="<?php echo $this->_var['attr']['url']; ?>"><?php echo $this->_var['attr']['attr_value']; ?></a></li>
					<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
          </dd>
        </dl>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		
      </div>
	  <?php endif; ?>
    </div>
    <div class="xm-box category-list-box"><?php echo $this->fetch('library/goods_list.lbi'); ?><?php echo $this->fetch('library/pages2.lbi'); ?></div>
  </div>
</div><?php echo $this->fetch('library/page_footer.lbi'); ?></body>

</html>
