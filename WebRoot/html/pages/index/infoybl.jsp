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
<title>主旨演讲嘉宾-游伯龙</title>
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
					<strong>游伯龙</strong>，男，习惯领域学说创始人，多目标决策分析的开拓者。先后就读于台湾大学商学系及美国约翰霍普斯金大学。历任美国罗彻斯特大学管理学院助理教授、德州大学商学院副教授、堪萨斯大学商学院史可宾杰出讲座教授、台湾中央研究院经济研究所特约讲座教授、国立清华大学工业工程研究所特约客座教授与国立交通大学咨询管理研究所讲座教授。
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