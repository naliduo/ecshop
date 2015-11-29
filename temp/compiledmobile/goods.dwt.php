<!DOCTYPE html>
<html manifest="/manifest/tmallCateAppCache.manifest">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<title><?php echo $this->_var['page_title']; ?>触屏版</title>
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" name="viewport">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<LINK rel=apple-touch-icon-precomposed href="themes/default/images/touch-icon.png">
<LINK rel="shortcut icon" type=image/x-icon href="themes/default/images/favicon2.ico">
<LINK rel=stylesheet type=text/css href="themes/default/goods.css">
<LINK rel=stylesheet type=text/css href="themes/default/cart.css">
<?php echo $this->smarty_insert_scripts(array('files'=>'common.js')); ?>
<SCRIPT src="themes/default/js/jquery.js"></script>
<script>
function $id(element) {
  return document.getElementById(element);
}
$(function(){
	arg=document.URL.split("#");
    switch(arg[1])
      {
        case 'detail-desc' :
		  $("#detail_nav li").removeClass("current");
          $("#detail_nav li").eq(0).addClass("current");
          break;
        case 'detail-review' :
		  $("#detail_nav li").removeClass("current");
          $("#detail_nav li").eq(1).addClass("current");
          break;
        case 'detail-recommend' :
		  $("#detail_nav li").removeClass("current");
		  $("#detail_nav li").eq(2).addClass("current");
		  break;
	    default :
		 // $("#detail_nav li:eq(0)").addClass("current");
          break;
      }
	$("#detail_nav li").click(function(){
		    i = $(this).index('#detail_nav li');
			$("#detail_nav li").removeClass("current");
		    $("#detail_nav li").eq(i).addClass("current");
			
		});
})
</script>
<SCRIPT src="themes/default/js/goods.js"></script>
</head>
<body id="app-detail" style=" position: relative;">
<header class="s-header">
  <nav>
    <h1>商品详情页</h1>
    <a href="javascript:history.go(-1)" class="back">返回</a>
    <label for="header-search-input" class="more" onclick="showSearch()">更多</label>
  </nav>
  <script>
function showSearch( ){
	document.getElementById("search_box").style.display="block";
	}
function closeSearch(){
	document.getElementById("search_box").style.display="none";
	}
</script>
  <div class="finder"  id="search_box" style="display:none" >
    <form  action="search.php" id="searchForm" method="get" name="searchForm" class="search" >
      <div style="float:left; width:85%; position:relative">
        <input   type="search"  name="keywords"   id="keyword" placeholder="搜索商品" autocomplete="off">
        <input  type="submit" value="" class="go" style="cursor:pointer;" />
      </div>
      <button type="submit"></button>
      <button type="reset"></button>
      <div class="close" onClick="closeSearch()" style=" height:28px;line-height:28px; font-size:12px; text-align:center; "> 取消 </div>
    </form>
    <div class="ui-suggest"></div>
  </div>
</header>
 
<script src="themes/default/js/TouchSlide.1.1.js"></script> 

<section class="s-slider ui-slider">
<div id="slideBox" class="slideBox">
  <div class="scroller" style="transition-property: transform; transition-timing-function: cubic-bezier(0, 0, 0.25, 1); transition-duration: 0ms; transform: translate3d(0px, 0px, 0px); max-width:80%; overflow:hidden; margin: 0 auto;">
    <!--<div><a href="javascript:showPic()"><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>"  alt="<?php echo $this->_var['goods']['goods_name']; ?>" /></a></div>-->
    <ul>
      <li><a href="javascript:showPic()"> <img src="../<?php echo $this->_var['goods']['goods_img']; ?>"  alt="<?php echo $this->_var['goods']['goods_name']; ?>" /></a></li>
      <?php if ($this->_var['pictures']): ?> 
      <?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['picture']):
        $this->_foreach['no']['iteration']++;
?> 
      <?php if ($this->_foreach['no']['iteration'] > 1): ?>
      <li><a href="javascript:showPic()"><img src="../<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>" alt="<?php echo $this->_var['goods']['goods_name']; ?>" class="autobg" /></a></li>
      <?php endif; ?> 
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
      <?php endif; ?>
    </ul>
  </div>
  <div class="icons">
    <ul>
         <i class="current"></i>
     <?php if ($this->_var['pictures']): ?> 
     	<?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['picture']):
        $this->_foreach['no']['iteration']++;
?> 
         <i class="current"></i>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
     <?php endif; ?>
    </ul>
  </div>
 </div>
</section>


<section class="s-slider ui-slider" style="display:none;">
  <div id="slideBox" class="slideBox">
    <div  id="Ggallery" class="ui-gallery ui-slider" >
      <div class="bd" style="transition-property: transform; transition-timing-function: cubic-bezier(0, 0, 0.25, 1); transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
        <ul style="width:100%;">
          <?php if ($this->_var['pictures']): ?> 
          <?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['picture']):
        $this->_foreach['no']['iteration']++;
?> 
          <?php if ($this->_foreach['no']['iteration'] > 1): ?>
          <li style="width:100%;"><a href="javascript:showPic()"><img alt="" src="../<?php echo $this->_var['picture']['img_url']; ?>"/></a></li>
          <?php endif; ?> 
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
          <?php endif; ?>
        </ul>
      </div>
      <div class="icons">
        <ul>
        </ul>
      </div>
    </div>
  </div>
</section>
<style type="text/css">
	/* 本例子css -------------------------------------- */
	.slideBox{position:relative; overflow:hidden; margin:10px auto; max-width:640px;/* 设置焦点图最大宽度 */}
	.slideBox .icons{position:absolute; height:28px; line-height:28px; bottom:0; right:0;}
	.slideBox .icons li{display:inline-block; width:5px; height:5px; -webkit-border-radius:5px; -moz-border-radius:5px; border-radius:5px; background:#333; text-indent:-9999px; overflow:hidden; margin:0 6px;}
	.slideBox .icons li.on{background:#fff;}
	.slideBox .bd{position:relative; z-index:0; height:100%; width:100%;}
	.slideBox .bd li{position:relative; text-align:center; width:100%;}
	
	.slideBox .bd li img{background:url(themes/xm2013/images/loading.gif) center center no-repeat;  vertical-align:middle; margin: auto 0; width:100%; height:auto; /* 图片宽度100%，达到自适应效果 */}
	.slideBox .bd li a{-webkit-tap-highlight-color:rgba(0,0,0,0);}  /* 去掉链接触摸高亮 */
	.slideBox .bd li .tit{display:block; width:100%;  position:absolute; bottom:0; text-indent:10px; height:28px; line-height:28px; background:url(themes/xm2013/images/focusBg.png) repeat-x; color:#fff;  text-align:left;}
	
</style>
 
<script type="text/javascript">
			
				TouchSlide({ 
					slideCell:"#slideBox",
					titCell:".icons ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
					mainCell:".scroller ul", 
					effect:"leftLoop", 
					autoPage:true,//自动分页
					autoPlay:false //自动播放
				});

				function showPic(){
					
					var data = document.getElementById("slideBox").className;
					var reCat = /ui-gallery/;
					//str1.indexOf(str2);
					if( reCat.test(data) ){
					
						document.getElementById("slideBox").className = 'slideBox';
						
						}
				    else{

						document.getElementById("slideBox").className = 'slideBox ui-gallery';
						//document.getElementById("slideBox").style.position = 'fixed';
						
						}
					
					}
</script> 
 


<section class="s-summary"> <a class="m-fav" id="collect_box" href="javascript:collect(<?php echo $this->_var['goods']['goods_id']; ?>)" style="display: inline;"><?php echo $this->_var['record_count']; ?></a>
  <div class="title">
    <h1> <?php echo $this->_var['goods']['goods_style_name']; ?> <b></b> </h1>
  </div>
  <div class="summary">
    <ul class="m-prices">
      <?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?>
      <li class="deposit item"> <span class="deposit item"><?php echo $this->_var['lang']['promote_price']; ?><b><?php echo $this->_var['goods']['promote_price']; ?></b> </span> </li>
      <?php endif; ?>
      <li> <span class="deposit item"><?php echo $this->_var['lang']['shop_price']; ?><b  id="ECS_SHOPPRICE"><?php echo $this->_var['goods']['shop_price_formated']; ?></b></span> </li>
      <?php if ($this->_var['cfg']['show_marketprice']): ?>
      <li class="o-price"> <span class="key"><?php echo $this->_var['lang']['market_price']; ?></span>
        <div class="value"> <del> <?php echo $this->_var['goods']['market_price']; ?> </del> </div>
      </li>
      <?php endif; ?>
    </ul>
    <?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?> 
    <?php echo $this->smarty_insert_scripts(array('files'=>'lefttime.js')); ?>
    <div class="m-presell">
      <div class="info"> <span class="time">时间剩余：
        <time class="countdown" id="leftTime"><?php echo $this->_var['lang']['please_waiting']; ?></time>
        </span> </div>
      <a class="rule" href="#">查看促销规则</a> </div>
    <?php endif; ?>
    
    <div class="m-sales"> <span class="key">销量：</span>
      <div class="value"><b><?php echo $this->_var['sales_count']; ?></b>件</div>
    </div>
  </div>
</section>

<section class="s-buy ui-section-box">
  <input id="s-buy-open" type="checkbox">
  <label class="info ui-more" for="s-buy-open">
  <div class="notice"> 查看参数<span class="property"></span> </div>
  <ul class="selected" style="display: none;">
  <?php if ($this->_var['properties']): ?>
		<div class="prosx clearfix"><?php $_from = $this->_var['properties']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'property_group');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['property_group']):
?>
			 <?php $_from = $this->_var['property_group']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'property');if (count($_from)):
    foreach ($_from AS $this->_var['property']):
?>
			<p><?php echo htmlspecialchars($this->_var['property']['name']); ?>：<?php echo $this->_var['property']['value']; ?></p>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</div>
		<?php endif; ?>
  </ul>
  </label>
  <form action="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
    <div class="fields">
      <div style="height: 37px;" class="summary">
        <ul style="position: static;" class="summary-c">
          <?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?>
          <li class="price"><span class="key"><?php echo $this->_var['lang']['promote_price']; ?>：</span><b class="price-v"><?php echo $this->_var['goods']['promote_price']; ?></b></li>
          <?php endif; ?> 
          
          <?php if ($this->_var['goods']['goods_number'] != "" && $this->_var['cfg']['show_goodsnumber']): ?> 
          <?php if ($this->_var['goods']['goods_number'] == 0): ?>
          
          <li class="stock"> <span class="key"><?php echo $this->_var['lang']['goods_number']; ?></span><span class="stock-v"><?php echo $this->_var['lang']['stock_up']; ?></span> </li>
          <?php else: ?>
          <li class="stock"> <span class="key"><?php echo $this->_var['lang']['goods_number']; ?></span><span class="stock-v"> <?php echo $this->_var['goods']['goods_number']; ?> <?php echo $this->_var['goods']['measure_unit']; ?></span> 件</li>
          <?php endif; ?> 
          <?php endif; ?>
        </ul>
      </div>
      <div class="ui-sku"> 
         
        <?php $_from = $this->_var['specification']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('spec_key', 'spec');if (count($_from)):
    foreach ($_from AS $this->_var['spec_key'] => $this->_var['spec']):
?>
        <div class="ui-sku-prop">
          <h2><?php echo $this->_var['spec']['name']; ?>：</h2>
          <div class="items"> 
             
            <?php if ($this->_var['spec']['attr_type'] == 1): ?> 
            <?php if ($this->_var['cfg']['goodsattr_style'] == 1): ?> 
            <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
            <input data-img="" autocomplete="off" value="<?php echo $this->_var['value']['id']; ?>" name="spec_<?php echo $this->_var['spec_key']; ?>" id="spec_value_<?php echo $this->_var['value']['id']; ?>" <?php if ($this->_var['key'] == 0): ?>checked<?php endif; ?> type="radio">
            <label for="spec_value_<?php echo $this->_var['value']['id']; ?>"><?php echo $this->_var['value']['label']; ?>[<?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?> <?php echo $this->_var['value']['format_price']; ?>]</label>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
            <?php else: ?>
            <select name="spec_<?php echo $this->_var['spec_key']; ?>" onchange="changePrice()">
              <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
              <option label="<?php echo $this->_var['value']['label']; ?>" value="<?php echo $this->_var['value']['id']; ?>"><?php echo $this->_var['value']['label']; ?> <?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?><?php if ($this->_var['value']['price'] != 0): ?><?php echo $this->_var['value']['format_price']; ?><?php endif; ?></option>
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </select>
            <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
            <?php endif; ?> 
            <?php else: ?> 
            
            <?php endif; ?> 
             
          </div>
        </div>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
         
      </div>
      <div class="service" style="display:none;">
        <h2>服务：</h2>
        <div class="items"> </div>
      </div>
      <div class="quantity">
        <h2>数量：</h2>
        <div class="items"> <span class="ui-number"> 
          
          <?php if ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['is_gift'] == 0 && $this->_var['goods']['parent_id'] == 0): ?>
          <button type="button" class="decrease" onclick="changenum( - 1)">-</button>
          <input class="num" name="number" id="goods_number" autocomplete="off" value="1" min="1" max="<?php echo $this->_var['goods']['goods_number']; ?>" type="number">
          <button type="button" class="increase" onclick="changenum(1)">+</button>
          <?php else: ?> 
          <?php echo $this->_var['goods']['goods_number']; ?> 
          <?php endif; ?> 
          </span> <span class="purchase" style="display:none;">限购<span class="purchase-v"></span>件</span> </div>
      </div>
    </div>
    <div class="option" > 
      <script language="javascript" type="text/javascript">
            function showDiv(){
                document.getElementById('popDiv').style.display = 'block';
				document.getElementById('hidDiv').style.display = 'block';
				document.getElementById('cartNum').innerHTML = document.getElementById('goods_number').value;
            }
            function closeDiv(){
                document.getElementById('popDiv').style.display = 'none';
				document.getElementById('hidDiv').style.display = 'none';
            }
     </script>
      <button type="button" class="btn buy" onClick="addToCart1(<?php echo $this->_var['goods']['goods_id']; ?>)">立即购买</button>
      <button type="button" class="btn cart" onclick="addToCart(<?php echo $this->_var['goods']['goods_id']; ?>);showDiv()">加入购物车</button>
      
      <div class="tipMask" id="hidDiv" style="display:none" ></div>
      <div class="popGeneral" id="popDiv" style="width:98%" >
        <div class="top_tcgeneral">
          <h4>商品加入购物车</h4>
          <span class="close_tcg" onclick="closeDiv()"><a href="javascript:"  style=" display:inline-block; color:#fff; ">关闭</a></span> </div>
        <div id="addCartWin" class="spop">
          <div class="spopro clearfix">
            <table width="100%" border="0">
              <tr>
                <td><div class="spopimg"> <img width="115" height="115" src="<?php echo $this->_var['goods']['goods_img']; ?>"> </div></td>
                <td valign="top" style="text-align:left"><strong class="spopstitle" style="display:block; color:#333; padding-bottom:10px;"><?php echo $this->_var['goods']['goods_name']; ?></strong> <span> 加入数量： <b id="cartNum"></b> </span> <span> 总计金额： <b><?php if ($this->_var['goods']['is_promote']): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price_formated']; ?><?php endif; ?></b> </span> 
                  <!--<div id="Cart_total"></div>--></td>
              </tr>
              <tr>
                <td colspan="2">&nbsp;</td>
              </tr>
            </table>
            <div class="spopbox">
              <div class="spopbtn"> <a class="sview close_tcg" onclick="closeDiv()" href="javascript:void(0);">继续购物</a> <a class="sbuy" href="flow.php">去结算</a> </div>
            </div>
          </div>
        </div>
      </div>
       
    </div>
  </form>
</section>

<section class="s-detail">
  <header   id="inner" style="position: static; top: 0px;height: 40px; width:100% ">
    <ul style="position: static;" id="detail_nav">
      <li class="current" onClick="tab_lick(this)" ><a href="#detail-desc">详情</a> </li>
      <li onClick="tab_lick(this)"><a href="#detail-review">评价 <span class="review-count">(<?php echo $this->_var['goods']['commnet_count']; ?>)</span> </a> </li>
      <li onClick="tab_lick(this)"><a href="#detail-recommend">热销</a></li>
    </ul>
  </header>
  <script type="text/javascript">
var obj11 = document.getElementById("inner");
var top11 = getTop(obj11);
var isIE6 = /msie 6/i.test(navigator.userAgent);
window.onscroll = function(){
	var bodyScrollTop = document.documentElement.scrollTop || document.body.scrollTop;
	if (bodyScrollTop > top11){
		obj11.style.position = (isIE6) ? "absolute" : "fixed";
		obj11.style.top = (isIE6) ? bodyScrollTop + "px" : "0px";
	} else {
		obj11.style.position = "static";
	}
}
function getTop(e){
	var offset = e.offsetTop;
	if(e.offsetParent != null) offset += getTop(e.offsetParent);
	return offset;
}
</script>
  <div class="wrap"> 
    <!--<div class="scroller" style="transition: -webkit-transform 0ms cubic-bezier(0, 0, 0.25, 1); -webkit-transition: -webkit-transform 0ms cubic-bezier(0, 0, 0.25, 1); -webkit-transform: translate3d(0px, 0, 0);"> -->
    <div class="scroller"> 
      
      <div class="m-desc current" id="detail-desc">
        <div class="content"> <?php echo $this->_var['goods']['goods_desc']; ?> </div>
      </div>
      <div class="m-review" id="detail-review">
        <div class="content"> <?php echo $this->fetch('library/comments.lbi'); ?> </div>
      </div>
       
      
      <div class="m-recommend" id="detail-recommend">
        <div class="content">
          <div class="non-standard">
            <ul class="col">
              <?php $_from = $this->_var['related_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'releated_goods_data');$this->_foreach['promotion_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['promotion_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['releated_goods_data']):
        $this->_foreach['promotion_foreach']['iteration']++;
?> 
              <?php if (($this->_foreach['promotion_foreach']['iteration'] - 1) % 2 == 0): ?>
              <li> <a href="<?php echo $this->_var['goods']['url']; ?>">
                <div class="summary"> <img src="../<?php echo $this->_var['releated_goods_data']['goods_thumb']; ?>" alt=""/>
                  <div class="price"> 
                    
                    <?php if ($this->_var['releated_goods_data']['promote_price'] != 0): ?> 
                    <?php echo $this->_var['releated_goods_data']['formated_promote_price']; ?> 
                    <?php else: ?> 
                    <?php echo $this->_var['releated_goods_data']['shop_price']; ?> 
                    <?php endif; ?> 
                    
                  </div>
                </div>
                <?php if ($this->_var['goods']['goods_comment']): ?>
                <div class="reviews"> 
                  <?php $_from = $this->_var['goods']['goods_comment']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comment');$this->_foreach['comment'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['comment']['total'] > 0):
    foreach ($_from AS $this->_var['comment']):
        $this->_foreach['comment']['iteration']++;
?> 
                  <?php if ($this->_foreach['comment']['iteration'] < 4): ?>
                  <blockquote> <span class="user"><?php if ($this->_var['comment']['username']): ?><?php echo htmlspecialchars($this->_var['comment']['username']); ?><?php else: ?><?php echo $this->_var['lang']['anonymous']; ?><?php endif; ?></span> <?php echo $this->_var['comment']['content']; ?> </blockquote>
                  <?php endif; ?> 
                  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
                </div>
                <?php endif; ?> 
                </a> </li>
              <?php endif; ?> 
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
              
            </ul>
            <ul class="col">
              
              <?php $_from = $this->_var['related_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'releated_goods_data');$this->_foreach['promotion_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['promotion_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['releated_goods_data']):
        $this->_foreach['promotion_foreach']['iteration']++;
?> 
              <?php if (($this->_foreach['promotion_foreach']['iteration'] - 1) % 2 == 1): ?>
              <li> <a href="<?php echo $this->_var['goods']['url']; ?>">
                <div class="summary"> <img src="../<?php echo $this->_var['releated_goods_data']['goods_thumb']; ?>" alt=""/>
                  <div class="price"> 
                    
                    <?php if ($this->_var['releated_goods_data']['promote_price'] != 0): ?> 
                    <?php echo $this->_var['releated_goods_data']['formated_promote_price']; ?> 
                    <?php else: ?> 
                    <?php echo $this->_var['releated_goods_data']['shop_price']; ?> 
                    <?php endif; ?> 
                    
                  </div>
                </div>
                <?php if ($this->_var['goods']['goods_comment']): ?>
                <div class="reviews"> 
                  <?php $_from = $this->_var['goods']['goods_comment']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comment');$this->_foreach['comment'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['comment']['total'] > 0):
    foreach ($_from AS $this->_var['comment']):
        $this->_foreach['comment']['iteration']++;
?> 
                  <?php if ($this->_foreach['comment']['iteration'] < 4): ?>
                  <blockquote> <span class="user"><?php if ($this->_var['comment']['username']): ?><?php echo htmlspecialchars($this->_var['comment']['username']); ?><?php else: ?><?php echo $this->_var['lang']['anonymous']; ?><?php endif; ?></span> <?php echo $this->_var['comment']['content']; ?> </blockquote>
                  <?php endif; ?> 
                  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
                </div>
                <?php endif; ?> 
                </a> </li>
              <?php endif; ?> 
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
          </div>
        </div>
      </div>
       
    </div>
  </div>
</section>
<input type="hidden" id="redirectClientFlag" value="1">
<script type="text/tpl" id="tpl-error">
 <div class="ui-error">${msg}</div>
</script> 
<?php echo $this->fetch('library/page_footer_goods.lbi'); ?> 
 


</body>
<script type="text/javascript">
var goods_id = <?php echo $this->_var['goods_id']; ?>;
var goodsattr_style = <?php echo empty($this->_var['cfg']['goodsattr_style']) ? '1' : $this->_var['cfg']['goodsattr_style']; ?>;
var gmt_end_time = <?php echo empty($this->_var['promote_end_time']) ? '0' : $this->_var['promote_end_time']; ?>;
<?php $_from = $this->_var['lang']['goods_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var goodsId = <?php echo $this->_var['goods_id']; ?>;
var now_time = <?php echo $this->_var['now_time']; ?>;


onload = function(){
  changePrice();
  fixpng();
  try {onload_leftTime();}
  catch (e) {}
}

/**
 * 点选可选属性或改变数量时修改商品价格的函数
 */
function changePrice()
{
	

  var attr = getSelectedAttributes(document.forms['ECS_FORMBUY']);
  var qty = document.forms['ECS_FORMBUY'].elements['number'].value;
  Ajax.call('goods.php', 'act=price&id=' + goodsId + '&attr=' + attr + '&number=' + qty, changePriceResponse, 'GET', 'JSON');
}

/**
 * 接收返回的信息
 */
function changePriceResponse(res)
{
  if (res.err_msg.length > 0)
  {
    alert(res.err_msg);
  }
  else
  {
    document.forms['ECS_FORMBUY'].elements['number'].value = res.qty;

    if (document.getElementById('ECS_GOODS_AMOUNT'))
      document.getElementById('ECS_GOODS_AMOUNT').innerHTML = res.result;
  }
}

</script>
<?php echo $this->smarty_insert_scripts(array('files'=>'transport.js,utils.js')); ?>
</html>