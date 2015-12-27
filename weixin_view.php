<?php
echo "hello".'<br /><br />';

$appid = "wxa0af9255bee3f7cb";
$secret = "d4624c36b6795d1d99dcf0547af5443d";

$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$appid."&secret=".$secret;
$json = file_get_contents($url);
echo $json.'<br /><br />';
$result = json_decode($json);
$token = $result->access_token;
echo "access_token:".$result->access_token.'<br /><br />';

echo 'REQUEST_URI:'.$_SERVER['REQUEST_URI'].'<br /><br />';

$code = $_GET["code"];

$url='https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$appid.'&secret='.$secret.'&code='.$code.'&grant_type=authorization_code';  
$json = file_get_contents($url);  
echo $json.'<br /><br />';

$result = json_decode($json);
echo "openid:".$result->openid.'<br /><br />';
//echo "access_token:".$result->access_token.'<br /><br />';

$url = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=".$token."&openid=".$result->openid."&lang=zh_CN";

echo "url:".$url."<br /><br />";

$json = file_get_contents($url);

echo $json.'<br /><br />';

$json = json_decode($json);

echo "openid: ".$json->openid.'<br /><br />';
echo "nickname: ".$json->nickname.'<br /><br />';
echo "headimgurl: ".$json->headimgurl.'<br /><br />';

?>
<script type="text/javascript">
<?php
echo "var wxid = '".$json->openid."';";
?>
var url = "http://112.124.110.58:8081/user.php?act=act_login_wechat&back_act=http%3A%2F%2F112.124.110.58%3A8080%2Findex.php&wxid=" + wxid;
//window.open(url);
window.location.href = url;
</script>
