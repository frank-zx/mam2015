<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
    <head>
    	<base href="<%=basePath%>">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title></title>
        <link rel="stylesheet" href="resources/css/common/bootstrap.css">
        <link rel="stylesheet" href="resources/css/common/nav.css"/>
        <link rel="stylesheet" href="resources/css/common/footer.css"/>
        <link rel="stylesheet" href="resources/css/index.css"/>
        <link rel="stylesheet" href="resources/css/index-logined.css"/>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="/assets/js/html5shiv.min.js?v=f7c242d291"></script>
        <script src="/assets/js/respond.min.js?v=f7c242d291"></script>
        <![endif]-->
    </head>
    <body>
    <!--header  头部导航-->
	<jsp:include page="../../includes/header.jsp"></jsp:include>
    
    <!--main    内容-->
    <div id="main">
    </div>

    <!--footer-->
    <div class="clearfloat"></div>
  <jsp:include page="../../includes/footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
    </body>
</html>