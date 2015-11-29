<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<title><?php echo $this->_var['page_title']; ?></title>
<link rel="shortcut icon" href="favicon.ico"/>
<link rel="icon" href="animated_favicon.gif" type="image/gif"/>
<link href="themes/xm2013/style.css" rel="stylesheet" type="text/css"/>
<link href="themes/xm2013/base.css" rel="stylesheet" type="text/css"/>

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,transport.js')); ?>


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
_mvq.push(['$setGeneral', 'goodsdetail', '', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_name']); ?>', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_id']); ?>']);
_mvq.push(['$logConversion']);
_mvq.push(['$addGoods', '<?php echo htmlspecialchars($this->_var['goods']['cat_id']); ?>', '<?php echo htmlspecialchars($this->_var['goods']['brand_id']); ?>', '<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>', '<?php echo htmlspecialchars($this->_var['goods']['goods_id']); ?>', '<?php echo htmlspecialchars($this->_var['goods']['shop_price']); ?>', xhNS.your_domain+'<?php echo htmlspecialchars($this->_var['goods']['goods_img']); ?>']);
_mvq.push(['$logData']);
var _mbausername='<?php echo htmlspecialchars($this->_var['ecs_session']['user_name']); ?>';
var _mbauserid='<?php echo htmlspecialchars($this->_var['ecs_session']['user_id']); ?>';
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
<body><?php echo $this->fetch('library/page_header.lbi'); ?><div class="block box">
  <div id="ur_here">
    <div class="ur_here"><?php echo $this->fetch('library/ur_here.lbi'); ?></div>
  </div>
</div>
<div class="blank"></div>
<div class="block clearfix">
  <div class="goods-detail-info">
    <div class="goods-pic-box">
      <div id="goodsInfo" class="clearfix">
        <div class="goods-big-pic">
          <div class="thumb"><img src="<?php echo $this->_var['goods']['goods_img']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" id="goodsimg" style="cursor:pointer;" onclick="window.open('gallery.php?id=<?php echo $this->_var['goods']['goods_id']; ?>'); return false;"  /></div>
          <div class="blank5"></div>
          <div class="goods-small-pic clearfix">
            <ul id="imglist">
			<?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');if (count($_from)):
    foreach ($_from AS $this->_var['picture']):
?>
              <li class="onbg" lang="<?php echo $this->_var['picture']['img_url']; ?>"><img src="<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" /></li>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>  
            </ul>
          </div>
          <script type="text/javascript">picturs();</script>
          <div class="blank5"></div>
        </div>
        <div class="textInfo">
          <form action="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
            <div class="linel clearfix">
              <p class="name"><?php echo $this->_var['goods']['goods_style_name']; ?></p>
              <p class="grief"><?php echo $this->_var['goods']['goods_brief']; ?></p>
            </div><div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"24"},"share":{},"image":{"viewList":["qzone","tqq","tsina","weixin","sqq","renren"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tqq","tsina","weixin","sqq","renren"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
            <ul>
              <li class="clearfix">
                <dd class="ddL"><strong>本店售价：</strong><font class="shop" style="font-size:18px;font-weight:bold;" id="ECS_SHOPPRICE"><?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price_formated']; ?><?php endif; ?></font></dd>
       <?php $_from = $this->_var['rank_prices']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'rank_price');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['rank_price']):
?>
       <?php if ($this->_var['key'] == $_SESSION['user_rank']): ?>
                <dd class="ddR"><strong><?php echo $this->_var['rank_price']['rank_name']; ?>：</strong><font class="shop" style="font-size:18px;font-weight:bold;" id="ECS_SHOPPRICE"><?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['rank_price']['price']; ?><?php endif; ?></font></dd>
       <?php endif; ?>
       <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <dd class="ddR"><strong>商品编号：</strong><?php echo $this->_var['goods']['goods_sn']; ?></dd>
              </li>
              <li>
                <dd class="ddL"><strong>市场价格：</strong><font class="market"><?php echo $this->_var['goods']['market_price']; ?></font></dd>
                <dd class="ddR"><strong>商品品牌：</strong><a href="<?php echo $this->_var['goods']['goods_brand_url']; ?>" ><?php echo $this->_var['goods']['goods_brand']; ?></a></dd>
              </li>
              <li class="clearfix">
                <dd class="ddL"> 商品库存：<font style="color:#FFB03B"><?php if ($this->_var['goods']['goods_number'] == 0): ?><?php echo $this->_var['lang']['stock_up']; ?><?php else: ?><?php echo $this->_var['goods']['goods_number']; ?> <?php echo $this->_var['goods']['measure_unit']; ?><?php endif; ?></font></dd>
                <dd class="ddR"> 商品点击数：<font style="color:#FFB03B; font-weight:bold;"> <?php echo $this->_var['goods']['click_count']; ?></font>次</dd>
              </li>
              <li class="clearfix"><strong>购买此商品可使用：</strong><font class="f1"><?php echo $this->_var['goods']['integral']; ?> <?php echo $this->_var['points_name']; ?></font></li>
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


           <?php if ($this->_var['specification']): ?>
            <div class="propertySelect clearfix" id="propertySelect">
            <?php $_from = $this->_var['specification']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('spec_key', 'spec');if (count($_from)):
    foreach ($_from AS $this->_var['spec_key'] => $this->_var['spec']):
?>
              <strong><?php echo $this->_var['spec']['name']; ?>：</strong>
              <div class="catt" id="catt_<?php echo $this->_var['spec_key']; ?>">
              
              <?php if ($this->_var['spec']['attr_type'] == 1): ?>
              <?php if ($this->_var['cfg']['goodsattr_style'] == 1): ?>
              <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
               <a class='hover <?php if ($this->_var['key'] == 0): ?>cattsel<?php endif; ?><?php if ($this->_var['value']['thumb_url']): ?> colorImg<?php endif; ?>' <?php if ($this->_var['value']['thumb_url']): ?> rev=<?php echo $this->_var['value']['img_original']; ?> rel=goodsPic <?php else: ?>href="#"<?php endif; ?> title="<?php echo $this->_var['value']['label']; ?>" style="cursor:pointer" name="spec_a_<?php echo $this->_var['value']['id']; ?>" onclick="changeAtt(this,<?php echo $this->_var['value']['id']; ?>,<?php echo $this->_var['spec_key']; ?>)">
               <p <?php if ($this->_var['value']['thumb_url']): ?>class="padd"<?php elseif ($this->_var['value']['hex_color'] != ''): ?>style="background:#<?php echo $this->_var['value']['hex_color']; ?>; height:45px; width:45px"<?php endif; ?>>
              <?php if ($this->_var['value']['thumb_url']): ?>
              <img src="<?php echo $this->_var['value']['thumb_url']; ?>" width="50" height="50" alt="<?php echo $this->_var['value']['label']; ?>">
              <?php elseif ($this->_var['value']['hex_color']): ?>
              <?php else: ?>
               <em><?php echo $this->_var['value']['label']; ?></em>
              <?php endif; ?>
              <i></i>
              </p>
             <input style="display:none" id="spec_value_<?php echo $this->_var['value']['id']; ?>" type="radio" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" <?php if ($this->_var['key'] == 0): ?>checked<?php endif; ?> />
              </a>
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
              <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
              <?php else: ?>
              <select name="spec_<?php echo $this->_var['spec_key']; ?>">
              <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
              <option label="<?php echo $this->_var['value']['label']; ?>" value="<?php echo $this->_var['value']['id']; ?>"><?php echo $this->_var['value']['label']; ?> <?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?><?php if ($this->_var['value']['price'] != 0): ?><?php echo $this->_var['value']['format_price']; ?><?php endif; ?></option>
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
              </select>
              <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
              <?php endif; ?>
              <?php else: ?>
              <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
              <label for="spec_value_<?php echo $this->_var['value']['id']; ?>">
              <input type="checkbox" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" id="spec_value_<?php echo $this->_var['value']['id']; ?>" onclick="changePrice()" />
              <?php echo $this->_var['value']['label']; ?> [<?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?> <?php echo $this->_var['value']['format_price']; ?>] </label>
              <br />
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
              <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
              <?php endif; ?>
            </div>
            <div class="blank"></div>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
         </div>
         <?php endif; ?>








      
              
              
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
                <div class="buyt"><a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)"><img src="themes/xm2013/images/bnt_cat1.gif"/></a> &nbsp;&nbsp; <a href="javascript:collect(<?php echo $this->_var['goods']['goods_id']; ?>)"><img src="themes/xm2013/images/bnt_colles.gif" /></a></div>
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
		<?php $_from = $this->_var['related_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'releated_goods_data');if (count($_from)):
    foreach ($_from AS $this->_var['releated_goods_data']):
?>
          <li>
            <div class="item-name"><a href="<?php echo $this->_var['releated_goods_data']['url']; ?>" title="<?php echo $this->_var['releated_goods_data']['goods_name']; ?>"><?php echo $this->_var['releated_goods_data']['short_name']; ?></a></div>
            <div class="item-price"><?php if ($this->_var['releated_goods_data']['promote_price'] != 0): ?><?php echo $this->_var['releated_goods_data']['formated_promote_price']; ?><?php else: ?><?php echo $this->_var['releated_goods_data']['shop_price']; ?><?php endif; ?></div>
            <div class="item-thumb"><a href="<?php echo $this->_var['releated_goods_data']['url']; ?>" title="<?php echo $this->_var['releated_goods_data']['goods_name']; ?>"><img src="<?php echo $this->_var['releated_goods_data']['goods_thumb']; ?>" alt="<?php echo $this->_var['releated_goods_data']['goods_name']; ?>" /></a></div>
          </li>
       <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
      </div>
    </div><?php echo $this->fetch('library/history.lbi'); ?></div>
  <div class="AreaR xm-box">
    <h3 style="padding:10px 5px 0 0; height:32px; background:none; border:none">
      <div id="com_b" class="history clearfix">
        <h2>产品特色</h2>
        <?php if ($this->_var['goods']['extension_code'] != 'virtual_card'): ?>
            <h2 class="h2bg">种植日记</h2>

            <h2 class="h2bg">烹饪方式</h2>
        <?php endif; ?>
        <?php if ($this->_var['goods']['commengp']): ?>
             <h2 class="h2bg">用户评价</h2>
        <?php endif; ?>
      </div>
    </h3>
    <div id="com_v" style="border-top:none; padding-top:10px;" ></div>
    <div id="com_h" style="overflow:hidden;">
      <blockquote>
        <?php echo $this->_var['goods']['goods_desc']; ?>
        <div class="blank"></div>
        
      </blockquote>
      <blockquote>

        <div class="paddbox">
           <?php echo $this->_var['goods']['riji']; ?>
        </div>
      </blockquote>

      
      <blockquote>
        <div class="paddbox">
          <?php echo $this->_var['goods']['ways']; ?>
        </div>
      </blockquote>
     <?php if ($this->_var['goods']['commengp']): ?>
               <blockquote>
                    <div class="paddbox">
                    <?php echo $this->fetch('library/comments.lbi'); ?></div>
               </blockquote>
      <?php endif; ?>
    </div>
    <script type="text/javascript">
reg("com");
</script>
    <div class="blank"></div>
  </div>
</div>
</div>
<div class="blank5"></div><?php echo $this->fetch('library/page_footer.lbi'); ?></body>
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