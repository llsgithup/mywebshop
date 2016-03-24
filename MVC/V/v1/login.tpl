<script>
	function login()
</script>
<div class="container col-md-12">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-3 control-label">用户名：</label>
					<div class="col-sm-9">
						<input class="form-control" id="inputEmail3" type="email" placeholder="请输入用户名" />
					</div>
				</div>
				<div class="form-group">
					 <label for="inputPassword3" class="col-sm-3 control-label">密码：</label>
					<div class="col-sm-9">
						<input class="form-control" id="inputPassword3" type="password" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
						<div class="checkbox">
							 <label><input type="checkbox" /> 记住我</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
						 <button type="button" class="btn btn-info">登录</button>
						 <button type="button" onclick="self.parent.sd_remove();" class="btn btn-default">关闭</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>