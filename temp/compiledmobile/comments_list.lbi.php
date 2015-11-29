
 



<ul class="list">
        <?php if ($this->_var['comments']): ?>
       <?php $_from = $this->_var['comments']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comment');if (count($_from)):
    foreach ($_from AS $this->_var['comment']):
?>
        <li>
          <blockquote> 
          <?php echo $this->_var['comment']['content']; ?>
          </blockquote>
          <p class="property">评价：<img src="themes/default/images/stars<?php echo $this->_var['comment']['rank']; ?>.gif" alt="<?php echo $this->_var['comment']['comment_rank']; ?>" /></p>
          <div class="other"> <span class="user"><?php if ($this->_var['comment']['username']): ?><?php echo htmlspecialchars($this->_var['comment']['username']); ?><?php else: ?><?php echo $this->_var['lang']['anonymous']; ?><?php endif; ?>( <?php echo $this->_var['comment']['add_time']; ?> )</span>
               </div>
	  <?php if ($this->_var['comment']['re_content']): ?>
        <font class="f2"><?php echo $this->_var['lang']['admin_username']; ?></font><br /><?php echo $this->_var['comment']['re_content']; ?>
				<?php endif; ?>
        </li>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
			<?php endif; ?>
      </ul>




 
        
       
       <div id="pagebar" class="f_r">
        <form name="selectPageForm" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
        <?php if ($this->_var['pager']['styleid'] == 0): ?>
        <div id="pager" style="padding:10px 0">
          <?php echo $this->_var['lang']['pager_1']; ?><?php echo $this->_var['pager']['record_count']; ?><?php echo $this->_var['lang']['pager_2']; ?><?php echo $this->_var['lang']['pager_3']; ?><?php echo $this->_var['pager']['page_count']; ?><?php echo $this->_var['lang']['pager_4']; ?> <span>  <a href="<?php echo $this->_var['pager']['page_prev']; ?>"><?php echo $this->_var['lang']['page_prev']; ?></a> <a href="<?php echo $this->_var['pager']['page_next']; ?>"><?php echo $this->_var['lang']['page_next']; ?></a>  </span>
            <?php $_from = $this->_var['pager']['search']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item_0_17371500_1402452015');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item_0_17371500_1402452015']):
?>
            <input type="hidden" name="<?php echo $this->_var['key']; ?>" value="<?php echo $this->_var['item_0_17371500_1402452015']; ?>" />
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
        <?php else: ?>


        <?php endif; ?>
        </form>
        <script type="Text/Javascript" language="JavaScript">
        <!--
        
        function selectPage(sel)
        {
          sel.form.submit();
        }
        
        //-->
        </script>
      </div>
      
      <div class="blank5"></div>
      
      <div class="commentsList">
      <form action="javascript:;" onsubmit="submitComment(this)" method="post" name="commentForm" id="commentForm">
   
 <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="" >
           <tr>
          <td>
        <?php echo $this->_var['lang']['username']; ?>：<?php if ($_SESSION['user_name']): ?><?php echo $_SESSION['user_name']; ?><?php else: ?><?php echo $this->_var['lang']['anonymous']; ?><?php endif; ?>
          </td>
        </tr>
     <tr>
         
          <td>
          <input name="comment_rank" type="radio" value="1" id="comment_rank1" /> 非常好
          <input name="comment_rank" type="radio" value="2" id="comment_rank2" /> 很好
          <input name="comment_rank" type="radio" value="3" id="comment_rank3" /> 一般
          <input name="comment_rank" type="radio" value="4" id="comment_rank4" /> 不行
          <input name="comment_rank" type="radio" value="5" checked="checked" id="comment_rank5" /> 很差
          </td>
        </tr>
          <td>
          <input placeholder="E-mail"  type="text" name="email" id="email"  maxlength="100" value="<?php echo htmlspecialchars($_SESSION['email']); ?>" class="inputBg"/>
          </td>
        </tr>
        
        <tr>
  
          <td>
          <textarea  placeholder="<?php echo $this->_var['lang']['comment_content']; ?>" name="content" class="B_blue" style="height:70px;"  ></textarea>
          <input type="hidden" name="cmt_type" value="<?php echo $this->_var['comment_type']; ?>" />
          <input type="hidden" name="id" value="<?php echo $this->_var['id']; ?>" />
          </td>
        </tr>
        <tr>
          <td>
          <?php if ($this->_var['enabled_captcha']): ?>
          <div style="padding-left:15px; text-align:left; float:left;">
          <?php echo $this->_var['lang']['comment_captcha']; ?>：<input type="text" name="captcha"  class="inputBorder" style="width:50px; margin-left:5px;"/>
          <img src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="captcha" onClick="this.src='captcha.php?'+Math.random()" class="captcha">
          </div>
          <?php endif; ?>
          
			  <input type="submit" name="submit" value=" 提交评论 "  class="c-btn1"   /> 
          </td>
        </tr>
      </table>
      </form>
      </div>
	  
	  
	  
	  
	  
	  
	  
	  
      
 
    <div class="blank5"></div>
  
<script type="text/javascript">
//<![CDATA[
<?php $_from = $this->_var['lang']['cmt_lang']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item_0_17417000_1402452015');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item_0_17417000_1402452015']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item_0_17417000_1402452015']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

/**
 * 提交评论信息
*/
function submitComment(frm)
{
  var cmt = new Object;

  //cmt.username        = frm.elements['username'].value;
  cmt.email           = frm.elements['email'].value;
  cmt.content         = frm.elements['content'].value;
  cmt.type            = frm.elements['cmt_type'].value;
  cmt.id              = frm.elements['id'].value;
  cmt.enabled_captcha = frm.elements['enabled_captcha'] ? frm.elements['enabled_captcha'].value : '0';
  cmt.captcha         = frm.elements['captcha'] ? frm.elements['captcha'].value : '';
  cmt.rank            = 0;

  for (i = 0; i < frm.elements['comment_rank'].length; i++)
  {
    if (frm.elements['comment_rank'][i].checked)
    {
       cmt.rank = frm.elements['comment_rank'][i].value;
     }
  }

//  if (cmt.username.length == 0)
//  {
//     alert(cmt_empty_username);
//     return false;
//  }

  if (cmt.email.length > 0)
  {
     if (!(Utils.isEmail(cmt.email)))
     {
        alert(cmt_error_email);
        return false;
      }
   }
   else
   {
        alert(cmt_empty_email);
        return false;
   }

   if (cmt.content.length == 0)
   {
      alert(cmt_empty_content);
      return false;
   }

   if (cmt.enabled_captcha > 0 && cmt.captcha.length == 0 )
   {
      alert(captcha_not_null);
      return false;
   }

   Ajax.call('comment.php', 'cmt=' + cmt.toJSONString(), commentResponse, 'POST', 'JSON');
   return false;
}

/**
 * 处理提交评论的反馈信息
*/
  function commentResponse(result)
  {
    if (result.message)
    {
      alert(result.message);
    }

    if (result.error == 0)
    {
      var layer = document.getElementById('ECS_COMMENT');

      if (layer)
      {
        layer.innerHTML = result.content;
      }
    }
  }

//]]>
</script>