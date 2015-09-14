<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%
String path = request.getContextPath(); String basePath =
request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<title>会议缴费-第十届（2015）中国管理学年会</title>
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
			<form id="info-sub" action="member/payfees.action" method="post" enctype="multipart/form-data">
              <div class="form-content">
	              <div class="form-title" style="text-align: left;height:35px;">
	              	
	              	<h4 style="width:100px;float:left;">  &gt; 会议缴费 </h4>
	              	<font color="red" style="width: 255px;float: right;">${requestScope.payfees}</font>
	              </div>
	              <div class="clearfloat"></div>
	              
	              <div class="form-group form-radio">
					 	<label for="isDiscount" style="font-size: 16px;">缴费日期：</label>
							  <input  type="radio" name="isDiscount" id="isDiscount1" value="true">
							  2015年10月15日以前（包括10月15日）
							  <input  type="radio" name="isDiscount" id="isDiscount2" value="false" checked>
							  2015年10月15日以后
					</div>
              	  <label for="realname" class="control-label">教师人数：</label>
	              <input type="text" name="teacherNum" class="form-control input-text control-input" placeholder="请输入教师人数" id="realname">
	              <div class="height-margin"></div>

	              <label for="tel" class="control-label">教师费用：</label>
	              <label for="tel" class="control-label">980元/人</label>
	              <div class="height-margin"></div>
	              
	              <label for="org" class="control-label">学生人数：</label>
	              <input type="text" name="studentNum" class="form-control input-text control-input" placeholder="请输入学生人数" id="org">
	              <div class="height-margin"></div>
     
     	           <label for="email" class="control-label">学生费用：</label>
	               <label for="email" class="control-label">480元/人</label>
	              <div class="height-margin"></div>
	              
	              <label for="email" class="control-label">总费用：</label>
	               <label for="email" class="control-label" name="fee" value="5000">5000元</label>
	              
	              <div class="form-group">
						<label for="file" class="control-label">凭据上传：<font color="red" size="2px">（请上传清晰的银行回执单图片，仅支持.jpg文件）</font></label> 
						<input type="file" name="img" id="js-fileInput" class="form-control">
					</div>
	              <div class="height-margin"></div>
	              
					<div class="form-group">					
	              		<button type="submit" class="btn btn-primary" id="btn-sub">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--footer-->
	<div class="clearfloat"></div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="http://cdn.bootcss.com/jquery-placeholder/2.0.8/jquery.placeholder.min.js"></script>
	
</body>
</html>