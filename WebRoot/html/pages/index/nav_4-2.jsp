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
    <title>论坛与报告-第十届（2015）中国管理学年会</title>
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
          <h3>关于分组报告</h3>
        </div>
        <div class="content-con" style="margin-left:50px;">

		 <span style="line-height:28px">
           1、组织与战略 <br>
            2、会计与财务 <br>
            3、金融管理 <br>
            4、组织行为与人力资源管理 <br>
            5、运作管理 <br>
            6、市场营销 <br>
            7、管理与决策科学 <br>
            8、信息管理 <br>
            9、公共管理 <br>
            10、创业与中小企业管理 <br>
            11、技术与创新管理 <br>
            12、城市与区域管理 <br>
            13、平行管理 <br>
            14、商务智能 <br>
            15、公司治理 <br>
            16、管理案例研究 <br>
            17、决策模拟 <br>
            18、国际商务谈判 <br>
            19、廉政建设与治理研究 <br>
            20、中国经济与社会安全研究 <br>
            21、风险投资 <br>
          22、政府战略与公共政策研究</span>
        </div>
      </div>
      <div class="nav-left">
        <div class="left-title">
          <h3>论坛与报告</h3>
        </div>
        <ul>
          <li>
            <a href="html/pages/index/nav_4.jsp">关于分论坛</a>
          </li>
          <li>
            <a href="html/pages/index/nav_4-2.jsp">关于分组报告</a>
          </li>
        </ul>
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