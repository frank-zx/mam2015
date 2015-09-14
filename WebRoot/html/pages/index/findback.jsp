<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
	 <base href="<%=basePath%>">
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>找回密码-第十届（2015）中国管理学年会</title>
		<link rel="stylesheet" href="resources/css/common/bootstrap.css">
        <link rel="stylesheet" href="resources/css/common/nav.css"/>
        <link rel="stylesheet" href="resources/css/common/footer.css"/>
         <link rel="stylesheet" href="resources/css/findback.css"/>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  		<!--[if lt IE 9]>
  		<script src="/assets/js/html5shiv.min.js?v=f7c242d291"></script>
  		<script src="/assets/js/respond.min.js?v=f7c242d291"></script>
		<![endif]-->
	</head>
	<body>
	<!--header  头部导航-->
	<jsp:include page="../../includes/header.jsp"></jsp:include>

    <div id="main">
     
      <div class="main-content">
        <div id="find-back">
				<div class="find-title">
					<h4>找回密码步骤：</h4>
					<div class="title-road">
						<p>
							<span class="road-active">1.获取邮箱验证码</span>
							<span class="road-active">——></span>
							<span id="road-two">2.校验验证码</span>
							<span  class="road-active">——></span>
							<span id="road-thr">3.重置密码</span>
						</p>
					</div>
				</div>
					<div class="find-form">
						<form action="" class="road1">
							<label for="email" class="control-label">输入登录邮箱：</label>
							    <input type="email" name="email" class="form-control input-text " placeholder="输入登录邮箱" id="email">
							    <button type="button" class="btn btn-primary" id="btn-catch">获取验证码</button>
							    <br/><font color="red" size="2px">（点击获取验证码后请等待数秒，请勿重复多次点击）</font>
						</form>
						<form action="" class="road2">
								<label for="coder" class="control-label">输入验证码：</label>
							    <input type="text" name="coder" class="form-control input-text" placeholder="输入验证码" id="coder">
							    <button type="button" class="btn btn-primary" id="btn-coder">提交</button>
						</form>
						<form action="membernotlogin/resetPwd.action" method="post" class="road3" id="form3">
							<div class="form-group">								
							<label for="new-pw" class="control-label">新密码：</label>
							<input type="password" name="newpwd" class="form-control input-text control-input" placeholder="输入新密码" id="new-pw">
							<div class="height-margin"></div>
							    
							<label for="repeat-pw" class="control-label">确认新密码：</label>
							<input type="password" name="newpwd2" class="form-control input-text control-input" placeholder="重复新密码" id="repeat-pw">
							<div class="height-margin"></div>
							<button type="button" class="btn btn-primary" id="btn-submit">提交新密码</button> 
							</div>
							<div class="clearfloat"></div>
						</form>
					</div>
				</div>
			</div>
      </div>
      <!--footer-->
	<div class="clearfloat"></div>
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/artDialog.js"></script>
	<script type="text/javascript" src="resources/js/findback.js"></script>
	<script type="text/javascript"
		src="http://cdn.bootcss.com/jquery-placeholder/2.0.8/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input, textarea').placeholder();
		});
	</script>
	</body>
</html>