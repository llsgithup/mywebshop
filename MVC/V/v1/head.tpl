<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

<link href="/css/bootstrap.min.css" rel="stylesheet"/>
<link href="/css/showDialog.css" rel="stylesheet" />

</head>
<html>
	<body>
<?php if($hideTop!='true'): ?>
	<script type="text/javascript" src="/js/jquery.min.js" ></script>
<script src="/js/bootstrap.js" ></script>
	<script src="/js/showDialog.js"></script>
	
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">切换导航</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">导航</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">链接</a>
						</li>
						<li>
							<a href="#">链接</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">列表一</a>
								</li>
								<li>
									<a href="#">列表二</a>
								</li>
								<li>
									<a href="#">列表三</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">更多列表</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">更多列表</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input class="form-control" type="text" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#" onclick='showWindow("会员登录","/member/login/",500);'>登录</a>
						</li>
						<li class="dropdown">
							
					<a href="#">注册</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
</div>
<?php endif; ?>
