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
		<title>往届会议-第十届（2015）中国管理学年会</title>
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
  
  <div id="main">  
    <!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
    <div class="main-content">
      
      <div class="content-article">
        <div class="article-title">
          <h3>往届会议</h3>
        </div>
        <div class="content-con" style="margin-left:70px;">
           <span style="line-height:28px">
          <strong style="font-size:15px;">首届（2006）中国管理学年会 </strong><br>
            主题：管理科学前沿与自主创新国家建设 <br>
            承办单位：北京大学光华管理学院 <br><br>
            <strong style="font-size:15px;">第二届（2007）中国管理学年会 </strong><br>
            主题：全球化背景下的管理变革与创新 <br>
            承办单位：南京大学商学院 <br><br>
            <strong style="font-size:15px;">第三届（2008）中国管理学年会 </strong><br>
            主题：中国现实与国际视野：中国管理的未来与发展 <br>
            承办单位：中南大学商学院 <br><br>
            <strong style="font-size:15px;">第四届（2009）中国管理学年会 </strong><br>
            主题：新形势、新挑战、新发展——面对金融危机的管理实践与理论创新 <br>
            承办单位：中科院研究生院管理学院 <br><br>
            <strong style="font-size:15px;">第五届（2010）中国管理学年会 </strong><br>
            主题：后金融危机时代的管理创新 <br>
            承办单位：大连理工大学管理与经济学部 <br><br>
            <strong style="font-size:15px;">第六届（2011）中国管理学年会</strong> <br>
            主题：管理学术创新的回顾与展望、全球视野、主流范式与中国实践 <br>
            承办单位：西南财经大学工商管理学院 <br><br>
            <strong style="font-size:15px;">第七届（2012）中国管理学年会 </strong><br>
            主题：新经济环境下中国管理变革与范式探索 <br>
            承办单位：天津大学管理与经济学部 <br><br>
            <strong style="font-size:15px;">第八届（2013）中国管理学年会 </strong><br>
            主题：中国管理的国际化与本土化 <br>
          承办单位：上海交通大学安泰经济与管理学院<br><br>
		  <strong style="font-size:15px;">第九届（2014）中国管理学年会</strong><br>
		  主题：中国全面深化改革进程中的管理创新<br>
		  承办单位：中山大学管理学院
          </span>
          <p>&nbsp;  </p>
       </div>
      </div>
      <!-- left -->
    <jsp:include page="../../includes/nav_2_left.jsp"></jsp:include>
    <div class="clearfloat"></div>
  </div>
	<!--footer-->
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	</body>  
</html>