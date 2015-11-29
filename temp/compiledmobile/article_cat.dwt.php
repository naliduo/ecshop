<!DOCTYPE html>
<html manifest="/manifest/tmallCateAppCache.manifest">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8"> 
<title><?php echo $this->_var['page_title']; ?></title>          
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" name="viewport">     
<meta content="yes" name="apple-mobile-web-app-capable">     
<meta content="black" name="apple-mobile-web-app-status-bar-style">     
<meta content="telephone=no" name="format-detection">    
<LINK rel=apple-touch-icon-precomposed href="themes/default/images/touch-icon.png">
<LINK rel="shortcut icon" type=image/x-icon href="themes/default/images/favicon2.ico"> 
<link rel="stylesheet" type="text/css" href="themes/default/css/help-wap.css">
<link rel="stylesheet" type="text/css" href="themes/default/css/pagenav.css">
<script charset="utf-8" async="" src="themes/default/js/a_002.js"></script> 
<script src="themes/default/js/aplus_v2.js" exparams="category=&amp;userid=&amp;aplus" id="tb-beacon-aplus" async="" type="text/javascript"></script>
<script src="themes/default/js/a.js" async="" type="text/javascript"></script>
</head>
<body> 
 
<script type="text/javascript">
(function (d) {
var t=d.createElement("script");t.type="text/javascript";t.async=true;t.id="tb-beacon-aplus";
t.setAttribute("exparams","category=&userid=&aplus");
t.src=("https:"==d.location.protocol?"https://s":"http://a")+".tbcdn.cn/s/aplus_v2.js";
d.getElementsByTagName("head")[0].appendChild(t);
})(document);
</script>
<header> <a class="back" href="index.php">网站首页</a>
  <h1>服务中心</h1>
  <a class="right-btn" href="article_cat.php?id=1">文章分类</a> 
</header>
<section class="search-section">
  <form action="<?php echo $this->_var['search_url']; ?>" name="search_form" method="post" class="article_search">
    <div class="input-wrapper J_InputWrapper">
      <input autocomplete="off" placeholder="输入问题关键字搜索"  name="keywords" id="requirement" class="J_SearchInput search-input" type="text">
      <input name="id" type="hidden" value="<?php echo $this->_var['cat_id']; ?>" />
      <input name="cur_url" id="cur_url" type="hidden" value="" />
      <button type="button" disabled="true" class="input-delete J_InputDelete"> <span></span> </button>
    </div>
    <button type="submit"  class="search-btn">搜索</button>
  </form>
</section>
<?php if ($this->_var['article_categories']): ?>
<section class="nav">
  <ul>
    <?php $_from = $this->_var['article_cat']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');$this->_foreach['article_cat'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['article_cat']['total'] > 0):
    foreach ($_from AS $this->_var['cat']):
        $this->_foreach['article_cat']['iteration']++;
?>
    	 <li><a href="article_cat.php?id=<?php echo $this->_var['cat']['cat_id']; ?>"><?php echo htmlspecialchars($this->_var['cat']['cat_name']); ?></a></li>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  </ul>
</section>
<?php else: ?>
<section class="q-list J_List">
  <ol>
      <?php $_from = $this->_var['artciles_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'article');$this->_foreach['artciles_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['artciles_list']['total'] > 0):
    foreach ($_from AS $this->_var['article']):
        $this->_foreach['artciles_list']['iteration']++;
?>
       <li  > 
	   <a href="<?php echo $this->_var['article']['url']; ?>" style="padding-left:20px;"> <span class="num"><?php echo $this->_foreach['artciles_list']['iteration']; ?></span><?php echo $this->_var['article']['short_title']; ?>
      <p></p>
      </a> 
	  </li>
     <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
     <?php echo $this->fetch('library/pages.lbi'); ?> 
  </ol>
</section>
<?php endif; ?>		
<script src="themes/default/js/seed-min.js" data-config="{combine:true}"></script> 
<script src="themes/default/js/wap_common.js"></script>
 
</body>
</html>
