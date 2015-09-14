<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>联系我们-第十届（2015）中国管理学年会</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
<link rel="stylesheet" href="resources/css/common/left_nav_model.css">
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
		<!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
		<div class="main-content">

			<div class="content-article">
				<div class="article-title">
					<h3>联系我们</h3>
				</div>
				<div class="content-con">
					<p>若有问题，敬请联系：</p><br/>
					<p>大会秘书处电子邮箱：hfutsom@mam2015.org.cn</p>
					<p>地址：合肥市包河区屯溪路193号合肥工业大学管理学院   第十届中国管理学年会会务组</p>
					<p>邮编：230009</p><br/>
					<p>接待事宜，敬请联系：吴东升，0551-62901400</p>
					<p>论坛事宜，敬请联系：梁昌勇，0551-62904965</p>
					<p>招聘事宜，敬请联系：尚广海，0551-62904889</p>
				</div>
			</div>
			<div class="nav-left">
				<div class="left-title">
					<h3>关于我们</h3>
				</div>
				<ul>
					<li><a href="html/pages/index/nav_about.jsp">关于合肥工业大学</a></li>
					<li><a href="html/pages/index/nav_about_2.jsp">关于合肥工业大学管理学院</a>
					</li>
					<li><a href="html/pages/index/nav_about_1.jsp">联系我们</a></li>
				</ul>
			</div>
		</div>
		<div class="clearfloat"></div>
	</div>

	<!--footer-->
	<jsp:include page="../../includes/footer.jsp"></jsp:include>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</body>
</html>