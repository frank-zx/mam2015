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
          <h3>关于分论坛</h3>
        </div>
        <div class="content-con">
         <span style="line-height:28px">
         <br/>
           <p><strong>校长论坛简介： </strong></p>
           <p>旨在汇聚全国大学校长的力量，聚焦互联时代高等教育与管理的变革、提升创新性（管理）人才的培养能力，交流合作、分享智慧。</p>
           <p>&nbsp;           </p>
           <p>
             <strong> 院长论坛简介 </strong></p>
           <p>旨在增强国内各大高校商学院（管理学院）之间的合作与交流，探讨互联时代的学科发展动态与方向，以及新形势下人才培养模式的创新。</p>
           <p>&nbsp; </p>
           <p>
             <strong>女管理学家论坛简介 </strong></p>
           <p>
             促进女性管理学者之间的相互沟通，以女性独特的思路探究管理学的本质规律，展现女性管理学者的影响力与风采。 </p>
           <p>&nbsp;</p>
           <p>
             <strong>期刊论坛简介 </strong></p>
           <p>
             旨在推动和繁荣管理学期刊的建设与进步，希望通过适当的运作机制，协调期刊与学术界、商界以及政府部门的关系，实现良性互动，谋求合作，共同发展，并与国内外学者开展双向交流，达到增进相互了解、提高期刊稿件质量与知名度、建设高水平学术交流平台之目的。期刊论坛的具体内容包括但不限于： 
           <p>1. 参会期刊推荐待发表优秀稿件在大会宣读。 </p>
             <p>2. 大会推荐优秀会议论文在相关期刊发表。 </p>
             <p>3. 期刊间相互交流。 </p>
		
             <p>4. 期刊宣传与推广（拟提供展位宣传、宣讲和互动等形式，本届年会另设有“院长论坛”板块，参会期刊将有机会直接与国内高校管理学院院长直接交流）。 </p>
             <p>&nbsp;</p>
             </p>
           <p>
             <strong>企业家论坛简介 </strong></p>
           <p>
             旨在加强管理理论与实务界的沟通和了解，共同探讨互联时代的管理问题以及政产学研的合作模式，进一步推进管理科学研究“顶天立地”。</p>
           <p>&nbsp;</p>
           <p> 
             <strong>高层次人才招聘会简介 </strong></p>
           <p>
             旨在增强各大高校与优秀博士生之间的双向选择，为各大高校拓展优质应聘人才渠道的同时，为广大优秀博士生提供就业平台。年会网站将开辟专门招聘页面，利于聘求双方的沟通和互相了解。具体事宜如下： <br>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;招聘对象：经管类博士研究生 <br>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;招聘单位：国内各大高校（征集中） </p> </span>
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