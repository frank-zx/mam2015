<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>第十届（2015）管理学年会后台管理系统</title>
<head lang="en">
<base href="<%=basePath%>">
	 	<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	  	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css"> 
	  	<link rel="stylesheet" href="resources/css/common/bootstrap.css">
	  	<link rel="stylesheet" href="resources/css/login_admin.css">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	  	<!--[if lt IE 9]>
	  	<script src="/assets/js/html5shiv.min.js?v=f7c242d291"></script>
	  	<script src="/assets/js/respond.min.js?v=f7c242d291"></script>
		<![endif]-->
	</head>
  <body class="login-page">
	<div class="login-form">
		<div class="login-title">
			<h4>第十届（2015）管理学年会后台管理系统</h4>
		</div>
		<div class="login-content">
		<font color="red">${requestScope.loginfail}</font>
			<form method="post" action="adminLogin/login.action" id="form_login">				
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-user"></i>
						</div>
						<input type="text" class="form-control" name="name" id="name" placeholder="用户名" autocomplete="off" required/>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-key"></i>
						</div>
						<input type="password" class="form-control" name="pwd" id="pwd" placeholder="密码" autocomplete="off" required/>
					</div>
				</div>
				
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block btn-login" id="login">
						<i class="fa fa-sign-in"></i>
						登录
					</button>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript"
		src="http://cdn.bootcss.com/jquery-placeholder/2.0.8/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input, textarea').placeholder();
		});
		
		$('#login').bind('click',function(){
			
			var nameValue = $.trim($('#name').val());
			var pwdVal = $.trim($('#pwd').val());
			len1 = parseInt(nameValue.length);
			len2 = parseInt(pwdVal.length);
			if(len1 <= 0){
				alert("用户名不能为空！");
				$('#name').focus();
				return false;
			}else if(len2 <= 0){
				alert("密码不能为空！");
				$('#pwd').focus();
				return false;
			}
		})
	</script>
</body>
</html>