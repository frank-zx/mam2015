<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>修改密码-第十届（2015）中国管理学年会</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
<link rel="stylesheet" href="resources/css/pupdatepw.css" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  		<script src="/assets/js/html5shiv.min.js?v=f7c242d291"></script>
  		<script src="/assets/js/respond.min.js?v=f7c242d291"></script>
		<![endif]-->
</head>
<body>
    <%
		if (session.getAttribute("email") == null) {
	%>
	<jsp:forward page="../../../error.jsp"></jsp:forward>

	<%
		}
	%>
   <!--header  头部导航-->
    <jsp:include page="../../includes/header.jsp"></jsp:include>


	<!--main内容-->
	<div id="main">
		<!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
		<div class="main-content">
			<div class="pw-con">
			${requestScope.modifyPwd }
				<form action="member/modifyPwd.action" method="post">
					<label for="upw" class="control-label">原密码：<font color="red" size="2px">(必填)</font></label>
				    <input type="password" name="pwd" class="form-control input-text control-input" placeholder="输入原密码" id="upw">
				    <div class="height-margin"></div>
				
				    <label for="new-pw" class="control-label">新密码：<font color="red" size="2px">(必填)</font></label>
				    <input type="password" name="newpwd" class="form-control input-text control-input" placeholder="输入新密码" id="new-pw">
				    <div class="height-margin"></div>
				    
				    <label for="repeat-pw" class="control-label">确认密码：<font color="red" size="2px">(必填)</font></label>
				    <input type="password" name="newpwd2" class="form-control input-text control-input" placeholder="重复新密码" id="repeat-pw">
				    <div class="height-margin"></div>
				    <button type="submit" class="btn input-text" id="btn-submit">提交</button> 
				</form>
				<div class="clearfloat"></div>
			</div>
		</div>
	</div>
  
  <!--footer-->
  <jsp:include page="../../includes/footer.jsp"></jsp:include>
  
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <script type="text/javascript"
		src="http://cdn.bootcss.com/jquery-placeholder/2.0.8/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input, textarea').placeholder();
		});
		  $('#btn-submit').bind('click',function(){		
				var upw=$.trim($('#upw').val());
				  var upwValue = $.trim($('#new-pw').val());
					var cofirmpwVal = $.trim($('#repeat-pw').val());
					len1=parseInt(upw.length);
					len = parseInt(upwValue.length);
					if(len1<=0){
						alert("原密码不能为空！");
						return false;
					}else if(len1 > 0 && len1 < 6){
						alert("原密码至少6位数！");
						return false;
					}
					
					if(len <= 0){
						alert("新密码不能为空！");
						return false;
					}else if(len > 0 && len < 6){
						alert("新密码至少6位数！");
						return false;
					}else if(len >= 6){
						if(upwValue != cofirmpwVal){
							alert("新密码不一致！");
							return false;
						}

					}
				})
	</script>
  </body>  
</html>