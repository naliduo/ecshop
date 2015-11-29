 

 <div style="float:left"><?php echo $this->_var['str']; ?></div>
 <ul class="car_ul">

 <?php if ($this->_var['goods']): ?>

 <?php $_from = $this->_var['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_90625000_1446882876');$this->_foreach['goods'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods']['total'] > 0):
    foreach ($_from AS $this->_var['goods_0_90625000_1446882876']):
        $this->_foreach['goods']['iteration']++;
?>
 <li>
 <div class="f_l" style="float:left">
 <a  href="<?php echo $this->_var['goods_0_90625000_1446882876']['url']; ?>"><img src="<?php echo $this->_var['goods_0_90625000_1446882876']['goods_thumb']; ?>" style="width:50px; height:50px; border:0px solid #e1e1e1; float:left" alt="<?php echo $this->_var['goods_0_90625000_1446882876']['goods_name']; ?>"></a>
 <a  class="b2"  href="<?php echo $this->_var['goods_0_90625000_1446882876']['url']; ?>"><?php echo $this->_var['goods_0_90625000_1446882876']['short_name']; ?></a>
 </div>
 <div class="f_r" style="float:right">
 <b><?php echo $this->_var['goods_0_90625000_1446882876']['goods_price']; ?>×<?php echo $this->_var['goods_0_90625000_1446882876']['goods_number']; ?></b>
 <a  class="del" href="javascript:if (confirm('您确实要把该商品移出购物车吗？')) location.href='flow.php?step=drop_goods&id=<?php echo $this->_var['goods_0_90625000_1446882876']['rec_id']; ?>'">删除</a>
 </div>
  </li>
 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
 <li style=" text-align:right; margin-top:3px;">
  <a href="flow.php?step=consignee"><img  style=" margin-left:10px;"src="themes/xm2013/images/checkout_top.gif" alt="checkout" /></a>
  </li>
  <?php else: ?>
 <a href="#" style="color:#999; padding-left:10px;">您的购物车暂无商品 赶快选择心爱的产品吧</a>
 <?php endif; ?>
 <div class="dang">
 </div>
 <ul>
<script type="text/javascript">
function deleteCartGoods(rec_id)
{
Ajax.call('delete_cart_goods.php', 'id='+rec_id, deleteCartGoodsResponse, 'POST', 'JSON');
}

/**
 * 接收返回的信息
 */
function deleteCartGoodsResponse(res)
{
  if (res.error)
  {
    alert(res.err_msg);
  }
  else
  {
      document.getElementById('ECS_CARTINFO').innerHTML = res.content;
  }
}
</script>

