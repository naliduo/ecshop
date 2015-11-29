<?php exit;?>a:3:{s:8:"template";a:2:{i:0;s:71:"/home/admin/domains/5.hi5.cc/public_html/tmall/themes/default/index.dwt";i:1;s:93:"/home/admin/domains/5.hi5.cc/public_html/tmall/themes/default/library/recommend_promotion.lbi";}s:7:"expires";i:1402455647;s:8:"maketime";i:1402452047;}<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<META content="IE=7.0000" http-equiv="X-UA-Compatible">
<TITLE>ECSHOP演示站 触屏版</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=viewport 
content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<META name=apple-themes-web-app-capable content=yes>
<META name=apple-themes-web-app-status-bar-style content=black>
<META name=format-detection content=telephone=no>
<LINK rel=stylesheet type=text/css href="themes/default/index.css">
</HEAD>
<BODY>
  
  <script type="text/javascript">
//滚动图
function ScrollPic(scrollContId,arrLeftId,arrRightId,dotListId,listType){this.scrollContId=scrollContId;this.arrLeftId=arrLeftId;this.arrRightId=arrRightId;this.dotListId=dotListId;this.listType=listType;this.dotClassName="dotItem";this.dotOnClassName="dotItemOn";this.dotObjArr=[];this.listEvent="onclick";this.circularly=true;this.pageWidth=0;this.frameWidth=0;this.speed=10;this.space=10;this.upright=false;this.pageIndex=0;this.autoPlay=true;this.autoPlayTime=5;this._autoTimeObj;this._scrollTimeObj;this._state="ready";this.stripDiv=document.createElement("DIV");this.lDiv01=document.createElement("DIV");this.lDiv02=document.createElement("DIV")};ScrollPic.prototype={version:"1.45",author:"mengjia",pageLength:0,touch:true,scrollLeft:0,eof:false,bof:true,initialize:function(){var thisTemp=this;if(!this.scrollContId){throw new Error("必须指定scrollContId.");return};this.scDiv=this.$(this.scrollContId);if(!this.scDiv){throw new Error("scrollContId不是正确的对象.(scrollContId = \""+this.scrollContId+"\")");return};this.scDiv.style[this.upright?'height':'width']=this.frameWidth+"px";this.scDiv.style.overflow="hidden";this.lDiv01.innerHTML=this.scDiv.innerHTML;this.scDiv.innerHTML="";this.scDiv.appendChild(this.stripDiv);this.stripDiv.appendChild(this.lDiv01);if(this.circularly){this.stripDiv.appendChild(this.lDiv02);this.lDiv02.innerHTML=this.lDiv01.innerHTML;this.bof=false;this.eof=false};this.stripDiv.style.overflow="hidden";this.stripDiv.style.zoom="1";this.stripDiv.style[this.upright?'height':'width']="32766px";this.lDiv01.style.overflow="hidden";this.lDiv01.style.zoom="1";this.lDiv02.style.overflow="hidden";this.lDiv02.style.zoom="1";if(!this.upright){this.lDiv01.style.cssFloat="left";this.lDiv01.style.styleFloat="left"};this.lDiv01.style.zoom="1";if(this.circularly&&!this.upright){this.lDiv02.style.cssFloat="left";this.lDiv02.style.styleFloat="left"};this.lDiv02.style.zoom="1";this.addEvent(this.scDiv,"mouseover",function(){thisTemp.stop()});this.addEvent(this.scDiv,"mouseout",function(){thisTemp.play()});if(this.arrLeftId){this.alObj=this.$(this.arrLeftId);if(this.alObj){this.addEvent(this.alObj,"mousedown",function(e){thisTemp.rightMouseDown();e=e||event;thisTemp.preventDefault(e)});this.addEvent(this.alObj,"mouseup",function(){thisTemp.rightEnd()});this.addEvent(this.alObj,"mouseout",function(){thisTemp.rightEnd()})}};if(this.arrRightId){this.arObj=this.$(this.arrRightId);if(this.arObj){this.addEvent(this.arObj,"mousedown",function(e){thisTemp.leftMouseDown();e=e||event;thisTemp.preventDefault(e)});this.addEvent(this.arObj,"mouseup",function(){thisTemp.leftEnd()});this.addEvent(this.arObj,"mouseout",function(){thisTemp.leftEnd()})}};var pages=Math.ceil(this.lDiv01[this.upright?'offsetHeight':'offsetWidth']/this.frameWidth),i,tempObj;this.pageLength=pages;if(this.dotListId){this.dotListObj=this.$(this.dotListId);this.dotListObj.innerHTML="";if(this.dotListObj){for(i=0;i<pages;i++){tempObj=document.createElement("span");this.dotListObj.appendChild(tempObj);this.dotObjArr.push(tempObj);if(i==this.pageIndex){tempObj.className=this.dotOnClassName}else{tempObj.className=this.dotClassName};if(this.listType=='number'){tempObj.innerHTML=i+1}else if(typeof(this.listType)=='string'){tempObj.innerHTML=this.listType}else{tempObj.innerHTML=''};tempObj.title="第"+(i+1)+"页";tempObj.num=i;tempObj[this.listEvent]=function(){thisTemp.pageTo(this.num)}}}};this.scDiv[this.upright?'scrollTop':'scrollLeft']=0;if(this.autoPlay){this.play()};this._scroll=this.upright?'scrollTop':'scrollLeft';this._sWidth=this.upright?'scrollHeight':'scrollWidth';if(typeof(this.onpagechange)==='function'){this.onpagechange()};this.iPad()},leftMouseDown:function(){if(this._state!="ready"){return};var thisTemp=this;this._state="floating";clearInterval(this._scrollTimeObj);this._scrollTimeObj=setInterval(function(){thisTemp.moveLeft()},this.speed);this.moveLeft()},rightMouseDown:function(){if(this._state!="ready"){return};var thisTemp=this;this._state="floating";clearInterval(this._scrollTimeObj);this._scrollTimeObj=setInterval(function(){thisTemp.moveRight()},this.speed);this.moveRight()},moveLeft:function(){if(this._state!="floating"){return};if(this.circularly){if(this.scDiv[this._scroll]+this.space>=this.lDiv01[this._sWidth]){this.scDiv[this._scroll]=this.scDiv[this._scroll]+this.space-this.lDiv01[this._sWidth]}else{this.scDiv[this._scroll]+=this.space}}else{if(this.scDiv[this._scroll]+this.space>=this.lDiv01[this._sWidth]-this.frameWidth){this.scDiv[this._scroll]=this.lDiv01[this._sWidth]-this.frameWidth;this.leftEnd()}else{this.scDiv[this._scroll]+=this.space}};this.accountPageIndex()},moveRight:function(){if(this._state!="floating"){return};if(this.circularly){if(this.scDiv[this._scroll]-this.space<=0){this.scDiv[this._scroll]=this.lDiv01[this._sWidth]+this.scDiv[this._scroll]-this.space}else{this.scDiv[this._scroll]-=this.space}}else{if(this.scDiv[this._scroll]-this.space<=0){this.scDiv[this._scroll]=0;this.rightEnd()}else{this.scDiv[this._scroll]-=this.space}};this.accountPageIndex()},leftEnd:function(){if(this._state!="floating"&&this._state!='touch'){return};this._state="stoping";clearInterval(this._scrollTimeObj);var fill=this.pageWidth-this.scDiv[this._scroll]%this.pageWidth;this.move(fill)},rightEnd:function(){if(this._state!="floating"&&this._state!='touch'){return};this._state="stoping";clearInterval(this._scrollTimeObj);var fill=-this.scDiv[this._scroll]%this.pageWidth;this.move(fill)},move:function(num,quick){var thisTemp=this;var thisMove=num/5;var theEnd=false;if(!quick){if(thisMove>this.space){thisMove=this.space};if(thisMove<-this.space){thisMove=-this.space}};if(Math.abs(thisMove)<1&&thisMove!=0){thisMove=thisMove>=0?1:-1}else{thisMove=Math.round(thisMove)};var temp=this.scDiv[this._scroll]+thisMove;if(thisMove>0){if(this.circularly){if(this.scDiv[this._scroll]+thisMove>=this.lDiv01[this._sWidth]){this.scDiv[this._scroll]=this.scDiv[this._scroll]+thisMove-this.lDiv01[this._sWidth]}else{this.scDiv[this._scroll]+=thisMove}}else{if(this.scDiv[this._scroll]+thisMove>=this.lDiv01[this._sWidth]-this.frameWidth){this.scDiv[this._scroll]=this.lDiv01[this._sWidth]-this.frameWidth;this._state="ready";theEnd=true}else{this.scDiv[this._scroll]+=thisMove}}}else{if(this.circularly){if(this.scDiv[this._scroll]+thisMove<0){this.scDiv[this._scroll]=this.lDiv01[this._sWidth]+this.scDiv[this._scroll]+thisMove}else{this.scDiv[this._scroll]+=thisMove}}else{if(this.scDiv[this._scroll]+thisMove<=0){this.scDiv[this._scroll]=0;this._state="ready";theEnd=true}else{this.scDiv[this._scroll]+=thisMove}}};this.accountPageIndex();if(theEnd){this.accountPageIndex('end');return};num-=thisMove;if(Math.abs(num)==0){this._state="ready";if(this.autoPlay){this.play()};this.accountPageIndex();return}else{clearTimeout(this._scrollTimeObj);this._scrollTimeObj=setTimeout(function(){thisTemp.move(num,quick)},this.speed)}},pre:function(){if(this._state!="ready"){return};this._state="stoping";this.move(-this.pageWidth)},next:function(reStar){if(this._state!="ready"){return};this._state="stoping";if(this.circularly){this.move(this.pageWidth)}else{if(this.scDiv[this._scroll]>=this.lDiv01[this._sWidth]-this.frameWidth){this._state="ready";if(reStar){this.pageTo(0)}}else{this.move(this.pageWidth)}}},play:function(){var thisTemp=this;if(!this.autoPlay){return};clearInterval(this._autoTimeObj);this._autoTimeObj=setInterval(function(){thisTemp.next(true)},this.autoPlayTime*1000)},stop:function(){clearInterval(this._autoTimeObj)},pageTo:function(num){if(this.pageIndex==num){return};if(num<0){num=this.pageLength-1};clearTimeout(this._scrollTimeObj);clearInterval(this._scrollTimeObj);this._state="stoping";var fill=num*this.frameWidth-this.scDiv[this._scroll];this.move(fill,true)},accountPageIndex:function(type){var pageIndex=Math.round(this.scDiv[this._scroll]/this.frameWidth);if(pageIndex>=this.pageLength){pageIndex=0};this.scrollLeft=this.scDiv[this._scroll];var scrollMax=this.lDiv01[this._sWidth]-this.frameWidth;if(!this.circularly){this.eof=this.scrollLeft>=scrollMax;this.bof=this.scrollLeft<=0};if(type=='end'&&typeof(this.onmove)==='function'){this.onmove()};if(pageIndex==this.pageIndex){return};this.pageIndex=pageIndex;if(this.pageIndex>Math.floor(this.lDiv01[this.upright?'offsetHeight':'offsetWidth']/this.frameWidth)){this.pageIndex=0};var i;for(i=0;i<this.dotObjArr.length;i++){if(i==this.pageIndex){this.dotObjArr[i].className=this.dotOnClassName}else{this.dotObjArr[i].className=this.dotClassName}};if(typeof(this.onpagechange)==='function'){this.onpagechange()}},iPadX:0,iPadLastX:0,iPadStatus:'ok',iPad:function(){if(typeof(window.ontouchstart)==='undefined'){return};if(!this.touch){return};var tempThis=this;this.addEvent(this.scDiv,'touchstart',function(e){tempThis._touchstart(e)});this.addEvent(this.scDiv,'touchmove',function(e){tempThis._touchmove(e)});this.addEvent(this.scDiv,'touchend',function(e){tempThis._touchend(e)})},_touchstart:function(e){this.stop();this.iPadX=e.touches[0].pageX;this.iPadScrollX=window.pageXOffset;this.iPadScrollY=window.pageYOffset;this.scDivScrollLeft=this.scDiv[this._scroll]},_touchmove:function(e){if(e.touches.length>1){this._touchend()};this.iPadLastX=e.touches[0].pageX;var cX=this.iPadX-this.iPadLastX;if(this.iPadStatus=='ok'){if(this.iPadScrollY==window.pageYOffset&&this.iPadScrollX==window.pageXOffset&&Math.abs(cX)>20){this.iPadStatus='touch'}else{return}};this._state='touch';var scrollNum=this.scDivScrollLeft+cX;if(scrollNum>=this.lDiv01[this._sWidth]){if(this.circularly){scrollNum=scrollNum-this.lDiv01[this._sWidth]}else{return}};if(scrollNum<0){if(this.circularly){scrollNum=scrollNum+this.lDiv01[this._sWidth]}else{return}};this.scDiv[this._scroll]=scrollNum;e.preventDefault()},_touchend:function(e){if(this.iPadStatus!='touch'){return};this.iPadStatus='ok';var cX=this.iPadX-this.iPadLastX;if(cX<0){this.rightEnd()}else{this.leftEnd()};this.play()},_overTouch:function(){this.iPadStatus='ok'},$:function(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}},isIE:navigator.appVersion.indexOf("MSIE")!=-1?true:false,addEvent:function(obj,eventType,func){if(obj.attachEvent){obj.attachEvent("on"+eventType,func)}else{obj.addEventListener(eventType,func,false)}},delEvent:function(obj,eventType,func){if(obj.detachEvent){obj.detachEvent("on"+eventType,func)}else{obj.removeEventListener(eventType,func,false)}},preventDefault:function(e){if(e.preventDefault){e.preventDefault()}else{e.returnValue=false}}};
</script>
<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
a{color:#3b3b3b;text-decoration:none;font-family:"Microsoft YaHei","微软雅黑","simhei","黑体";}
a:visited{color:#26566c;text-decoration:none;}
a:hover, a:active, a:focus{color:#0078aa;text-decoration:none;}	
body{background:#fff;color:#333;padding:5px 0;font:12px/20px "Microsoft YaHei","微软雅黑","simhei","黑体";}
.clearfix:after{content:".";display:block;height:0;visibility:hidden;clear:both;}
.clearfix{zoom:1;}
.b_cont{width:320px;height:150px;overflow:hidden;margin:0px auto 0 auto;position:relative;}
.ct_p_05{width:320px;height:150px;float:left;text-align:center;}
.ct_p_05 .ct_txt{display:block;line-height:50px;*line-height:50px;overflow:hidden;color:#fff;height:75px;cursor:pointer;filter: progid:DXImageTransform.Microsoft.gradient(GradientType = 0,startColorstr = '#8c000000', endColorstr = '#8c000000' );background-color:rgba(0,0,0,.55);_background:none;position: relative;margin-top: -75px;font-size: 20px;}
.ct_p_05 a:hover .ct_txt{color:#fff;text-decoration: underline;}
.scrDotList_wrap{text-align:center;width:100%;position:absolute;bottom:2px;}
.scrDotList{zoom:1;line-height: 0;}
.scrDotList span{display:inline-block;width:15px;height:2px;background:#000000;cursor:pointer;font-size:0;line-height:0;vertical-align:top;font-size: 0px;margin: 0 5px;}
.scrDotList span.on{background:#49cff1;}
a.scrArrAbsLeft{position:absolute;left:0;bottom:0px;width:75px;height:75px;background:url(themes/xm2013/images/0813_ent_zyc_images_v2.png) 0px -136px no-repeat;cursor:pointer;}
a.scrArrAbsLeft:hover{background-position: 0 -217px;}
a.scrArrAbsRight{position:absolute;right:-1px;bottom:0px;width:75px;height:75px;background:url(themes/xm2013/images/0813_ent_zyc_images_v2.png) no-repeat -83px -136px;cursor:pointer;}
a.scrArrAbsRight:hover{background-position: -83px -217px;}
</style>
<div class="b_cont">
	<div id="scroll_jdt">
          <div class="ct_p_05">
<A href="http://www.adomall.com/mobile/goods-2842.html"><img width="320" height="150px" src="themes/default/images/a1-640-300.jpg"></A> </div>
          <div class="ct_p_05">
<A href="http://www.adomall.com/mobile/goods-1005.html"><IMG src="themes/default/images/a2-640-300.jpg"></A> </div>
          <div class="ct_p_05">
<A href="http://www.adomall.com/mobile/goods-1402.html"><IMG src="themes/default/images/a3-640-300.jpg"></A></div>
          <div class="ct_p_05">
<A href="http://www.adomall.com/mobile/goods-597.html"><IMG src="themes/default/images/a4-640-300.jpg"></A></div>
          <div class="ct_p_05">
<A href="http://www.adomall.com/mobile/goods-584.html"><IMG src="themes/default/images/a5-640-300.jpg"></A></div>
<div class="scrDotList_wrap">
		<span class="scrDotList" id="slide_dot">
			<span></span>
		</span>
	</div>
</div></div>
  
  <script type="text/javascript">
(function(){
	var focusScroll_01 = new ScrollPic();
	focusScroll_01.scrollContId   = "scroll_jdt"; //内容容器ID
	focusScroll_01.dotListId = "slide_dot";
	focusScroll_01.dotClassName = "";
	focusScroll_01.dotOnClassName = "on";
	focusScroll_01.listType       = "";//列表类型(number:数字，其它为空)
	focusScroll_01.listEvent      = "onmouseover"; //切换事件
	focusScroll_01.frameWidth     = 320;//显示框宽度
	focusScroll_01.pageWidth      = 320; //翻页宽度
	focusScroll_01.upright        = false; //垂直滚动
	focusScroll_01.speed          = 10; //移动速度(单位毫秒，越小越快)
	focusScroll_01.space          = 60; //每次移动像素(单位px，越大越快)
	focusScroll_01.autoPlay       = true; //自动播放
	focusScroll_01.autoPlayTime   = 5; //自动播放间隔时间(秒)
	focusScroll_01.circularly     = true;
	focusScroll_01.initialize(); //初始化
	document.getElementById('scroll_left').onmousedown = function(){
		focusScroll_01.pre();
		return false;
	}
	document.getElementById('scroll_right').onmousedown = function(){
		focusScroll_01.next();
		return false;
	}
})()
</script>
<DIV id=content class=tmall-h5-v2> 
  <HEADER class=region>
    <DIV class=content> 
      
      <DIV class=top>
        <H1> <IMG title="阿杜模板商城" src="themes/default/images/logo.png"> </H1>
      </DIV>
       
      
      <DIV id=fake-search>
       <a href="search.php"> <DIV class=fakeInput>
          
        </DIV></a>
      </DIV>
    </DIV>
  </HEADER>
  
  
  
  <DIV class="region entry-list"> 
  	<A href="allcate.php"><IMG src="themes/default/images/s1.png" width=37 height=37><BR><SPAN>所有类目</SPAN></A> <SPAN class=entry-decollator></SPAN> 
    <A href="user.php"><IMG  src="themes/default/images/s2.png" width=37 height=37><BR><SPAN>我的账户</SPAN></A> <SPAN class=entry-decollator></SPAN> 
    <A href="flow.php"><IMG src="themes/default/images/s3.png" width=37 height=37><BR><SPAN>购物车</SPAN></A> <SPAN class=entry-decollator></SPAN> 
    <A href="article_cat.php?id=1"><IMG  src="themes/default/images/s4.png" width=37 height=37><BR><SPAN>帮助中心</SPAN></A> <BR>
    <BR>
    <A href="tel:01882008309"><IMG  src="themes/default/images/s5.png" width=37 height=37><BR><SPAN>联系我们</SPAN></A> <SPAN class=entry-decollator></SPAN> 
    <A href="map.php"><IMG src="themes/default/images/s6.png" width=37 height=37><BR><SPAN>地图</SPAN></A> <SPAN class=entry-decollator></SPAN> 
    <A href="share.php"><IMG  alt=查物流 src="themes/default/images/s7.png" width=37 height=37><BR><SPAN>分享</SPAN></A> <SPAN class=entry-decollator></SPAN> 
    <A class=region-fav href="message.php"><IMG  src="themes/default/images/s8.png" width=37 height=37><BR><SPAN>留言板</SPAN></A> </DIV>
   
   
  <DIV class="region miao">
  <DIV class=miao-title><SPAN>天天特惠</SPAN> <SPAN>每天都会有特价商品，记得来看看</SPAN> </DIV>
  <DIV class=miao-item> 
  	 
        <A href="goods-14.html"><IMG src="../images/201402/thumb_img/14_thumb_G_1393532143495.jpg" alt="小蜜蜂 手机支架" />
    <P class=miao-item-title style="width:90px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">小蜜蜂 手机支架</P>
    <P><SPAN class=miao-item-newprice>￥9元</SPAN>
    <DEL class=miao-item-oldprice>598.0</DEL></P>
     
    </A> 
     
        <A href="goods-15.html"><IMG src="../images/201402/thumb_img/15_thumb_G_1393532283708.jpg" alt="小米活塞耳机简装版" />
    <P class=miao-item-title style="width:90px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">小米活塞耳机简装版</P>
    <P><SPAN class=miao-item-newprice>￥88元</SPAN>
    <DEL class=miao-item-oldprice>598.0</DEL></P>
     
    </A> 
     
        <A href="goods-1.html"><IMG src="../images/201310/thumb_img/1_thumb_G_1381080926818.jpg" alt="双口USB充电器测试商品" />
    <P class=miao-item-title style="width:90px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">双口USB充电器测试商品</P>
    <P><SPAN class=miao-item-newprice>￥40元</SPAN>
    <DEL class=miao-item-oldprice>598.0</DEL></P>
     
    </A> 
     
    </DIV>
</DIV>
 
   
  
  
  <DIV class="region focus-big"> 
    <A href="http://www.adomall.com/mobile/goods-1448.html"><IMG src="themes/default/images/ad1.jpg" width=299 height=100> </A>
  </DIV>
   
  
    <DIV class="region focus"> 
     
	        <A class=tag11p href="goods-10.html"> <IMG src="../../images/201402/thumb_img/10_thumb_G_1393522126376.jpg"  width="52" height="52"> <SPAN class="focus-name">红米手机</SPAN><BR>
        <DEL class=miao-item-oldprice>￥839元</DEL> <BR>
         
        <SPAN class=miao-item-newprice>￥699元</SPAN> 
         
        </A> 
	     
	        <A class=tag11p href="goods-9.html"> <IMG src="../../images/201402/thumb_img/9_thumb_G_1393521367610.jpg"  width="52" height="52"> <SPAN class="focus-name">小米手机3</SPAN><BR>
        <DEL class=miao-item-oldprice>￥0元</DEL> <BR>
         
        <SPAN class=miao-item-newprice>￥0元</SPAN> 
         
        </A> 
	     
	        <A class=tag11p href="goods-11.html"> <IMG src="../../images/201402/thumb_img/11_thumb_G_1393531608375.jpg"  width="52" height="52"> <SPAN class="focus-name">小米手机2S 直降400</SPAN><BR>
        <DEL class=miao-item-oldprice>￥1559元</DEL> <BR>
         
        <SPAN class=miao-item-newprice>￥1299元</SPAN> 
         
        </A> 
	     
	        <A class=tag11p href="goods-16.html"> <IMG src="../../images/201402/thumb_img/16_thumb_G_1393532402180.jpg"  width="52" height="52"> <SPAN class="focus-name">财神米兔</SPAN><BR>
        <DEL class=miao-item-oldprice>￥106元</DEL> <BR>
         
        <SPAN class=miao-item-newprice>￥88元</SPAN> 
         
        </A> 
	     
	        <A class=tag11p href="goods-14.html"> <IMG src="../../images/201402/thumb_img/14_thumb_G_1393532143495.jpg"  width="52" height="52"> <SPAN class="focus-name">小蜜蜂 手机支架</SPAN><BR>
        <DEL class=miao-item-oldprice>￥23元</DEL> <BR>
         
        <SPAN class=miao-item-newprice>￥9元</SPAN> 
         
        </A> 
	     
	        <A class=tag11p href="goods-15.html"> <IMG src="../../images/201402/thumb_img/15_thumb_G_1393532283708.jpg"  width="52" height="52"> <SPAN class="focus-name">小米活塞耳机简装版</SPAN><BR>
        <DEL class=miao-item-oldprice>￥119元</DEL> <BR>
         
        <SPAN class=miao-item-newprice>￥88元</SPAN> 
         
        </A> 
	     
  </DIV>
   
   
   
 
  <DIV class="grid-c module mr-t20"> <A href="http://www.adomall.com/mobile/goods-109.html"> <IMG src="themes/default/images/ad2.jpg" width=300 height=75></A> </DIV>
   <FOOTER class=region style="padding-bottom:8px;">
    <SECTION class="user-panel" > 
      <P class=guest  > <A class=login href="user.php">登陆</A> <A class=register href="user.php?act=register">注册</A> </P>
      <A class=fb-top href="javascript:scroll(0,0)"></A></SECTION>
      <P class=version> <A id=btn_go_pc href="index.php?pid=1">电脑版</A>
   
    </P>
 
  </FOOTER>
</DIV>
   <div class="footcbg">
<div class="wid20"><a href="/mobile/"><img src="themes/default/images/c1.jpg"/></a></div>
<div class="wid20"><a href="/mobile/search.php"><img src="themes/default/images/c2.jpg"/></a></div>
<div class="wid20"><a href="/mobile/allcate.php"><img src="themes/default/images/c3.jpg"/></a></div>
<div class="wid20"><a href="/mobile/flow.php"><img src="themes/default/images/c4.jpg"/></a></div>
<div class="wid20"><a href="/mobile/user.php"><img src="themes/default/images/c5.jpg"/></a></div>
</div>
<SCRIPT src="themes/default/js/sea.js"></SCRIPT> 
<SCRIPT>
    seajs.use("themes/default/js/index999.js");
</SCRIPT>
</BODY>
</HTML>