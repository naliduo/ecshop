<div class="footer container">
  <div class="footerup">
    <div class="footercont">
      <div class="service clearfix">
	  <?php $_from = get_shop_help(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'help_cat');if (count($_from)):
    foreach ($_from AS $this->_var['help_cat']):
?>
        <dl>
          <dt><?php echo $this->_var['help_cat']['cat_name']; ?></dt>
		  <?php $_from = $this->_var['help_cat']['article']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item_0_89062500_1446882876');if (count($_from)):
    foreach ($_from AS $this->_var['item_0_89062500_1446882876']):
?>
          <dd><a href="<?php echo $this->_var['item_0_89062500_1446882876']['url']; ?>" title="<?php echo $this->_var['item_0_89062500_1446882876']['short_title']; ?>"><?php echo $this->_var['item_0_89062500_1446882876']['short_title']; ?></a></dd>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </dl>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
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
          
            
            
            <?php $_from = $this->_var['qq']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?>
      <?php if ($this->_var['im']): ?>
        <li class="item3 clearfix">
      <a class="btn btn-green" href="/"><span class="icon-common icon-common-face"></span>欢迎来电咨询</a></li>
      <?php endif; ?>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      
      
            
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="footerbtm">
    <div class="info"> <?php echo $this->_var['copyright']; ?> <img src="themes/xm2013/images/footerbg.gif" /></div>
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
                         <li>• <?php echo $this->_var['msg']; ?></li>

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


	   
  <?php if ($this->_var['auto_redirect'] && $_SESSION['is_login_tip']): ?>

       <script>

           function selyes(type){
              if(type=='1'){
                    window.location.href="category.php?id=9";
                }else{
                   window.location.href="index.php";
                }
           }

           var h = $(document).height();
           var w = $(document).width();
           $("#black_bg").css({width:w+'px',height:h+'px'}).fadeIn();
           $('#comment_box44').fadeIn().css("top",$(document).scrollTop()+100);


       </script>
   <?php endif; ?>