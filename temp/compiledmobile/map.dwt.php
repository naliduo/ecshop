<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META content="IE=7.0000" http-equiv="X-UA-Compatible">
<TITLE><?php echo $this->_var['page_title']; ?> 公司地图查看</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=viewport 
content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<META name=apple-mobile-web-app-capable content=yes>
<META name=apple-mobile-web-app-status-bar-style content=black>
<META name=format-detection content=telephone=no>
<LINK rel=apple-touch-icon-precomposed href="themes/default/images/touch-icon.png">
<LINK rel="shortcut icon" type=image/x-icon href="themes/default/images/favicon2.ico">
 
<!--引用百度地图API-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
 <LINK rel=stylesheet type=text/css href="themes/default/goods.css">
 
</HEAD>
<BODY id="app-detail">

 <header class="s-header">
  <nav>
    <h1>公司地图</h1>
    <a href="javascript:history.go(-1)" class="back">返回</a>
    
  </nav>
   
</header>


 <!--百度地图容器 S-->
        <div id="pagecontainer">
              
            <div class="content">
                <div style="width:100%; height:100%;border:#ccc solid 1px; margin: 0 auto" id="dituContent"></div>
            </div>
               
        </div>
		<footer class="s-footer">
      <div class="userbox">
        <div class="login-info"> <a href="user.php">登录</a> <a href="user.php?act=register">注册</a> </div>
        <a class="help" href="article_cat.php?id=1">服务中心</a> </div>
      <div class="version"> <A  href="index.php?pid=<?php echo $this->_var['sid']; ?>">电脑版</a>  </div>
      <div class="copyright"><?php echo $this->_var['copyright']; ?></div>
      <a href="#app-detail" class="top">返回顶部</a> </footer>
<!--百度地图容器 E-->
<script type="text/javascript">
                        //创建和初始化地图函数：
                        function initMap() {
                            createMap();//创建地图
                            setMapEvent();//设置地图事件
                            addMapControl();//向地图添加控件
                            addMarker();//向地图中添加marker
                        }

                        //创建地图函数：
                        function createMap() {
                            var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
                            var point = new BMap.Point(121.426966, 31.243393);//定义一个中心点坐标
                            map.centerAndZoom(point, 16);//设定地图的中心点和坐标并将地图显示在地图容器中
                            window.map = map;//将map变量存储在全局
                        }

                        //地图事件设置函数：
                        function setMapEvent() {
                            map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
                            map.enableScrollWheelZoom();//启用地图滚轮放大缩小
                            map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
                            map.enableKeyboard();//启用键盘上下左右键移动地图
                        }

                        //地图控件添加函数：
                        function addMapControl() {
                            //向地图中添加缩放控件
                            var ctrl_nav = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_SMALL});
                            map.addControl(ctrl_nav);
                            //向地图中添加缩略图控件
                            var ctrl_ove = new BMap.OverviewMapControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1});
                            map.addControl(ctrl_ove);
                            //向地图中添加比例尺控件
                            var ctrl_sca = new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT});
                            map.addControl(ctrl_sca);
                        }

                        //标注点数组
                        var markerArr = [{title: "中关村科技大厦", content: "中山北路2911号2402室", point: "121.42468|31.247545", isOpen: 0, icon: {w: 21, h: 21, l: 0, t: 0, x: 6, lb: 5}}
                        ];
                        //创建marker
                        function addMarker() {
                            for (var i = 0; i < markerArr.length; i++) {
                                var json = markerArr[i];
                                var p0 = json.point.split("|")[0];
                                var p1 = json.point.split("|")[1];
                                var point = new BMap.Point(p0, p1);
                                var iconImg = createIcon(json.icon);
                                var marker = new BMap.Marker(point, {icon: iconImg});
                                var iw = createInfoWindow(i);
                                var label = new BMap.Label(json.title, {"offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)});
                                marker.setLabel(label);
                                map.addOverlay(marker);
                                label.setStyle({
                                    borderColor: "#808080",
                                    color: "#333",
                                    cursor: "pointer"
                                });

                                (function() {
                                    var index = i;
                                    var _iw = createInfoWindow(i);
                                    var _marker = marker;
                                    _marker.addEventListener("click", function() {
                                        this.openInfoWindow(_iw);
                                    });
                                    _iw.addEventListener("open", function() {
                                        _marker.getLabel().hide();
                                    })
                                    _iw.addEventListener("close", function() {
                                        _marker.getLabel().show();
                                    })
                                    label.addEventListener("click", function() {
                                        _marker.openInfoWindow(_iw);
                                    })
                                    if (!!json.isOpen) {
                                        label.hide();
                                        _marker.openInfoWindow(_iw);
                                    }
                                })()
                            }
                        }
                        //创建InfoWindow
                        function createInfoWindow(i) {
                            var json = markerArr[i];
                            var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
                            return iw;
                        }
                        //创建一个Icon
                        function createIcon(json) {
                            var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w, json.h), {imageOffset: new BMap.Size(-json.l, -json.t), infoWindowOffset: new BMap.Size(json.lb + 5, 1), offset: new BMap.Size(json.x, json.h)})
                            return icon;
                        }

                        initMap();//创建和初始化地图
    </script>
   
</BODY>
</HTML>
