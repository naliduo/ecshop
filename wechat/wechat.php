<?php

//echo "hello";
if ( !isset( $_GET["code"] ) )
{
    echo "hello";
    Header( "Location: https://open.weixin.qq.com/connect/qrconnect?appid=wx89c31b2463e77c76&redirect_uri=http%3A%2F%2Fshop.dream-gardens.com.cn%2Fwechat%2Fwechat.php&response_type=code&scope=snsapi_login&state=STATE#wechat_redirect" );
    die;
}


$appid = "wx89c31b2463e77c76";
$secret = "8b8eae1577b2d027f1f392dc1295c955";

$url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$secret."&code=".$_GET["code"]."&grant_type=authorization_code";
$json = file_get_contents($url);

echo $json.'<br /><br />';

$json = json_decode($json);

$url = "https://api.weixin.qq.com/sns/userinfo?access_token=".$json->access_token."&openid=".$json->openid;
$json = file_get_contents($url);

echo $json.'<br /><br />';
$json = json_decode($json);
echo "openid: ".$json->openid.'<br /><br />';
echo "nickname: ".$json->nickname.'<br /><br />';
echo "headimgurl: ".$json->headimgurl.'<br /><br />';
echo "unionid: ".$json->unionid.'<br /><br />';

?>

<script type="text/javascript">
<?php
echo "var wxid = '".$json->unionid."';";
echo "var wxnm = '".$json->nickname."';";
?>
var url = "http://shop.dream-gardens.com.cn/user.php?act=act_login_wechat&back_act=%2F&wxid=" + wxid + "&wxnm=" + wxnm;
window.location.href = url;
</script>