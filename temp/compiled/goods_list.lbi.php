<div class="hd">
        <div class="category-list-order">
          <dl class="xm-filter-list category-order-list clearfix">
            <dt>排序方式：</dt>
            <dd>
              <ul id="typeSort">
                <li class="<?php if ($this->_var['pager']['sort'] == 'goods_id'): ?><?php echo $this->_var['pager']['order']; ?><?php else: ?>default<?php endif; ?>"><a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=goods_id&order=<?php if ($this->_var['pager']['sort'] == 'goods_id' && $this->_var['pager']['order'] == 'DESC'): ?>ASC<?php else: ?>DESC<?php endif; ?>#goods_list"><span class="icon-common icon-order-ascending"></span>按上架时间</a></li>
                <li class="<?php if ($this->_var['pager']['sort'] == 'shop_price'): ?><?php echo $this->_var['pager']['order']; ?><?php else: ?>default<?php endif; ?>"><a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=shop_price&order=<?php if ($this->_var['pager']['sort'] == 'shop_price' && $this->_var['pager']['order'] == 'ASC'): ?>DESC<?php else: ?>ASC<?php endif; ?>#goods_list"><span class="icon-common icon-order-ascending"></span>价格由低到高</a></li>
                <li class="<?php if ($this->_var['pager']['sort'] == 'last_update'): ?><?php echo $this->_var['pager']['order']; ?><?php else: ?>default<?php endif; ?>"><a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=last_update&order=<?php if ($this->_var['pager']['sort'] == 'last_update' && $this->_var['pager']['order'] == 'DESC'): ?>ASC<?php else: ?>DESC<?php endif; ?>#goods_list"><span class="icon-common icon-order-ascending"></span><?php echo $this->_var['lang']['sort']['last_update']; ?></a></li>
              </ul>
            </dd>
          </dl>
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
                <div class="item-flags"><span class="icon-saleoff icon-saleoff-0"><?php if ($this->_var['goods']['watermark_img'] == "watermark_promote_small"): ?>促销<?php elseif ($this->_var['goods']['watermark_img'] == "watermark_new_small"): ?>新品<?php elseif ($this->_var['goods']['watermark_img'] == "watermark_best_small"): ?>推荐<?php elseif ($this->_var['goods']['watermark_img'] == "watermark_hot_small"): ?>热销<?php elseif ($this->_var['goods']['watermark_img'] == "watermark_member_small"): ?>会员<?php endif; ?></span></div>
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
</script>