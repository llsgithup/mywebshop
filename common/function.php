<?php
//通用web函数
function GET($pname,$method="get")
{
	$plist=$method=="get"?$_GET:$_POST;
		
	if(isset($plist[$pname]))//过滤关键字
	{
		$getvalue=trim($plist[$pname]);
		$getvalue=str_replace(array("gcd"), "", $getvalue);
		return $getvalue;
	}
	else
		return false;
}
function IP()//获取IP
{
 
		if(!empty($_SERVER["HTTP_CLIENT_IP"])){
		  $cip = $_SERVER["HTTP_CLIENT_IP"];
		}
		elseif(!empty($_SERVER["HTTP_X_FORWARDED_FOR"])){
		  $cip = $_SERVER["HTTP_X_FORWARDED_FOR"];
		}
		elseif(!empty($_SERVER["REMOTE_ADDR"])){
		  $cip = $_SERVER["REMOTE_ADDR"];
		}
		else{
		  $cip = "";
		}
		return $cip;
	 
		 
 
}
function set_cache($key,$value,$expire)//设置缓存
{
	$m=new Memcache();
	$m->connect(Cache_IP,Cache_Port);
	$m->set($key,$value,0,$expire);
}
function get_cache($key)//取得缓存
{
		$m=new Memcache();
	$m->connect(Cache_IP,Cache_Port);
	return $m->get($key);
}
function load_model($mName)
{
	return new _Model($mName);//加载模块
}
function load_lib($lib,$libName)
{
	require("lib/".$lib."/".$libName.".php");//后缀必须是php
}
require("crypt.php");//加密函数
?>