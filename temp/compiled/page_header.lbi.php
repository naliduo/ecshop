<script src="http://libs.baidu.com/jquery/2.0.3/jquery.min.js"></script>


<script type="text/javascript">
var process_request = "正在处理您的请求...";
</script>
<script type="text/javascript">
var isWidescreen=screen.width<1200;
if (isWidescreen){document.getElementsByTagName("body")[0].className="w950";}
</script>
<div class="header container">
  <div class="top">
    <div class="logo"><a class="icon-common-logo" href="index.php" title=""><img src="themes/xm2013/images/logo.gif" /></a></div>
    <div class="right clearfix">
      <div class="menu">
        <ul class="clearfix">
          <li>
            <label id="header_menu_top_login"><font id="ECS_MEMBERZONE"><?php 
$k = array (
  'name' => 'member_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></font></label>
          </li>
          <li><a href="http://www.dream-gardens.com.cn/">君禾园官网</a></li>
        </ul>
      </div>
      <div class="search">
        <form id="user_search" action="search.php" method='get'>
          <input type="text" id="keyword" name="keywords" class="txt" value="" placeholder="请输入关键词" />
          <input type="submit"  class="mbtn" value=''/>
          <label class="hot"><?php 
$k = array (
  'name' => 'searchkeywords',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></label>
        </form>
      </div>


    <div style="margin-top:3px;" class="xshop buy_car_bg clearfix"  onmouseover="this.className='xshop hover_on buy_car_bg ul1_on'" onmouseout=  "this.className='xshop buy_car_bg'">

	<img src="themes/xm2013/images/nav_cat.gif" style="float:left; padding-right:5px; padding-left:10px; padding-top:7px;" />
	<div id="ECS_CARTINFO">

   <p><a href="flow.php"><?php 
$k = array (
  'name' => 'cart_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></a></p>
     </div> </div>

      <!--<div style="position: absolute;right: 31px;top: 78px;"><a target="_blank" id="kaifanggm" href="#"></a></div>-->
    </div>
  </div>
  <div class="nav">
    <div class="clearfix"><strong id="btnnav" class="side"><a class="catenav">全部商品分类<em class="tri"></em></a></strong>
      <div class="lnks clearfix">
        <ul class="lnks-li">
          <li><a class="lnk  <?php if ($this->_var['navigator_list']['config']['index'] == 1): ?>on<?php endif; ?>" href="index.php">首页</a></li>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk <?php if ($this->_var['nav']['active'] == 1): ?>on<?php endif; ?>" href="http://www.dream-gardens.com.cn/expertise/" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?>> 我的服务 </a></li>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk <?php if ($this->_var['nav']['active'] == 1): ?>on<?php endif; ?>" href="http://www.dream-gardens.com.cn/about/" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?>> 农场故事 </a></li>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk <?php if ($this->_var['nav']['active'] == 1): ?>on<?php endif; ?>" href="http://www.dream-gardens.com.cn/life/" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?>> 慢生活 </a></li>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk <?php if ($this->_var['nav']['active'] == 1): ?>on<?php endif; ?>" href="http://www.dream-gardens.com.cn/news/" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?>> 君禾动态 </a></li>
               <?php if ($_SESSION['user_id']): ?>
                    <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk <?php if ($this->_var['nav']['active'] == 1): ?>on<?php endif; ?>" href="goodbindcard.php" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?>> 会员俱乐部 </a></li>
               <?php endif; ?>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk <?php if ($this->_var['nav']['active'] == 1): ?>on<?php endif; ?>" href="http://www.dream-gardens.com.cn/#contact" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?>> 联系我们 </a></li>
        </ul>
      </div>
    </div>
    <div class="showlist snone" id="div_all_cat">
      <ul class="lists">
      <li onmouseover="this.className='navhover'" onmouseout="this.className=''" class="">
      <a class="tit" href="topic.php?topic_id=4">节气饮食</a><em class="icon-common icon-common-arrowright"></em>
      		       <label class="tri"><i></i></label>

      </li>
	  <?php $_from = get_categories_tree(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');if (count($_from)):
    foreach ($_from AS $this->_var['cat']):
?>
        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="<?php echo $this->_var['cat']['url']; ?>"><?php echo htmlspecialchars($this->_var['cat']['name']); ?></a><em class="icon-common icon-common-arrowright"></em>
		<?php if ($this->_var['cat']['cat_id']): ?>
          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			  <?php $_from = $this->_var['cat']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');if (count($_from)):
    foreach ($_from AS $this->_var['child']):
?>
                <dd><a  href="<?php echo $this->_var['child']['url']; ?>"><?php echo htmlspecialchars($this->_var['child']['name']); ?></a></dd>
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
              </dl>
            </div>
          </div>
		  <?php endif; ?>
        </li>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      </ul>
    </div>
  </div>
</div>
<script type="text/javascript" src="themes/xm2013/js/xm.js"></script>