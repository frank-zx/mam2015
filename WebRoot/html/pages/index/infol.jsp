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
<title>主旨演讲嘉宾-李善同</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
<link rel="stylesheet" href="resources/css/common/left_nav_model.css">
<style type="text/css">
.main-content .content-article {
  width: 815px;
  font-family: "微软雅黑","Microsoft Yahei",Arial,Helvetica,sans-serif,"宋体";
  color: #333;
  height: auto;
  padding-left: 0px;
  margin: 0 auto;
  border:none;
  float:none;
}
.content-article .article-title h3 {
	border:none;
}
</style>
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
					<h3>简介</h3>
				</div>
				<div class="content-con" style="margin-left:70px;font-size:18px;line-height:25px;">
					<p>
					<strong>李善同</strong>，女，国务院发展研究中心发展战略和区域经济研究部研究员，学术委员会委员，中国发展基金会学术委员会副主任，经济学家，清华大学双聘教授。北京大学数学系硕士研究生，1981年至今就职于国务院发展研究中心。历任发展预测研究部副部长、部长，发展战略和区域经济研究部部长。兼任中国自然资源学会副理事长，中国数量经济学会副理事长，中国投入产出学会副理事长、北京大学光华管理学院教授、博士生导师，清华大学中国发展规划研究中心学术委员会副主任等职，曾任国际投入产出学会理事。
					</p>
					<p>
					研究领域：主要从事中国中长期发展战略与预测，宏观经济分析，区域经济和区域政策、产业政策，宏观经济模型研制与应用等方面的研究
					</p>
				</div>
			</div>
			<!-- left -->
			<%-- <jsp:include page="../../includes/nav_2_left.jsp"></jsp:include> --%>
			<div class="clearfloat"></div>
		</div>
		<!--footer-->
		<jsp:include page="../../includes/footer.jsp"></jsp:include>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</body>
</html>