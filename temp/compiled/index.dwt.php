<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<title><?php echo $this->_var['page_title']; ?></title>
<link rel="icon" href="animated_favicon.gif" type="image/gif" />

<link href="themes/xm2013/base.css" rel="stylesheet" type="text/css" />
<link href="themes/xm2013/index.css" rel="stylesheet" type="text/css" />
<link rel="alternate" type="application/rss+xml" title="RSS|<?php echo $this->_var['page_title']; ?>" href="<?php echo $this->_var['feed_url']; ?>" />
<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,index.js')); ?>
<script>
var _mvq = _mvq || [];
_mvq.push(['$setAccount', 'm-29971-0']);
<?php if ($this->_var['action'] == 'collection_list'): ?>
_mvq.push(['$setGeneral', 'memberfavorite', '', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_name']); ?>', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_id']); ?>']);
_mvq.push(['$logConversion']);
<?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['goods_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods_list']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['goods_list']['iteration']++;
?>
_mvq.push(['$addGoodsFavorite', '<?php echo htmlspecialchars($this->_var['goods']['goods_id']); ?>','<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>']);
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
_mvq.push(['$logData']);
<?php endif; ?>
<?php if ($this->_var['action'] == 'default'): ?>
_mvq.push(['$setGeneral', 'memberindex', '', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_name']); ?>', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_id']); ?>']);
_mvq.push(['$logConversion']);
<?php endif; ?>
<?php if ($this->_var['action'] == 'comment_list' || $this->_var['action'] == 'message_list'): ?>
_mvq.push(['$setGeneral', 'comment', '', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_name']); ?>', '<?php echo htmlspecialchars($this->_var['ecs_session']['user_id']); ?>']);
_mvq.push(['$logConversion']);
<?php endif; ?>
</script>
							
</head>
<body><?php echo $this->fetch('library/page_header.lbi'); ?>


<script type="text/javascript">
document.getElementById("div_all_cat").className = "showlist";
</script>

<div class="container">
  <div class="fpics row clearfix">
    <div class="span3 fpics-left"></div>
    <div class="span12">
      <div id="yc-mod-slider">
        <div id="xmFocus" class="xmFocus">
		<?php $_from = get_flash_xml(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'playerdb');$this->_foreach['get_flash_xml'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['get_flash_xml']['total'] > 0):
    foreach ($_from AS $this->_var['playerdb']):
        $this->_foreach['get_flash_xml']['iteration']++;
?>
          <div style="background: url(<?php echo $this->_var['playerdb']['src']; ?>) no-repeat scroll center 50% rgb(255, 255, 255); display: block;-webkit-border-radius:8px;-moz-border-radius:8px;border-radius:8px" index="<?php echo $this->_foreach['get_flash_xml']['iteration']; ?>"><a href="<?php echo $this->_var['playerdb']['url']; ?>" target="_blank"></a></div>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>   
          <ul style="width: 80px; right: 50%; margin-right: -465px;">
		  <?php $_from = get_flash_xml(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'playerdb');$this->_foreach['get_flash_xml'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['get_flash_xml']['total'] > 0):
    foreach ($_from AS $this->_var['playerdb']):
        $this->_foreach['get_flash_xml']['iteration']++;
?>
            <li class="<?php if ($this->_foreach['get_flash_xml']['iteration'] == 1): ?>on<?php endif; ?>" index="<?php echo $this->_foreach['get_flash_xml']['iteration']; ?>"></li>
		  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>	
          </ul>
        </div>
        <script type="text/javascript">$(function(){Xmeb.App.xmFocus.init($("#xmFocus"),{mwidth:"auto",autoWidth:true});Xmeb.App.lazyload({defObj:".home_main",defHeight:50});});</script>
      </div>
      <div class="hdshow row">
        <div class="span3">
          
<?php $this->assign('ads_id','1'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

        </div>
        <div class="span3 ">
          
<?php $this->assign('ads_id','2'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

        </div>
        <div class="span3 ">
          
<?php $this->assign('ads_id','3'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

        </div>
        <div class="span3 last">
          
<?php $this->assign('ads_id','4'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

        </div>
      </div>
    </div>
  </div>
  <div id="lazyLoad-box">
    <div class="newgoods row clearfix">
      <div class="span12">
        <div class="xm-box">
          <div class="hd">
            <h3 class="title"><b>新品上架</b></h3>
          </div>
          <div class="bd clearfix">
            <ul class="home-goods-list home-goods-listlt clearfix">
              <li class="big">
                
<?php $this->assign('ads_id','5'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
              <li class="last">
                
<?php $this->assign('ads_id','6'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
              <li>
                
<?php $this->assign('ads_id','7'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
              <li >
                
<?php $this->assign('ads_id','8'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
              <li class="last">
                
<?php $this->assign('ads_id','9'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
            </ul>
            <ul class="home-goods-list home-goods-listrt clearfix">
              <li class="small">
                
<?php $this->assign('ads_id','10'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
              <li class="small">
                
<?php $this->assign('ads_id','11'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
              <li class="small smallsublast">
                
<?php $this->assign('ads_id','12'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
              <li class="small smalllast last">
                
<?php $this->assign('ads_id','13'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="span3">
        <div class="xm-box">
          <div class="bd">
            <div class="spike">
              <div class="tit"><strong>推荐商品</strong></div>
			  <?php $_from = $this->_var['best_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['best_good'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['best_good']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['best_good']['iteration']++;
?>
              <div class="goodsItems">
                <p><a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"><?php echo $this->_var['goods']['short_style_name']; ?></a></p>
                <p class="f1"> 特价：<font class="f1"><?php if ($this->_var['goods']['promote_price'] != ""): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></font></p>
                <p><a href="<?php echo $this->_var['goods']['url']; ?>"><img src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>" class="goodsimg" /></a></p>
              </div>
              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </div>
          </div>
        </div>

      </div>
    </div>
    <div class="hotgoods">
      <div class="xm-box">
        <div class="hd">
          <h3 class="title"><b>热销产品</b></h3>
        </div>
        <div class="bd clearfix">
          <ul class="goods clearfix">
            <li class="big">
              
<?php $this->assign('ads_id','14'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

            </li>
            <li>
              
<?php $this->assign('ads_id','15'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

            </li>
            <li class="last">
              
<?php $this->assign('ads_id','16'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

            </li>
            <li class="small">
              
<?php $this->assign('ads_id','17'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

              
<?php $this->assign('ads_id','18'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

            </li>
            <li>
              
<?php $this->assign('ads_id','19'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

            </li>
            <li class="big last">
              
<?php $this->assign('ads_id','20'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

            </li>
          </ul>
          <div class="xm-box home-goods-sublist">
            <div class="bd">
              <ul>
                <li class="small">
                  
<?php $this->assign('ads_id','21'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

                  
<?php $this->assign('ads_id','22'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

                </li>
                <li>

<?php $this->assign('ads_id','23'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="xm-box home-today-goods">
      <div class="hd">
        <h3 class="title"><b>健康礼品系列</b></h3>
      </div>
      <div class="bd clearfix">
        <div class="home-featured-goods">
          
<?php $this->assign('ads_id','26'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

        </div>
        <div class="xm-goods-list-wrap">
          <ul class="xm-goods-list clearfix">

<li>

<?php $this->assign('ads_id','31'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

</li>
<li>

<?php $this->assign('ads_id','32'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

</li>
<li>

<?php $this->assign('ads_id','33'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

</li>       
          </ul>
        </div>
      </div>
    </div>
  </div>
</div><?php echo $this->fetch('library/page_footer.lbi'); ?></body>
</html>
