<?php
	include("my.conf");
	
	/*include "lib/db/NotORM.php";
	$pdo = new PDO(DB_Dsn,DB_User,DB_Pwd);
	$db = new NotORM($pdo);
	$pdo->exec("set names utf8");
	$a=$db->shop_news()->select("id,news_titile")->where('id',1)->order('id')->limit(10);
	
	foreach($a as $news)
	{
		echo $news["news_titile"];
		
	}*/
	require("common/function.php");//加载全站函数文件
	require("MVC/C/_Main.c");//加载control主文件
	require("MVC/M/_Model.m");//加载model主文件
	$get_control=isset($_GET["control"])?trim($_GET["control"]):"index";
	$get_action=isset($_GET["action"])?trim($_GET["action"]):"index";
	if(file_exists("MVC/C/".$get_control.".c"))
	{
		require("MVC/C/".$get_control.".c");
		
		$control=new $get_control();
		if(method_exists($control, $get_action))
		{
			
			$control-> $get_action();
			$control->run();
		}
	}
?>