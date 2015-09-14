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
<title>酒店预订-第十届（2015）中国管理学年会</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
<link rel="stylesheet" href="resources/css/index.css" />
<link rel="stylesheet" href="resources/css/art_sub.css" />
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

	<!--main    内容-->
	<div id="main">
		<!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
		<div class="main-content">
			<form id="info-sub" action="member/hotelbook.action" method="post" onsubmit="return validate_form(this)">
				<div class="form-content">
					<div class="form-title">
					
							
						
						<h4>
							<a href="member/hotelbooked.action" style="float:left">&gt; 查看已预订信息</a>&gt; 酒店预订
						</h4>
					</div>
                    
                    <label class="control-label">酒店：</label>
					<select  name="hotel" style="margin-left:90px;">
						<option value="任意" selected>任意</option>
						<option value="世纪金源大饭店" >世纪金源大饭店</option>
						<option value="视界风尚假日酒店">视界风尚假日酒店</option>
					</select>
                    <div class="height-margin"></div>
					<label for="art-title" class="control-label">单间数量：</label> 
					<input
						type="text" name="danjian"
						value="0" id="spinner1">
					<div class="height-margin"></div>
						<label for="art-title" class="control-label">标间数量：</label> 
                    <input
						type="text" name="biaojian"
						value="0" id="spinner2">

					<div class="height-margin"></div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary" id="btn-sub">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="http://cdn.bootcss.com/jquery-placeholder/2.0.8/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input, textarea').placeholder();
		});
		
		$("#spinner1").spinner({ 
		    max:50, 
		    min:0, 
		    step:1 
		}); 
		
		$("#spinner2").spinner({ 
		    max:50, 
		    min:0, 
		    step:1 
		}); 
		
		function validate_form(thisform)
		{
			with (thisform) 
			{
				
				if ($.trim($("#spinner1").val())==0&&$.trim($("#spinner1").val())==0)
				{alert("请选择房间数量");return false}

			}
		}
	</script>
</body>
</html>