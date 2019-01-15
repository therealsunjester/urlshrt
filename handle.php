<?php
require_once("Db.class.php");
$db = new Db();

//redirect urls
if(@$_GET['url'])
{
	$url = filter_var($_GET['url'], FILTER_SANITIZE_STRING);
	$number = unpack('i', base64_decode(str_pad(strtr($url, '-_', '+/'), strlen($url) % 4, '=')));
	$url = $db->getUrl($number[1]);

	//add to views for link

	die("<script>document.location.replace('".$url."');</script>");
}

//convert urls
$path = explode("/", dirname(__FILE__));
$dir = count($path)-1;

$url = filter_var($_POST['url'], FILTER_VALIDATE_URL);
if($url != "")
{
	$n = $db->getId()+1;

	$short = strtr(rtrim(base64_encode(pack('i', $n)), '='), '+/', '-_');
	$shorturl = "http://".$_SERVER['SERVER_NAME']."/".$path[$dir]."/v/".$short;
	$db->addUrl($url, $shorturl, $_SERVER['REMOTE_ADDR']);

	echo $shorturl;
} else {
	echo "invaid url";
}
?>