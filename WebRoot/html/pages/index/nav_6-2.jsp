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
    <title>关于会议与论坛-第十届（2015）中国管理学年会</title>
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
          <h3>关于会议与论坛</h3>
        </div>
        <div class="content-con">
        <br/>
          <p><STRONG>1.我希望能在论坛上分享自己的观点，请问是否有相应论坛？</STRONG></p>
                <p>答：感谢您的关注。按照惯例，年会将按各议题组织分组论坛，组委会将选取优秀论文的作者在分组论坛上分享观点。您可以选择在感兴趣的分论坛上发言、交流。</p>
                <p><BR>
                </p>
                <p><STRONG>2.我看到有“高层次人才招聘会”，请问招聘会是什么形式？如何应聘？</STRONG></p>
                <p>答：请携带足够简历，注意议程中招聘会的时间和地点，可直接到场与招聘方交流。</p>
                <p><BR>
                </p>
                <p><STRONG>3.关于年会，我想知道更加详细的信息，如年会当天的详细日程安排。</STRONG></p>
                <p>答：对于年会的细节安排，会务组正在不断讨论、细化，相关各类信息会在第一时间更新到网站上，请关注网站更新即可。</p>
                <p><BR>
                </p>
        </div>
      </div>
      <!--left-->
  <jsp:include page="../../includes/nav_6_left.jsp"></jsp:include>
    <div class="clearfloat"></div>
  </div>
  
  <!--footer-->
  <jsp:include page="../../includes/footer.jsp"></jsp:include>
  
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  </body>  
</html>