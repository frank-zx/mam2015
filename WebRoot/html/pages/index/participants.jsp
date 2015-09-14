<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>已报名参会人员-第十届（2015）中国管理学年会</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
<link rel="stylesheet" href="resources/css/common/left_nav_model.css">
<link rel="stylesheet" href="resources/css/nav_3.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  		<script src="/assets/js/html5shiv.min.js?v=f7c242d291"></script>
  		<script src="/assets/js/respond.min.js?v=f7c242d291"></script>
		<![endif]-->
</head>
<body>
	<!--header  头部导航-->
	<jsp:include page="../../includes/header.jsp"></jsp:include>

	<!--main内容-->
	<div id="main">
		<!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
		<div class="main-content">

			<div class="content-article">
				<div class="article-title">
					<h3>查看已报名参会人员</h3>
				</div>
				<div class="content-con">
					<div class="news-list">
						<h4 class="title-bar">
							<span class="topic-name" style="width:247px;">真实姓名</span> <span
								class="post-time" style="width:225px;font-size:16px;">邮箱地址</span>
							<span class="jiaofei"
								style="display:inline-block;width:140px;font-size:16px;">缴费状态</span>
							<span class="views" style="font-size:16px;margin-right:20px;">报名结果</span>
						</h4>
						<ul>
							<c:forEach items="${partiList}" var="parti">
								<li><span class="topic-name" style="width:247px;"> 
								<font>${parti.realname} </font>  </span> <span class="post-time" style="width:225px;"><font>
											${parti.email} </font>
								</span> <span style="display:inline-block;width:140px;margin-left:9px;"><font> <c:if
												test="${parti.payed}">已缴费</c:if> <c:if
												test="${!parti.payed}">未缴费</c:if> </font>
								</span> <span style="display:inline-block;float:right;margin-right:30px;"><font> <c:if
												test="${parti.payed}">已完成</c:if> <c:if
												test="${!parti.payed}">未完成</c:if> </font>
								</span></li>
							</c:forEach>

						</ul>
					</div>
				</div>
			</div>
			<div class="nav-left">
				<div class="left-title">
					<h3>会议报名</h3>
				</div>
				<ul>
				<li>
            			<a href="member/showYourParti.action">查看报名参会人员</a>
          			</li>
					<li>
            			<a href="html/pages/index/baomingenroll.jsp">添加新报名人员</a>
          			</li>
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