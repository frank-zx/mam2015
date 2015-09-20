<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--header  头部导航-->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">mam</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" id="nav-index" href="index.action">首页</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
	            <li><a href="html/pages/index/nav_2.jsp">会议信息</a>
				</li>
				<li><a href="news/newsShow.action">最新消息</a>
				</li>
				<li><a href="html/pages/index/nav_4.jsp">论坛与报告</a>
				</li>
				<li><a href="resource/resourceShow.action">资源下载</a>
				</li>
				<li><a href="recuit/recuitShow.action">招聘信息</a>
				</li>
				<li><a href="html/pages/index/nav_6.jsp">常见问题</a>
				</li>
				<%--<li><a href="html/pages/index/nav_about.jsp">关于我们</a>
				</li>
			--%></ul>
			<c:if test="${!empty sessionScope.email}">
				<ul class="nav navbar-nav navbar-right hidden-sm">

					<li style="width:200px;overflow:hidden;  height: 37px"><a href="index.action"><font style="color:#fff;">${sessionScope.email}</font></a>
					
					</li>
					<li><a href="member/exit.action"><font color="white">退出</font></a></li>

			</ul>
			</c:if>
		</div>
	</div>
</div>
	<script type="text/javascript" src="resources/js/respond.js"></script>