<!DOCTYPE html>
<html manifest="/manifest/tmallCateAppCache.manifest">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">   
<title>类目导航-<?php echo $this->_var['page_title']; ?></title>        
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" name="viewport">     
<meta content="yes" name="apple-mobile-web-app-capable">     
<meta content="black" name="apple-mobile-web-app-status-bar-style">     
<meta content="telephone=no" name="format-detection">    
<LINK rel=apple-touch-icon-precomposed href="themes/default/images/touch-icon.png">
<LINK rel="shortcut icon" type=image/x-icon href="themes/default/images/favicon2.ico"> 
<LINK rel=stylesheet type=text/css href="themes/default/allcate.css">
 
</head><body> 
<div class="ccontainer" id="content">   
  
<div class="cheader">         
<div class="chome">             
<a class="chome_bg" href="index.php" id="home"><nav id="h5back_nick">返回首页</nav></a>         
</div>         
<div class="ctitle">             
<div><span>类目浏览</span></div>         
</div>     
</div>  
 
<div class="clist">         
<ul>     
<?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['cat']):
        $this->_foreach['no']['iteration']++;
?>                    
<li class="crow level1">                     
<div class="crow_row">                         
<div class="crow_icon">                                                                                     
<img alt="" src="themes/default/images/cate<?php echo $this->_foreach['no']['iteration']; ?>.png">                         
</div>                         
<div class="crow_title">  
<?php if ($this->_var['cat']['cat_id']): ?>
<span><?php echo htmlspecialchars($this->_var['cat']['name']); ?></span> 
<?php else: ?>
<span><a href="<?php echo $this->_var['cat']['url']; ?>"><?php echo htmlspecialchars($this->_var['cat']['name']); ?></a></span>          
<?php endif; ?>                                         
</div>                         
<div class="crow_arrow"><img src="themes/default/images/cate_biao.png"></div>                         
<div>&nbsp;</div>                     
</div>                 
</li>                                 
<ul class="clist clist_sub clearfix" style="opacity: 1; display: none;">                     
<li class="crow">    

<?php $_from = $this->_var['cat']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');$this->_foreach['no1'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no1']['total'] > 0):
    foreach ($_from AS $this->_var['child']):
        $this->_foreach['no1']['iteration']++;
?>
<div class="crow_item   <?php if (($this->_foreach['no1']['iteration'] - 1) % 3 == 0): ?>  crow_item_clear 
<?php endif; ?> ">
<a href="<?php echo $this->_var['child']['url']; ?>"><?php echo htmlspecialchars($this->_var['child']['name']); ?></a>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
 
</li>
</ul>                             
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 

</ul>     
</div> </div><div class="ccontainer" id="contentsub" style="display:none;">     
<div class="cheader">         
<div class="chome"><a class="chome_bg" href="javascript:void(0)" id="allClass"><nav id="h5back_nick">全部分类</nav></a>         
</div>     
</div>     
<div class="clist" id="level3">      
</div> 
</div> 
 
<SCRIPT src="themes/default/js/zepto.min.js"></script>
<SCRIPT src="themes/default/js/cate.js"></script></body></html>