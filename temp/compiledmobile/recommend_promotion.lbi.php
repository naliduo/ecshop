<?php if ($this->_var['promotion_goods']): ?>
<DIV class="region miao">
  <DIV class=miao-title><SPAN>天天特惠</SPAN> <SPAN>每天都会有特价商品，记得来看看</SPAN> </DIV>
  <DIV class=miao-item> 
  	<?php $_from = $this->_var['promotion_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['promotion_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['promotion_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['promotion_foreach']['iteration']++;
?> 
    <?php if (($this->_foreach['promotion_foreach']['iteration'] - 1) <= 2): ?>
    <A href="<?php echo $this->_var['goods']['url']; ?>"><IMG src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>" />
    <P class=miao-item-title style="width:90px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><?php echo htmlspecialchars($this->_var['goods']['short_name']); ?></P>
    <P><SPAN class=miao-item-newprice><?php echo $this->_var['goods']['promote_price']; ?></SPAN>
    <DEL class=miao-item-oldprice>598.0</DEL></P>
    <?php endif; ?> 
    </A> 
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
    </DIV>
</DIV>
<?php endif; ?>