<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
  <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>招聘详情-第十届（2015）中国管理学年会</title>
    <link rel="stylesheet" href="resources/css/common/bootstrap.css">
        <link rel="stylesheet" href="resources/css/common/nav.css"/>
        <link rel="stylesheet" href="resources/css/common/footer.css"/>
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
	
  <!--left-nav-->
  <div id="main">  
    <!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
    <div class="main-content">
      
      <div class="content-article">
        <div class="article-title">
          <h3>招聘详情</h3>
        </div>
        <div class="content-con">
          ${recuit.content}
        </div>
      </div>
      <div class="nav-left">
        <div class="left-title">
          <h3>招聘消息</h3>
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