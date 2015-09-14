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
    <title>关于参会-第十届（2015）中国管理学年会</title>
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
          <h3>关于参会</h3>
        </div>
        <div class="content-con">
          <p><STRONG>1.我如何报名参会？</STRONG></p>
          <p>答：本届论坛只接受网上报名。所有参会者须在官网首页注册帐号，登录后可输入参会者基本信息、报名并缴费。提交论文、缴费确认等同样是在网上在线完成。“登录/注册”栏在官网主页右上角，您在注册后按提示进行操作即可。</p>
          <p><BR>
          </p>
          <p><STRONG>2.我现在是企业界人士/在读学生，可否参会？</STRONG></p>
          <p>答：可以。只要你对本届会议议题有兴趣，皆可参会。</p>
          <p><BR>
          </p>
          <p><STRONG>3.我不提交论文，可否参会？</STRONG></p>
          <p>答：可以。只要你对本届会议议题有兴趣，皆可参会。</p>
          <p><BR>
          </p>
          <p><STRONG>4.我如何确认已经获得了报名资格？</STRONG></p>
          <p>答：您在缴费后数日内，在“会议报名”下，报名状态下将显示为“已完成”，这就说明报名已成功。届时携带有效证件到会场报道即可。您不需要与会务组再做其他确认。 </p>
          <p>我们会定期更新缴费状态。如果您缴费超过十天以后还未看到状态变更，请与会务组联系。</p>
          <p><BR>
          </p>
          <p><STRONG>5.我的学生/同学/朋友也想一起参会，我的注册号可否为多人报名？</STRONG></p>
          <p>答：一个注册号可以为多人报名和缴费。您可以登录帐号后，在“会议注册”项下输入多人基本信息即可。</p>
          <p><BR>
          </p>
          <p><STRONG>6.当天论坛我凭什么证件如何入场？</STRONG></p>
          <p>答：请凭有效身份证件入场，如身份证、教师证和学生证等。如果您是按学生费用标准缴会务费，请务必带好学生证。 </p>
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