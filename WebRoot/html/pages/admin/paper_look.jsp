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
<title>论文管理</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/reset.min.css" />
<link rel="stylesheet" href="resources/css/common/common.min.css" />
<link rel="stylesheet" href="resources/css/index_look.css">
<link rel="stylesheet" href="resources/css/nav_3.css">

<style type="text/css">
.main form .title-container .checkbox label {
	line-height: 29px;
	overflow: hidden;
	width: 695px;
	height: 29px;
}
</style>
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

				<h4>> 论文管理</h4>
			</div>
			<div class="clearfloat"></div>

			<div class="title-container">
				<c:forEach items="${paperList}" var="paper">
					<div class="checkbox">
						<label>${paper.title}</label> <%--<a href="paper/download.action?downloadFileName=${paper.path}">
							<button type="button" class="btn btn-default">下载</button> </a> --%>
							<button type="button" class="btn btn-default" onclick="location='${ctx }/admin/downloadPaper.action?downloadFileName=${paper.path}'">下载</button>
							<a>
							<button type="button" class="btn btn-default">详情信息</button> </a>
					</div>
				</c:forEach>
			</div>
			<div class="clearfloat"></div>
			<%--<div class="fenye">
				<ul>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
				</ul>
			</div>
			<div class="clearfloat"></div>
		--%></form>
	</div>
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/common.js"></script>
</body>
</html>