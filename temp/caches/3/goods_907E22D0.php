<?php exit;?>a:3:{s:8:"template";a:5:{i:0;s:35:"D:/WWW/shop/themes/xm2013/goods.dwt";i:1;s:49:"D:/WWW/shop/themes/xm2013/library/page_header.lbi";i:2;s:45:"D:/WWW/shop/themes/xm2013/library/ur_here.lbi";i:3;s:45:"D:/WWW/shop/themes/xm2013/library/history.lbi";i:4;s:49:"D:/WWW/shop/themes/xm2013/library/page_footer.lbi";}s:7:"expires";i:1446897187;s:8:"maketime";i:1446893587;}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>花菜_花菜类_蔬菜类_君禾园</title>
<link rel="shortcut icon" href="favicon.ico"/>
<link rel="icon" href="animated_favicon.gif" type="image/gif"/>
<link href="themes/xm2013/style.css" rel="stylesheet" type="text/css"/>
<link href="themes/xm2013/base.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/common.js"></script><script type="text/javascript" src="js/transport.js"></script>
<script type="text/javascript">
function $id(element) {
  return document.getElementById(element);
}
//切屏--是按钮，_v是内容平台，_h是内容库
function reg(str){
  var bt=$id(str+"_b").getElementsByTagName("h2");
  for(var i=0;i<bt.length;i++){
    bt[i].subj=str;
    bt[i].pai=i;
    bt[i].style.cursor="pointer";
    bt[i].onclick=function(){
      $id(this.subj+"_v").innerHTML=$id(this.subj+"_h").getElementsByTagName("blockquote")[this.pai].innerHTML;
      for(var j=0;j<$id(this.subj+"_b").getElementsByTagName("h2").length;j++){
        var _bt=$id(this.subj+"_b").getElementsByTagName("h2")[j];
        var ison=j==this.pai;
        _bt.className=(ison?"":"h2bg");
      }
    }
  }
  $id(str+"_h").className="none";
  $id(str+"_v").innerHTML=$id(str+"_h").getElementsByTagName("blockquote")[0].innerHTML;
}
</script>
<script>
var _mvq = _mvq || [];
var xhNS={
        your_domain:window.location.protocol.toString()+'\/\/'+window.location.host.toString()+'\/'
}
_mvq.push(['$setAccount', 'm-29971-0']);
_mvq.push(['$setGeneral', 'goodsdetail', '', '', '0']);
_mvq.push(['$logConversion']);
_mvq.push(['$addGoods', '32', '4', '花菜', '130', '16.80', xhNS.your_domain+'images/201411/goods_img/130_G_1414968764251.jpg']);
_mvq.push(['$logData']);
var _mbausername='';
var _mbauserid='0';
</script>
<script type="text/javascript">
function picturs(){
	var goodsimg = document.getElementById("goodsimg");
	var imglist = document.getElementById("imglist");
	var imgnum = imglist.getElementsByTagName("li");
	for(var i = 0; i<imgnum.length; i++){
		imgnum[i].onclick=function(){
			var lang = this.getAttribute("lang");
			goodsimg.setAttribute("src",lang);
			for(var j=0; j<imgnum.length; j++){
				if(imgnum[j].getAttribute("class") =="onbg" || imgnum[j].getAttribute("className") =="onbg"){
					imgnum[j].className = "autobg";
					break;
				}
			}
			this.className = "onbg";
		}
	}
}
</script>					
</head>
<body><script src="http://libs.baidu.com/jquery/2.0.3/jquery.min.js"></script>
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
            <label id="header_menu_top_login"><font id="ECS_MEMBERZONE">554fcae493e564ee0dc75bdf2ebf94camember_info|a:1:{s:4:"name";s:11:"member_info";}554fcae493e564ee0dc75bdf2ebf94ca</font></label>
          </li>
          <li><a href="http://www.dream-gardens.com.cn/">君禾园官网</a></li>
        </ul>
      </div>
      <div class="search">
        <form id="user_search" action="search.php" method='get'>
          <input type="text" id="keyword" name="keywords" class="txt" value="" placeholder="请输入关键词" />
          <input type="submit"  class="mbtn" value=''/>
          <label class="hot">554fcae493e564ee0dc75bdf2ebf94casearchkeywords|a:1:{s:4:"name";s:14:"searchkeywords";}554fcae493e564ee0dc75bdf2ebf94ca</label>
        </form>
      </div>
    <div style="margin-top:3px;" class="xshop buy_car_bg clearfix"  onmouseover="this.className='xshop hover_on buy_car_bg ul1_on'" onmouseout=  "this.className='xshop buy_car_bg'">
	<img src="themes/xm2013/images/nav_cat.gif" style="float:left; padding-right:5px; padding-left:10px; padding-top:7px;" />
	<div id="ECS_CARTINFO">
   <p><a href="flow.php">554fcae493e564ee0dc75bdf2ebf94cacart_info|a:1:{s:4:"name";s:9:"cart_info";}554fcae493e564ee0dc75bdf2ebf94ca</a></p>
     </div> </div>
      <!--<div style="position: absolute;right: 31px;top: 78px;"><a target="_blank" id="kaifanggm" href="#"></a></div>-->
    </div>
  </div>
  <div class="nav">
    <div class="clearfix"><strong id="btnnav" class="side"><a class="catenav">全部商品分类<em class="tri"></em></a></strong>
      <div class="lnks clearfix">
        <ul class="lnks-li">
          <li><a class="lnk  " href="index.php">首页</a></li>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk " href="http://www.dream-gardens.com.cn/expertise/" > 我的服务 </a></li>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk " href="http://www.dream-gardens.com.cn/about/" > 农场故事 </a></li>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk " href="http://www.dream-gardens.com.cn/life/" > 慢生活 </a></li>
          <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk " href="http://www.dream-gardens.com.cn/news/" > 君禾动态 </a></li>
                         <li class="phonelistarr" onmouseover="this.className='phonelistarr nhover'" onmouseout="this.className='phonelistarr'"><a class="lnk " href="http://www.dream-gardens.com.cn/#contact" > 联系我们 </a></li>
        </ul>
      </div>
    </div>
    <div class="showlist snone" id="div_all_cat">
      <ul class="lists">
      <li onmouseover="this.className='navhover'" onmouseout="this.className=''" class="">
      <a class="tit" href="topic.php?topic_id=4">节气饮食</a><em class="icon-common icon-common-arrowright"></em>
      		       <label class="tri"><i></i></label>
      </li>
	          <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=9">会员卡办理</a><em class="icon-common icon-common-arrowright"></em>
		        </li>
		        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=1">蔬菜类</a><em class="icon-common icon-common-arrowright"></em>
		          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			                  <dd><a  href="category.php?id=11">叶菜类</a></dd>
                              <dd><a  href="category.php?id=12">茎菜类</a></dd>
                              <dd><a  href="category.php?id=32">花菜类</a></dd>
                              <dd><a  href="category.php?id=10">根菜类</a></dd>
                              <dd><a  href="category.php?id=33">菌菇类</a></dd>
                              <dd><a  href="category.php?id=30">芽菜类</a></dd>
                              <dd><a  href="category.php?id=31">调味料类</a></dd>
                            </dl>
            </div>
          </div>
		          </li>
		        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=29">瓜果豆类</a><em class="icon-common icon-common-arrowright"></em>
		          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			                  <dd><a  href="category.php?id=34">瓜果类</a></dd>
                              <dd><a  href="category.php?id=28">豆类</a></dd>
                            </dl>
            </div>
          </div>
		          </li>
		        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=2">五谷杂粮</a><em class="icon-common icon-common-arrowright"></em>
		          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			                  <dd><a  href="category.php?id=15">禾薯类</a></dd>
                              <dd><a  href="category.php?id=14">豆类</a></dd>
                              <dd><a  href="category.php?id=13">谷物类</a></dd>
                            </dl>
            </div>
          </div>
		          </li>
		        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=4">肉禽蛋产品</a><em class="icon-common icon-common-arrowright"></em>
		          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			                  <dd><a  href="category.php?id=21">禽类</a></dd>
                              <dd><a  href="category.php?id=23">蛋类</a></dd>
                              <dd><a  href="category.php?id=22">肉类</a></dd>
                            </dl>
            </div>
          </div>
		          </li>
		        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=7">农场特色产品</a><em class="icon-common icon-common-arrowright"></em>
		          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			                  <dd><a  href="category.php?id=41">新鲜腌制</a></dd>
                              <dd><a  href="category.php?id=40">干货类</a></dd>
                              <dd><a  href="category.php?id=6">糕点产品</a></dd>
                            </dl>
            </div>
          </div>
		          </li>
		        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=8">水产产品</a><em class="icon-common icon-common-arrowright"></em>
		          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			                  <dd><a  href="category.php?id=42">鱼类</a></dd>
                              <dd><a  href="category.php?id=43">蟹类</a></dd>
                            </dl>
            </div>
          </div>
		          </li>
		        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=3">推广产品</a><em class="icon-common icon-common-arrowright"></em>
		          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			                  <dd><a  href="category.php?id=16">蔬果类</a></dd>
                              <dd><a  href="category.php?id=37">营养品</a></dd>
                            </dl>
            </div>
          </div>
		          </li>
		        <li onmouseover="this.className='navhover'" onmouseout="this.className=''"><a class="tit" href="category.php?id=5">其他</a><em class="icon-common icon-common-arrowright"></em>
		          <label class="tri"><i></i></label>
          <div class="show clearfix">
            <div class="lt">
              <dl class="firstdl">
			                  <dd><a  href="category.php?id=39">农场活动费用</a></dd>
                              <dd><a  href="category.php?id=44">包装类</a></dd>
                            </dl>
            </div>
          </div>
		          </li>
		      </ul>
    </div>
  </div>
</div>
<script type="text/javascript" src="themes/xm2013/js/xm.js"></script><div class="block box">
  <div id="ur_here">
    <div class="ur_here">当前位置: <a href=".">首页</a> <code>&gt;</code> <a href="category.php?id=1">蔬菜类</a> <code>&gt;</code> <a href="category.php?id=32">花菜类</a> <code>&gt;</code> 花菜</div>
  </div>
</div>
<div class="blank"></div>
<div class="block clearfix">
  <div class="goods-detail-info">
    <div class="goods-pic-box">
      <div id="goodsInfo" class="clearfix">
        <div class="goods-big-pic">
          <div class="thumb"><img src="images/201411/goods_img/130_G_1414968764251.jpg" alt="花菜" id="goodsimg" style="cursor:pointer;" onclick="window.open('gallery.php?id=130'); return false;"  /></div>
          <div class="blank5"></div>
          <div class="goods-small-pic clearfix">
            <ul id="imglist">
			              <li class="onbg" lang="images/201411/goods_img/130_P_1414968764577.png"><img src="images/201411/thumb_img/130_thumb_P_1414968764765.jpg" alt="花菜" /></li>
			  
            </ul>
          </div>
          <script type="text/javascript">picturs();</script>
          <div class="blank5"></div>
        </div>
        <div class="textInfo">
          <form action="javascript:addToCart(130)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
            <div class="linel clearfix">
              <p class="name">花菜</p>
              <p class="grief"></p>
            </div><div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"24"},"share":{},"image":{"viewList":["qzone","tqq","tsina","weixin","sqq","renren"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tqq","tsina","weixin","sqq","renren"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
            <ul>
              <li class="clearfix">
                <dd class="ddL"><strong>本店售价：</strong><font class="shop" style="font-size:18px;font-weight:bold;" id="ECS_SHOPPRICE">￥16.80元</font></dd>
                                                                                                                                                                   <dd class="ddR"><strong>商品编号：</strong>PV010601</dd>
              </li>
              <li>
                <dd class="ddL"><strong>市场价格：</strong><font class="market">￥19.32元</font></dd>
                <dd class="ddR"><strong>商品品牌：</strong><a href="brand.php?id=4" >君禾园</a></dd>
              </li>
              <li class="clearfix">
                <dd class="ddL"> 商品库存：<font style="color:#FFB03B">12 </font></dd>
                <dd class="ddR"> 商品点击数：<font style="color:#FFB03B; font-weight:bold;"> 95</font>次</dd>
              </li>
              <li class="clearfix"><strong>购买此商品可使用：</strong><font class="f1">0 </font></li>
              <li class="colorh clearfix"></li>
              
              
              
 <script language="javascript">
  function changeAtt(t,src,key) {
    
	document.getElementById('spec_value_'+src).checked='checked';
    var itemObj = document.getElementById("catt_"+key);
	var elems = itemObj.getElementsByTagName("a");
    for (i = 0; i < elems.length; i ++ )
	{
		var prefix = elems[i].name.substr(0, 7);
		if (prefix == 'spec_a_')
		{
		   elems[i].className = '';
		}
	}
	t.className = "cattsel";
	changePrice();
}
</script>
  
  
 <style type="text/css">
	  <!--
	  /*--------------颜色选择器CSS添加-------------*/
.propertySelect{padding: 10px 0 0px 4px}
.propertySelect strong{float:left;font-weight:normal; text-align:left}
.propertySelect .catt {height:auto;overflow:hidden;}
.propertySelect .catt a{border: #c8c9cd 1px solid;text-align: center;background-color: #fff;display: block;white-space: nowrap;color: #666;text-decoration: none;float:left; margin-top:4px; margin-left:2px; margin-right:2px; position:relative}
.propertySelect .catt a p{border: #fff 1px solid; padding:2px 5px;background-color: #fff;}
.propertySelect .catt a p.padd{padding:0px;}
.propertySelect .catt a:hover {border:#ff6701 1px solid;}
.propertySelect .catt a:hover p{border: #ff6701 1px solid;}
.propertySelect .catt a:focus {outline-style:none;}
.propertySelect .catt .cattsel {background:#ff6701;border: #ff6701 1px solid;}
.propertySelect .catt .cattsel a:hover {border: #ff6701 1px solid;}
.propertySelect .catt .cattsel p{border: #ff6701 1px solid;}
.propertySelect .catt em{font-style:normal}
.propertySelect .catt .cattsel i{background:url(themes/xm2013/images/test.png) no-repeat scroll right bottom transparent;bottom:0;height:16px;position:absolute;right:0;width:16px;}
.propertySelect .catt .cattsel a:hover i{background:url(themes/xm2013/images/test.png) no-repeat scroll right bottom transparent;}
.propertySelect img{width:50px; height:50px;}
-->
</style>
           
      
              
              
              <li class="buybox clearfix">
                <div class="cnum">
                  <div class="f_l icur">购买数量：</div>
                  <a href="javascript:void(0);" onclick="goods_cut();changePrice()" class="imgl"></a>
                  <input name="number" type="text" id="number" class="inum" value="1" size="4" onblur="changePrice();get_shipping_list(forms['ECS_FORMBUY'],105);"/>
                  <a href="javascript:void(0);"  onclick="goods_add();changePrice()" class="imgr"></a></div>
                <div class="f_l"><strong class="orange">商品总价：<font id="ECS_GOODS_AMOUNT" class="shop"></font></strong></div>
                <script language="javascript" type="text/javascript">
			function goods_cut(){
				var num_val=document.getElementById('number');
				var new_num=num_val.value;
				 if(isNaN(new_num)){alert('请输入数字');return false}
				var Num = parseInt(new_num);
				if(Num>1)Num=Num-1;
				num_val.value=Num;
			}
			function goods_add(){
				var num_val=document.getElementById('number');
				var new_num=num_val.value;
				 if(isNaN(new_num)){alert('请输入数字');return false}
				var Num = parseInt(new_num);
				Num=Num+1;
				num_val.value=Num;
			}
	    </script>
                <div class="blank"></div>
                <div class="buyt"><a href="javascript:addToCart(130)"><img src="themes/xm2013/images/bnt_cat1.gif"/></a> &nbsp;&nbsp; <a href="javascript:collect(130)"><img src="themes/xm2013/images/bnt_colles.gif" /></a></div>
              </li>
            </ul>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="blank"></div>
<div class="block clearfix">
  <div class="AreaL">
  <div class="xm-box">
      <div class="hd">
        <h2 class="title">你可能还喜欢</h2>
      </div>
      <div class="bd">
        <ul class="xm-goods-sublist xm-goods-sublist-l">
		        </ul>
      </div>
    </div>
<style>
#clear_history{border:0px; width:200px}
#clear_history a{float:right}
</style>
<div class="xm-box" id='history_div'>
    <div class="clearfix">
      <h3><span>你刚刚看过</span></h3>
      <div class="boxCenterList clearfix" id='history_list' style="padding:3px;border-top:none;">
	 
       554fcae493e564ee0dc75bdf2ebf94cahistory|a:1:{s:4:"name";s:7:"history";}554fcae493e564ee0dc75bdf2ebf94ca      </div>
    </div>
  </div>
  <script type="text/javascript">
if (document.getElementById('history_list').innerHTML.replace(/\s/g,'').length<1)
{
    document.getElementById('history_div').style.display='none';
}
else
{
    document.getElementById('history_div').style.display='block';
}
function clear_history()
{
Ajax.call('user.php', 'act=clear_history',clear_history_Response, 'GET', 'TEXT',1,1);
}
function clear_history_Response(res)
{
document.getElementById('history_list').innerHTML = '您已清空最近浏览过的商品';
}
</script></div>
  <div class="AreaR xm-box">
    <h3 style="padding:10px 5px 0 0; height:32px; background:none; border:none">
      <div id="com_b" class="history clearfix">
        <h2>产品特色</h2>
                    <h2 class="h2bg">种植日记</h2>
            <h2 class="h2bg">烹饪方式</h2>
                      </div>
    </h3>
    <div id="com_v" style="border-top:none; padding-top:10px;" ></div>
    <div id="com_h" style="overflow:hidden;">
      <blockquote>
        <p class="MsoNormal" align="left">
	<b><span style="color:#009900;font-size:14px;">产地：君禾园崇明基地</span></b><b><span style="color:#009900;font-size:14px;"> 
        </span></b><b><span style="color:#009900;font-size:14px;">储藏方式：低温储藏</span></b><b><span style="color:#009900;font-size:14px;">         </span></b><b><span style="color:#009900;font-size:14px;">产品包装：每份净重</span></b><b><span style="color:#009900;font-size:14px;">500-650</span></b><b><span style="color:#009900;font-size:14px;">克</span></b><b><span style="color:#009900;font-size:14px;">   </span></b> 
</p>
<p class="MsoNormal" align="left">
	<b><span style="color:#009900;font-size:14px;"><br />
</span></b> 
</p>
<p class="MsoNormal" align="left">
	<b><span style="color:#009900;font-size:14px;">商品详情</span></b> 
</p>
<p class="MsoNormal" align="left">
	<span style="color:#009900;font-size:14px;"><span style="color:#000000;font-family:arial, 宋体, sans-serif;font-size:12px;line-height:24px;background-color:#FFFFFF;">花菜是一种</span><span style="color:#000000;font-size:12px;">粗纤维</span><span style="color:#000000;font-family:arial, 宋体, sans-serif;font-size:12px;line-height:24px;background-color:#FFFFFF;">含量少，品质</span><span style="color:#000000;font-size:12px;">鲜嫩</span><span style="color:#000000;font-family:arial, 宋体, sans-serif;font-size:12px;line-height:24px;background-color:#FFFFFF;">，营养丰富，风味鲜美，人们喜食的</span><span style="color:#000000;font-size:12px;">蔬菜</span><span style="color:#000000;font-family:arial, 宋体, sans-serif;font-size:12px;line-height:24px;background-color:#FFFFFF;">。</span></span> 
</p>
<p class="MsoNormal" align="left">
	<b><span style="color:#009900;font-size:14px;"><b><span style="color:#009900;font-size:14px;"><br />
</span></b></span></b> 
</p>
<p class="MsoNormal" align="left">
	<b><span style="color:#009900;font-size:14px;"><b><span style="color:#009900;font-size:14px;">营养价值：</span></b><br />
</span></b> 
</p>
<p class="MsoNormal" align="left">
	<span style="color:#009900;font-size:14px;"><span style="color:#000000;font-size:12px;">1.花菜的含水量高达90%以上，而且热量较低，用花菜榨汁，每杯240毫升，热量仅23~32千卡。</span><br />
<span style="color:#000000;font-size:12px;">2.与其他大多数的同品种相比，白色的花菜含有低量的维生素A。</span><br />
<span style="color:#000000;font-size:12px;">3.每一杯熟花菜汁提供的维生素C跟一个橘子相等。生的花菜比熟的的花菜至少能多提供20%的维生素C。</span><br />
<span style="color:#000000;font-size:12px;">4.花菜是含有类黄酮最多的食物之一。</span><br />
<span style="color:#000000;font-size:12px;">5.含有丰富的维生素K。 </span><br />
</span> 
</p>
<div>
	<br />
</div>
<p>
	<br />
</p>        <div class="blank"></div>
        
      </blockquote>
      <blockquote>
        <div class="paddbox">
                   </div>
      </blockquote>
      
      <blockquote>
        <div class="paddbox">
          <p class="MsoNormal" style="margin-left:18.0pt;">
	<span style="line-height:1.5;"></span>
</p>
<h4 style="font-size:16px;font-weight:400;color:#999999;font-family:'Microsoft YaHei', tahoma, arial, serif;background-color:#FFFFFF;">
	<span style="color:#009900;"><strong>     </strong></span><span style="color:#009900;font-family:SimSun;"><strong>虾干白花菜</strong></span>
</h4>
       <img src="/images/upload/image/20141103/20141103151815_79826.jpg" alt="" /><br />
<p>
	<br />
</p>
<p class="MsoNormal" style="margin-left:18.0pt;">
	<span style="line-height:1.5;">1、
材料准备，花菜摘成小朵，清水冲洗后用淡盐水浸泡一会；</span>
</p>
<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-18.0pt;">
	<span></span>
</p>
<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-18.0pt;">
	2、
热锅入油，放辣椒、姜片略煸；<span></span>
</p>
<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-18.0pt;">
	3、
下花菜炒稍加煸炒；再放入虾干；<span></span>
</p>
<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-18.0pt;">
	4、  加入盐、糖调味，加清水至材料的<span>2/3</span>处；
</p>
<p class="MsoNormal" style="margin-left:36.0pt;text-indent:-18.0pt;">
	5、  大火烧开后转中火焖至花菜略酥即可，不用收干汤汁，撒葱花起锅即可。
</p>        </div>
      </blockquote>
         </div>
    <script type="text/javascript">
reg("com");
</script>
    <div class="blank"></div>
  </div>
</div>
</div>
<div class="blank5"></div><div class="footer container">
  <div class="footerup">
    <div class="footercont">
      <div class="service clearfix">
	          <dl>
          <dt>购物指南</dt>
		            <dd><a href="article.php?id=7" title="常见问题">常见问题</a></dd>
                    <dd><a href="article.php?id=8" title="会员制度">会员制度</a></dd>
                    <dd><a href="article.php?id=9" title="购买流程">购买流程</a></dd>
                    <dd><a href="article.php?id=23" title="会员卡协议">会员卡协议</a></dd>
                  </dl>
              <dl>
          <dt>支付方式</dt>
		            <dd><a href="article.php?id=10" title="在线支付">在线支付</a></dd>
                    <dd><a href="article.php?id=12" title="发票制度">发票制度</a></dd>
                  </dl>
              <dl>
          <dt>配送方式</dt>
		            <dd><a href="article.php?id=13" title="冷链配送">冷链配送</a></dd>
                    <dd><a href="article.php?id=15" title="配送的范围及费用">配送的范围及费用</a></dd>
                  </dl>
              <dl>
          <dt>售后服务</dt>
		            <dd><a href="article.php?id=16" title="服务流程">服务流程</a></dd>
                    <dd><a href="article.php?id=18" title="服务政策">服务政策</a></dd>
                  </dl>
            <dl>
                            <dt>关注我们</dt>
                            <dd class="sina">
                                <span class="icon-common icon-common-sina"></span>
                                <a href="http://weibo.com/dreamgardens" target="_blank">
                                    新浪微博
                                </a>
                            </dd>
                            <dd id="txweixin" class="facebook">
                                <span class="icon-common icon-common-weixin"></span>
                                <a onclick="weixin()">
                                    官方微信
                                </a>
                            </dd>
                        </dl>
        <div class="online">
          <ul>
            <li class="item1"><span class="icon-common icon-common-tel"></span>400 821 3860</li>
            <li class="item2">企业客户致电021-50306602订购</li>
          
            
            
                              
      
            
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="footerbtm">
    <div class="info"> &copy; 2005-2015 君禾园 版权所有，并保留所有权利。 <img src="themes/xm2013/images/footerbg.gif" /></div>
    <div class="believe"><a target="_blank" href="#"><img src="themes/xm2013/images/f1.gif"></a><a target="_blank" href="#"><img src="themes/xm2013/images/f2.gif"></a><a target="_blank" href="#"><img src="themes/xm2013/images/f3.gif"></a></div>
  </div>
</div>
<script type="text/javascript" src="themes/xm2013/js/kefu.js"></script>
<div id="Fixed">
<a id="goCart" class="btn fl" title="购物车" href="flow.php">购物车</a>
<a id='feedback' class='fl btn' title="求反馈" href="message.php">求反馈</a>
<a id="goTop" class="fl" title="去顶部" href="#top">去顶部</a>
</div>
<div id="boxweixin" class="modal hide xmweixin" data-width="520" data-height="400" style="width: 520px; height: 400px; display: none;" aria-hidden="true">
            <div class="modal-header">
                <a class="close" data-dismiss="modal">×</a>
                <h3>官方微信二维码</h3>
            </div>
            <div class="modal-body">
                <p>打开微信，点选“发现”，选择“扫一扫”功能，<br>对准下方二维码即可。</p>
                <p>现在关注“君禾园”,即可查看24节气精选养生话题</p>
                <img alt="" src="themes/xm2013/images/weixin.jpg">
            </div>
        </div>
           <div id="black_bg"></div>
             <div class="comment-top" id="comment_box" style="display: none" >
                  <ul>
                    <li>• 您还未加入会员，建议购买会员卡，享受更多的会员专供产品及服务。点<a href="category.php?id=9&act=clear" target='_blank'>这里</a>购买会员卡。</li>
                    <li>• 若您已购买会员卡，别忘了进入用户中心的《会员卡》栏目进行绑定，如此，您才可享受会员特供服务，点<a href="user.php?act=user_card&t=clear"  target='_blank'>这里</a>去绑定。</li>
                    <li>• 若您暂不购买会员卡，我们也欢迎直接转向零售支付，<a href="javascript:checkout2()">去结算</a>。</li>
                  </ul>
             </div>
              <div class="comment-top" id="comment_box_member" style="display: none" >
              	  <ul>很抱歉，您的会员资格已过了合约有效期（相关规定请参照网站首页-购物指南-<a href='http://shop.dream-gardens.com.cn/article.php?id=23'>会员卡协议</a>），您账户内的余额和 等级分仍为您保留，但目前无法继续按原有服务规则提供给您。您现可以选择：
              	  </ul>
                  <ul>
                    <li>1）联系客服400-821-3860，申请享受和您所购会员卡相应的合约延长期的权利。</li>
                    <li>2）如您已享受完单次的延长期服务，您仍可以注册会员身份继续用账户内余额购物，但不再享有原会员等级的优惠服务。取消的原等级分仍将被保留一年的记录，以便您一年中再续费时累积计入您的等级分中 。</li>
                    <li>3）直接购卡<a href='http://shop.dream-gardens.com.cn/category.php?id=9&act=clear'>续费</a>，并在用户中心-会员卡栏目绑定操作后 ，即可继续享受相应的会员等级优惠服务。</li>
                  </ul>
                  <ul>你续费吗？</ul>
             </div>
              <div class="comment-top" id="comment_box33" style="display: none" >
                       <ul>
                         <li>• </li>
                       </ul>
                  </div>
             <div class="comment-top" id="comment_box2" style="display: none" >
                  <ul>
                    <li>如您已选择网上支付和余额支付等直接付款方式，完成支付后，请去用户中心，查看购买此会员卡的订单详情，您会获得会员卡卡号及密码，并请在会员卡栏目中进行绑定操作，随后就可开始用您的账户余额进行购物了，祝使用愉快，请选择<a href="javascript:checkout2()" >继续结算</a>。</li>
                  </ul>
             </div>
             <div class="comment-top" id="comment_box1" style="display: none" >
                  <ul>
                    <li>如您已选银行汇款方式付款，待您汇款后，我们会将会员卡号及密码通知您，您即可进行后续的会员卡绑定及购物等操作了，如有任何问题请联系我们。请点<a href="javascript:checkout2()" >这里</a>确认订单</li>
                  </ul>
             </div>
                <div class="comment-top" id="comment_box11"  style="display: none">
                               <ul>
                                 <li>抱歉，该产品为会员专享，欢迎您成为君禾园会员，可享受更多的产品及服务！ <a href="article.php?id=23" >了解如何加入会员</a></li>
                               </ul>
                      </div>
  <div class="comment-top" id="comment_box44" style="display: none"  >
                                      <ul>
                                        <li> 很抱歉，您的会员资格已过了合约有效期（相关规定请参照网站首页-购物指南-会员卡协议），您账户内的余额和 等级分仍为您保留，但目前无法继续按原有服务规则提供给您。您现可以选择：</li>
                                        <li>1）联系客服400-821-3860，申请享受和您所购会员卡相应的合约延长期的权利。</li>
                                        <li>2）如您已享受完单次的延长期服务，您仍可以注册会员身份继续用账户内余额购物，但不再享有原会员等级的优惠服务。取消的原等级分仍将被保留一年的记录，以便您一年中再续费时累积计入您的等级分中 。</li>
                                        <li>3）直接购卡续费，并在用户中心-会员卡栏目绑定操作后 ，即可继续享受相应的会员等级优惠服务。</li>
                                        <li><b>您需要续费吗？</b></li>
                                      </ul>
                                      <table width="250px" align="center">
                                      <tr>
                                      <td><a href="javascript:selyes(1)" style="font-size:14px;text-align:center;display:block;width:80px;height:28px;line-height:28px;background:#c00;font-weight:bold;color:#ffffff">是</a></td>
                                      <td><a href="javascript:selyes(2)" style="font-size:14px;text-align:center;display:block;width:80px;height:28px;line-height:28px;background:#ffefd5;font-weight:bold;color:#ccccccc">否</a></td>
                                      </tr>
                                      </table>
</div>
	   
  </body>
<script type="text/javascript">
var goods_id = 130;
var goodsattr_style = 1;
var gmt_end_time = 0;
var day = "天";
var hour = "小时";
var minute = "分钟";
var second = "秒";
var end = "结束";
var goodsId = 130;
var now_time = 1446864787;
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
	{
      document.getElementById('ECS_GOODS_AMOUNT').innerHTML = res.result;
	}
  }
}
/*
*选择信息处理
*/
function changeP(b, c) {
	var frm=document.forms['ECS_FORMBUY'];
	var cur_id="";
    document.getElementById('spec_value_' + c).checked=true;
	document.getElementById('url_' + c).className="selected";
	for (var i = 0; i < frm.elements[b].length; i++) {
		cur_id=frm.elements[b][i].id.substr(11);
        document.getElementById('url_' + cur_id).className="";
		if (frm.elements[b][i].checked)
		{
		   document.getElementById('url_' + c).className="selected";
		}
    }
	changePrice();
}
</script>
<script type="text/javascript">
var time_hide_all_cat = null;
if (document.getElementById("div_all_cat").className == 'showlist snone'){
   document.getElementById("btnnav").onmouseover = show_all_cat;
   
   document.getElementById("btnnav").onmouseout = function(e){
      time_hide_all_cat = setTimeout("hide_all_cat()",100);
   }
   
   document.getElementById("div_all_cat").onmouseover = show_all_cat;
   
   document.getElementById("div_all_cat").onmouseout = hide_all_cat;
}
function hide_all_cat(){
   document.getElementById("div_all_cat").className = 'showlist snone';
}
function show_all_cat(){
   clearTimeout(time_hide_all_cat);
   document.getElementById("div_all_cat").className = 'showlist';
}
</script>
</html>