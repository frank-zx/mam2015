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
		<title>时间安排-第十届（2015）中国管理学年会</title>
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
          <h3>时间安排</h3>
        </div>
        <div class="content-con" style="margin-left:50px;">
        <br/>
           <p><STRONG>1</STRONG><STRONG>、会议时间</STRONG></p>
          <p>第十届（2015）中国管理学年会将于2015年11月6日至8日在合肥召开。</p>
           <br/>
          <p><STRONG>2</STRONG><STRONG>、会议重要节点日期</STRONG></p>
          <p>2015年11月6日：全天报到注册。20:00-21:30，理事会会议。</p>
          <p>2015年11月7日：上午—选举；下午—开幕式、主旨报告；晚上：企业家论坛。</p>
          <p>2015年11月8日：上午：分组报告。下午：13:00-15:30：校长论坛、院长论坛、女管理学家论坛、期刊论坛；</p>
          <p>下午16:00-17:30：颁奖仪式、闭幕式及交接仪式。</p>
          <p>全程：高层次人才招聘会。</p>
           <br/>
          <p><strong>3、会议地点</strong></p>
          <p>合肥滨湖世纪金源大酒店</p>
          <p>地址：滨湖新区徽州大道5558号(滨湖国际会展中心旁）</p>
          <p>电话：(0551)6868888</p>
         
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