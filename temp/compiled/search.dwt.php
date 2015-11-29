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
_mvq.push(['$setGeneral', 'searchresult', '', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_name']); ?>', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_id']); ?>']);
_mvq.push(['$logConversion']);
_mvq.push(['$addSearchResult', '<?php echo htmlspecialchars($this->_var['search_keywords']); ?>', '<?php echo htmlspecialchars($this->_var['pager']['record_count']); ?>']);
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
            <div class="item-price">             <?php if ($this->_var['goods']['promote_price'] != ""): ?>
              <?php echo $this->_var['goods']['promote_price']; ?>
              <?php else: ?>
              <?php echo $this->_var['goods']['shop_price']; ?>
              <?php endif; ?>
            </div>
            <div class="item-thumb"><a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"><img src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>" /></a></div>
          </li>
       <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
      </div>
    </div><?php echo $this->fetch('library/history.lbi'); ?></div>
  <div class="span12">
    <div class="xm-box category-filter-box">
      <div class="hd">
        <h2 class="title"><?php if ($this->_var['intromode'] == 'best'): ?>
         <span><?php echo $this->_var['lang']['best_goods']; ?></span>
         <?php elseif ($this->_var['intromode'] == 'new'): ?>
         <span><?php echo $this->_var['lang']['new_goods']; ?></span>
         <?php elseif ($this->_var['intromode'] == 'hot'): ?>
         <span><?php echo $this->_var['lang']['hot_goods']; ?></span>
         <?php elseif ($this->_var['intromode'] == 'promotion'): ?>
         <span><?php echo $this->_var['lang']['promotion_goods']; ?></span>
         <?php else: ?>
         <span><?php echo $this->_var['lang']['search_result']; ?></span>
         <?php endif; ?></h2>
        <div class="category-filter-meta">共<?php echo $this->_var['pager']['record_count']; ?>个商品</div>
      </div>
	  <?php if ($this->_var['brands']['1'] || $this->_var['price_grade']['1'] || $this->_var['filter_attr_list']): ?>
      <div class="bd">
	  <?php if ($this->_var['brands']['1']): ?>
        <dl class="xm-filter-list category-filter-list clearfix">
          <dt>品牌：</dt>
          <dd>
            <ul>
			<?php $_from = $this->_var['brands']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brand_0_82812500_1446884698');if (count($_from)):
    foreach ($_from AS $this->_var['brand_0_82812500_1446884698']):
?>
			<?php if ($this->_var['brand_0_82812500_1446884698']['selected']): ?>
					<li class="current"><a><?php echo $this->_var['brand_0_82812500_1446884698']['brand_name']; ?></a></li>
					<?php else: ?>
					<li><a href="<?php echo $this->_var['brand_0_82812500_1446884698']['url']; ?>"><?php echo $this->_var['brand_0_82812500_1446884698']['brand_name']; ?></a></li>
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
		
		<?php $_from = $this->_var['filter_attr_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'filter_attr');if (count($_from)):
    foreach ($_from AS $this->_var['filter_attr']):
?>
        <dl class="xm-filter-list category-filter-list clearfix">
          <dt><?php echo htmlspecialchars($this->_var['filter_attr']['filter_attr_name']); ?>：</dt>
          <dd>
            <ul>
			<?php $_from = $this->_var['filter_attr']['attr_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'attr');if (count($_from)):
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
    <div class="xm-box category-list-box">
<div class="hd">
        <div class="category-list-order" style="width:98%">
          <dl class="xm-filter-list category-order-list clearfix">
            <dt>商品列表：</dt>
            
          </dl>
		  
		  <div style="float:right">
              <form action="search.php" method="post" class="sort" name="listform" id="form">
        
              <select name="sort">
              <?php echo $this->html_options(array('options'=>$this->_var['lang']['sort'],'selected'=>$this->_var['pager']['search']['sort'])); ?>
              </select>
              <select name="order">
              <?php echo $this->html_options(array('options'=>$this->_var['lang']['order'],'selected'=>$this->_var['pager']['search']['order'])); ?>
              </select>
              <input type="image" name="imageField" src="themes/xm2013/images/bnt_go.gif" alt="go"/>
              <input type="hidden" name="page" value="<?php echo $this->_var['pager']['page']; ?>" />
              <input type="hidden" name="display" value="<?php echo $this->_var['pager']['display']; ?>" id="display" />
              <?php $_from = $this->_var['pager']['search']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
              <?php if ($this->_var['key'] != "sort" && $this->_var['key'] != "order"): ?>
                <?php if ($this->_var['key'] == 'keywords'): ?>
                  <input type="hidden" name="<?php echo $this->_var['key']; ?>" value="<?php echo urldecode($this->_var['item']); ?>" />
                <?php else: ?>
                  <input type="hidden" name="<?php echo $this->_var['key']; ?>" value="<?php echo $this->_var['item']; ?>" />
                <?php endif; ?>
              <?php endif; ?>
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </form>
            </div>
		  
        </div>
      </div>
      <div class="bd">
        <div class="xm-goods-list-wrap">
          <ul class="xm-goods-list clearfix">
		  
		  <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
    <?php if ($this->_var['goods']['goods_id']): ?>
            <li>
              <div class="xm-goods-item">
                <div class="item-thumb"><a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo $this->_var['goods']['goods_name']; ?>"><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" alt="<?php echo $this->_var['goods']['goods_name']; ?>" /></a></div>
                <h2 class="item-name"><a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo $this->_var['goods']['goods_name']; ?>"><?php echo $this->_var['goods']['goods_name']; ?></a></h2>
                <div class="item-price"><?php if ($this->_var['goods']['promote_price'] != ""): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?><del><?php echo $this->_var['goods']['market_price']; ?></del></div>
                <div class="item-action"><a class="action-add-cart xmAddShopCart" href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" ><span class="icon-common icon-common-plus"></span>加入购物车</a></div>
                <div class="item-flags"><span class="icon-saleoff icon-saleoff-0"><?php if ($this->_var['goods']['watermark_img'] == "watermark_promote_small"): ?>促销<?php elseif ($this->_var['goods']['watermark_img'] == "watermark_new_small"): ?>新品<?php elseif ($this->_var['goods']['watermark_img'] == "watermark_best_small"): ?>推荐<?php elseif ($this->_var['goods']['watermark_img'] == "watermark_hot_small"): ?>热销<?php endif; ?></span></div>
              </div>
            </li>
            <?php endif; ?>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			
          </ul>
        </div>
      </div>
<script type="Text/Javascript" language="JavaScript">
<!--

function selectPage(sel)
{
  sel.form.submit();
}

//-->
</script>
<script type="text/javascript">
window.onload = function()
{
  
}
<?php $_from = $this->_var['lang']['compare_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
<?php if ($this->_var['key'] != 'button_compare'): ?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php else: ?>
var button_compare = '';
<?php endif; ?>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var compare_no_goods = "<?php echo $this->_var['lang']['compare_no_goods']; ?>";
var btn_buy = "<?php echo $this->_var['lang']['btn_buy']; ?>";
var is_cancel = "<?php echo $this->_var['lang']['is_cancel']; ?>";
var select_spe = "<?php echo $this->_var['lang']['select_spe']; ?>";
</script><?php echo $this->fetch('library/pages2.lbi'); ?></div>
  </div>
</div><?php echo $this->fetch('library/page_footer.lbi'); ?></body>

</html>
