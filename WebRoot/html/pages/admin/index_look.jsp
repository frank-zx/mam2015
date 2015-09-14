<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var = "ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head lang="zh-cn">
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>查看信息</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/reset.min.css" />
<link rel="stylesheet" href="resources/css/common/common.min.css" />
<link rel="stylesheet" href="resources/css/index_look.css">
<link rel="stylesheet" href="resources/css/nav_3.css">
</head>
<body>
	<%
		if (session.getAttribute("name") == null) {
	%>
	<jsp:forward page="../../../error.jsp"></jsp:forward>

	<%
		}
	%>
	<jsp:include page="../../includes/adminnav.jsp"></jsp:include>
	<div class="clearfloat"></div>
	<div class="main">
		<form action="">
			<div class="form-title">
				<font color="red">${requestScope.addsuccess}</font> <font
					color="red">${requestScope.resubmit}</font>
				<h4>> 查看消息</h4>
			</div>
			<div class="clearfloat"></div>
			<!--文章列表-->
			<c:forEach items="${newsList}" var="news">
				<div class="title-container">
					<div class="checkbox">
						<label>${news.title}</label> <%--<a
							href="news/delete.action?id=${news.id}">
							<button type="button" class="btn btn-default">删除</button> 删除</a> <a
							href="news/newsContent.action?id=${news.id}" target="_blank">
							<button type="button" class="btn btn-default">预览</button> 预览</a>
					--%>
					<button type="button" class="btn btn-default" onclick="location='${ctx }/admin/deleteNews.action?id=${news.id}'">删除</button>
					<button type="button" class="btn btn-default" onclick="window.open('${ctx }/news/newsContent.action?id=${news.id}')">预览</button>
					</div>
				</div>
			</c:forEach>
			<div class="clearfloat"></div>
			<div class="clearfloat"></div>
			<div class="fenye">
				<ul>
					<c:forEach begin="1" end="${pagesCount}" varStatus="status">
						<li><a href="admin/adminNewsShow.action?page=${status.index}">${status.index}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="clearfloat"></div>
		</form>

	</div>
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/common.js"></script>
</body>
</html>