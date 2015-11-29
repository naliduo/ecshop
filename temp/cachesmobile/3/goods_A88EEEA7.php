<?php exit;?>a:3:{s:8:"template";a:3:{i:0;s:71:"/home/admin/domains/5.hi5.cc/public_html/tmall/themes/default/goods.dwt";i:1;s:82:"/home/admin/domains/5.hi5.cc/public_html/tmall/themes/default/library/comments.lbi";i:2;s:91:"/home/admin/domains/5.hi5.cc/public_html/tmall/themes/default/library/page_footer_goods.lbi";}s:7:"expires";i:1402455604;s:8:"maketime";i:1402452004;}<!DOCTYPE html>
<html manifest="/manifest/tmallCateAppCache.manifest">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<title>小蜜蜂 手机支架_小米手机_ECSHOP演示站触屏版</title>
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" name="viewport">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<meta content="telephone=no" name="format-detection">
<LINK rel=apple-touch-icon-precomposed href="themes/default/images/touch-icon.png">
<LINK rel="shortcut icon" type=image/x-icon href="themes/default/images/favicon2.ico">
<LINK rel=stylesheet type=text/css href="themes/default/goods.css">
<LINK rel=stylesheet type=text/css href="themes/default/cart.css">
<script type="text/javascript" src="js/common.js"></script><SCRIPT src="themes/default/js/jquery.js"></script>
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
    <!--<div><a href="javascript:showPic()"><img src="../images/201402/thumb_img/14_thumb_G_1393532143495.jpg"  alt="小蜜蜂 手机支架" /></a></div>-->
    <ul>
      <li><a href="javascript:showPic()"> <img src="../../images/201402/goods_img/14_G_1393532143711.jpg"  alt="小蜜蜂 手机支架" /></a></li>
       
       
       
       
          </ul>
  </div>
  <div class="icons">
    <ul>
         <i class="current"></i>
      
     	 
         <i class="current"></i>
         
         </ul>
  </div>
 </div>
</section>
<section class="s-slider ui-slider" style="display:none;">
  <div id="slideBox" class="slideBox">
    <div  id="Ggallery" class="ui-gallery ui-slider" >
      <div class="bd" style="transition-property: transform; transition-timing-function: cubic-bezier(0, 0, 0.25, 1); transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
        <ul style="width:100%;">
           
           
           
           
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
 
<section class="s-summary"> <a class="m-fav" id="collect_box" href="javascript:collect(14)" style="display: inline;">0</a>
  <div class="title">
    <h1> 小蜜蜂 手机支架 <b></b> </h1>
  </div>
  <div class="summary">
    <ul class="m-prices">
            <li class="deposit item"> <span class="deposit item">促销价：<b>￥9元</b> </span> </li>
            <li> <span class="deposit item">本店售价：<b  id="ECS_SHOPPRICE">￥19元</b></span> </li>
            <li class="o-price"> <span class="key">市场价格：</span>
        <div class="value"> <del> ￥23元 </del> </div>
      </li>
          </ul>
     
    <script type="text/javascript" src="js/lefttime.js"></script>    <div class="m-presell">
      <div class="info"> <span class="time">时间剩余：
        <time class="countdown" id="leftTime">请稍等, 正在载入中...</time>
        </span> </div>
      <a class="rule" href="#">查看促销规则</a> </div>
        
    <div class="m-sales"> <span class="key">销量：</span>
      <div class="value"><b>0</b>件</div>
    </div>
  </div>
</section>
<section class="s-buy ui-section-box">
  <input id="s-buy-open" type="checkbox">
  <label class="info ui-more" for="s-buy-open">
  <div class="notice"> 查看参数<span class="property"></span> </div>
  <ul class="selected" style="display: none;">
    </ul>
  </label>
  <form action="javascript:addToCart(14)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
    <div class="fields">
      <div style="height: 37px;" class="summary">
        <ul style="position: static;" class="summary-c">
                    <li class="price"><span class="key">促销价：：</span><b class="price-v">￥9元</b></li>
           
          
           
                    <li class="stock"> <span class="key">商品库存：</span><span class="stock-v"> 10000 </span> 件</li>
           
                  </ul>
      </div>
      <div class="ui-sku"> 
         
         
         
      </div>
      <div class="service" style="display:none;">
        <h2>服务：</h2>
        <div class="items"> </div>
      </div>
      <div class="quantity">
        <h2>数量：</h2>
        <div class="items"> <span class="ui-number"> 
          
                    <button type="button" class="decrease" onclick="changenum( - 1)">-</button>
          <input class="num" name="number" id="goods_number" autocomplete="off" value="1" min="1" max="10000" type="number">
          <button type="button" class="increase" onclick="changenum(1)">+</button>
           
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
      <button type="button" class="btn buy" onClick="addToCart1(14)">立即购买</button>
      <button type="button" class="btn cart" onclick="addToCart(14);showDiv()">加入购物车</button>
      
      <div class="tipMask" id="hidDiv" style="display:none" ></div>
      <div class="popGeneral" id="popDiv" style="width:98%" >
        <div class="top_tcgeneral">
          <h4>商品加入购物车</h4>
          <span class="close_tcg" onclick="closeDiv()"><a href="javascript:"  style=" display:inline-block; color:#fff; ">关闭</a></span> </div>
        <div id="addCartWin" class="spop">
          <div class="spopro clearfix">
            <table width="100%" border="0">
              <tr>
                <td><div class="spopimg"> <img width="115" height="115" src="../images/201402/goods_img/14_G_1393532143711.jpg"> </div></td>
                <td valign="top" style="text-align:left"><strong class="spopstitle" style="display:block; color:#333; padding-bottom:10px;">小蜜蜂 手机支架</strong> <span> 加入数量： <b id="cartNum"></b> </span> <span> 总计金额： <b>￥9元</b> </span> 
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
      <li onClick="tab_lick(this)"><a href="#detail-review">评价 <span class="review-count">(0)</span> </a> </li>
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
        <div class="content"> <div class="bd">
<div id="goodsDesc" class="goods-desc-con">
<p><img src="http://img01.mifile.cn/images/accs/xmf_01.jpg" alt="" /><img src="http://img01.mifile.cn/images/accs/xmf_02.jpg" alt="" /><img src="http://img01.mifile.cn/images/accs/xmf_03.jpg" alt="" /><img src="http://img01.mifile.cn/images/accs/xmf_04.jpg" alt="" /><img src="http://img01.mifile.cn/images/accs/xmf_05.jpg" alt="" /><img src="http://p.www.xiaomi.com/images/1202/xinluzhang02.jpg" alt="" /><img style="width: 720px; height: 871px; " src="http://p.www.xiaomi.com/images/1202/xinliuzhang03.jpg" alt="" /><img src="http://p.www.xiaomi.com/images/1202/xinluzhang04.jpg" alt="" /></p>
</div>
</div> </div>
      </div>
      <div class="m-review" id="detail-review">
        <div class="content"> <script type="text/javascript" src="js/transport.js"></script><script type="text/javascript" src="js/utils.js"></script><div id="ECS_COMMENT"> 554fcae493e564ee0dc75bdf2ebf94cacomments|a:3:{s:4:"name";s:8:"comments";s:4:"type";i:0;s:2:"id";i:14;}554fcae493e564ee0dc75bdf2ebf94ca</div>
 </div>
      </div>
       
      
      <div class="m-recommend" id="detail-recommend">
        <div class="content">
          <div class="non-standard">
            <ul class="col">
                            
            </ul>
            <ul class="col">
              
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
<footer class="s-footer">
  <div class="userbox">
    <div class="login-info"> <a href="user.php">登录</a> <a href="user.php?act=register">注册</a> </div>
    <a class="help" href="article_cat.php?id=1">服务中心</a> </div>
  <a href="#app-detail" class="top">返回顶部</a> </footer>
 
<div class="footcbg">
<div class="wid20"><a href="/mobile/"><img src="themes/default/images/c1.jpg"/></a></div>
<div class="wid20"><a href="/mobile/search.php"><img src="themes/default/images/c2.jpg"/></a></div>
<div class="wid20"><a href="/mobile/allcate.php"><img src="themes/default/images/c3.jpg"/></a></div>
<div class="wid20"><a href="/mobile/flow.php"><img src="themes/default/images/c4.jpg"/></a></div>
<div class="wid20"><a href="/mobile/user.php"><img src="themes/default/images/c5.jpg"/></a></div>
</div>
 
 
</body>
<script type="text/javascript">
var goods_id = 14;
var goodsattr_style = 1;
var gmt_end_time = 1480406400;
var day = "天";
var hour = "小时";
var minute = "分钟";
var second = "秒";
var end = "结束";
var goodsId = 14;
var now_time = 1402423204;
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
</html>