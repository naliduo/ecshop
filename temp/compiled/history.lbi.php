
<style>
#clear_history{border:0px; width:200px}
#clear_history a{float:right}
</style>
<div class="xm-box" id='history_div'>
    <div class="clearfix">
      <h3><span>你刚刚看过</span></h3>
      <div class="boxCenterList clearfix" id='history_list' style="padding:3px;border-top:none;">
	 
       <?php 
$k = array (
  'name' => 'history',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>
      </div>
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
</script>