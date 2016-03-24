<?php
 class index extends _Main
 {
 	
	 function getprod()
	 {
	 	$this->setViewName("msg");
		$this->addObject("hideTop","true");
		$this->addObject("hideFooter","true");
		echo myCrypt("admin", User_CryptKey);
	 }
	 function getindex()
	 {
	 	//模板加载 在这个函数里
	 	$this->setViewName("index");
			$this->addObject("hideTop","1");
		$this->addObject("hideFooter","1");
	/*	$this->setCacheEnabled(60);

		if(!$this->inCache())
		{
			  $this->addObject("prod","我的第一个商品");
		}*/
		
	 $m=load_model("users"); //加载用户 表
		$m->loadall();
		
		$this->addObject("users",$m->all()); 
		$this->addObject("username","我的名字");
		
		//$this->isFileCache=true;//保存到文件中
		 
		 
	 }
 }
?>