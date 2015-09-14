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
		<title>注册-第十届（2015）中国管理学年会</title>
		<link rel="stylesheet" href="resources/css/common/bootstrap.css">
        <link rel="stylesheet" href="resources/css/common/nav.css"/>
        <link rel="stylesheet" href="resources/css/common/footer.css"/>
        <link rel="stylesheet" href="resources/css/register.css">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  		<!--[if lt IE 9]>
  		<script src="/assets/js/html5shiv.min.js?v=f7c242d291"></script>
  		<script src="/assets/js/respond.min.js?v=f7c242d291"></script>
		<![endif]-->
		
	</head>
	<body>
	<!--header  头部导航-->
	<jsp:include page="../../includes/header.jsp"></jsp:include>

    <div class="main">
      <div class="main-content">
        <div class="form-filedset">
          <div class="form-title">
          </div>
          <div class="form-right">
          </div>
          <div id="register-con">
            <form action="membernotlogin/register.action"  method="post" >
              <label for="email" class="control-label">注册邮箱：<font color="red" size="2px">(必填)</font></label>
              <input type="email" name="email" class="form-control input-text control-input" placeholder="输入邮箱地址" id="email">${requestScope.emailExist}
              <div class="height-margin"></div>

              <label for="upw" class="control-label">用户密码：<font color="red" size="2px">(必填)</font></label>
              <input type="password" name="pwd" class="form-control input-text control-input" placeholder="输入密码" id="upw">${requestScope.pwdError}
              <div class="height-margin"></div>

              <label for="confirm-pw" class="control-label">确认密码：<font color="red" size="2px">(必填)</font></label>
              <input type="password" name="pwd2" class="form-control input-text control-input" placeholder="确认密码" id="cofirmpw">
              <div class="height-margin"></div>

              <button type="submit" class="btn input-text" id="btn-register">注册</button>
            </form>
          </div>
          <div class="form-bottom">
          </div>
        </div>
      </div>
    </div>

	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="http://cdn.bootcss.com/jquery-placeholder/2.0.8/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input, textarea').placeholder();
		});

		$('#btn-register').bind('click',function(){
			var emailname=$.trim($('#email').val());
			apos=emailname.indexOf("@")
			dotpos=emailname.lastIndexOf(".")
			if (apos<1||dotpos-apos<2) {
				alert("邮箱格式不正确！");
			$('#email').focus();
		       return false;}
			
			var upwValue = $.trim($('#upw').val());
			var cofirmpwVal =$.trim($('#cofirmpw').val());
			len = parseInt(upwValue.length);
		
			if(len <= 0){
				alert("密码不能为空！");
				$('#upw').focus();
				return false;
			}else if(len > 0 && len < 6){
				alert("密码至少6位数！");
				$('#upw').focus();
				return false;
			}else if(len >= 6){
				if(upwValue != cofirmpwVal){
					alert("密码不一致！");
					$('#cofirmpw').focus();
					return false;
				}

			}
		})
	</script>
	</body>
</html>