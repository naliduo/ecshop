<form name="selectPageForm" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
        <div class="xm-box category-list-box">
          <div class="xm-pagenavi">
		  <?php if ($this->_var['pager']['page_prev']): ?>
		  <a class="numbers first" href="<?php echo $this->_var['pager']['page_prev']; ?>">上一页</a>
		  <?php else: ?>
		  <span class="numbers first">上一页</span>
		  <?php endif; ?>
		  
		  <?php $_from = $this->_var['pager']['page_number']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item_0_89062500_1446882876');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item_0_89062500_1446882876']):
?>
		  <?php if ($this->_var['pager']['page'] == $this->_var['key']): ?>
		  <span class="numbers current"><a href="<?php echo $this->_var['item_0_89062500_1446882876']; ?>"><?php echo $this->_var['key']; ?></a></span>
		  <?php else: ?>
		  <a class="numbers" href="<?php echo $this->_var['item_0_89062500_1446882876']; ?>"><?php echo $this->_var['key']; ?></a>
		  <?php endif; ?>
		  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		  <?php if ($this->_var['pager']['page_next']): ?>
		  <a class="numbers last" href="<?php echo $this->_var['pager']['page_next']; ?>">下一页</a>
		  <?php else: ?>
		  <span class="numbers last">下一页</span>
		  <?php endif; ?>
		  </div>
        </div>
      </form>