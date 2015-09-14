<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var = "ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head lang="zh-cn">
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>参会人员列表</title>
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
				
				<h4>> 查看参会人员</h4>
			</div>
			<div class="clearfloat"></div>
              
			
			<div class="title-container">
			 <c:forEach items="${partiList}" var="parti" >
				<div class="checkbox">
				<c:if test="${!parti.payed }">
					<%--<a href="admin/parti_pay.action?id=${parti.id}"><button type="button" class="btn btn-default">确认已缴费</button>
					</a>
					--%>
					<button type="button" class="btn btn-default" onclick="location='${ctx }/admin/parti_pay.action?id=${parti.id}'">确认已缴费</button>
					<%--<a class="btn btn-default" href="${ctx }/admin/parti_pay.action?id=${parti.id}">确认已缴费</a>
					--%></c:if>
					<label>${parti.realname} </label> 
					<a ><button type="button"
							class="btn btn-default">详情信息</button>
					</a> 
				
					
				</div>
				<%--<button class="btn btn-default">详情信息</button>
				--%></c:forEach>
				
				
			<div class="clearfloat"></div>
			<%-- <div class="fenye">
				<ul>
					<c:forEach begin="1" end="${pagesCount}" varStatus="status">
						<li><a href="admin/adminNewsShow.action?page=${status.index}">${status.index}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="clearfloat"></div> --%>
		</form>
	</div>
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/common.js"></script>
</body>
</html>
