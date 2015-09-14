<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
  <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>最新消息-第十届（2015）中国管理学年会</title>
    <link rel="stylesheet" href="resources/css/common/bootstrap.css">
        <link rel="stylesheet" href="resources/css/common/nav.css"/>
        <link rel="stylesheet" href="resources/css/common/footer.css"/>
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
  <!--left-nav-->
  
  <div id="main">  
   <!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
    <div class="main-content">
      
      <div class="content-article">
        <div class="article-title">
          <h3>最新消息</h3>
        </div>
        <div class="content-con">
          <div class="news-list">
                    <h4 class="title-bar">
                        <span class="topic-name">新闻标题</span>
                        <span class="post-time">发布时间</span>
                        <span class="views">浏览数</span>
                    </h4>
                    <ul>
						<c:forEach items="${newsList}" var="news" begin="0" end="9">
							<li><span class="topic-name"> <a
									href="news/newsContent.action?id=${news.id}" class="topic-link"> <font>
											${news.title}</font> </a> </span> <span class="post-time"><fmt:formatDate
										value="${news.createDatetime}" type="date" />
							</span> <span class="views">${news.reviews}</span>
							</li>
						</c:forEach>
					</ul>
          </div>
          <div class="clearfloat"></div>
          <c:if test="${newsList!=null }">
          <div class="fenye">
              <ul>
                <c:forEach begin="1" end="${pagesCount}" varStatus="status">
					<li><a href="news/newsShow.action?page=${status.index}">${status.index}</a></li>		
				</c:forEach>
              </ul>
          </div>
          </c:if>
          <div class="clearfloat"></div>
        </div>
      </div>
      <div class="nav-left">
        <div class="left-title">
          <h3>最新消息</h3>
        </div>
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