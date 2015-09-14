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
<title>资源查看删除</title>
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
				
				<h4>> 查看资源</h4>
			</div>
			<div class="clearfloat"></div>
            <font color="red">${requestScope.uploadresult }</font>  
			<!-- 静态演示 -->
			<div class="title-container">
			 <c:forEach items="${resourceList}" var="resource" >
				<div class="checkbox">
					<label>${resource.title}</label> <%--<a href="resource/download.action?downloadFileName=${resource.filename}"><button type="button"
							class="btn btn-default">下载</button>
					</a> <a href="resource/delete.action?id=${resource.id}"><button type="button" class="btn btn-default">删除</button>
					</a>
				--%>
				<button type="button" class="btn btn-default" onclick="location='${ctx }/resource/download.action?downloadFileName=${resource.filename}'">下载</button>
				<button type="button" class="btn btn-default" onclick="location='${ctx }/admin/deleteResource.action?id=${resource.id}'">删除</button>
				</div>
				
				</c:forEach>
			</div>
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
