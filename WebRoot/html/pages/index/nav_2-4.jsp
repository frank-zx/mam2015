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
		<title>会议缴费-第十届（2015）中国管理学年会</title>
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
          <h3>会议缴费</h3>
        </div>
        <div class="content-con" style="margin-left:50px;">
           <p>参会人员通过年会网站进行会议注册。会议注册费包含会议资料费、餐费。交通、住宿、保险等费用自理。推荐的优秀论文如发表，版面费与期刊杂志结算。</p>
          <p>2015年10月6日以前（包括10月6日）缴费，会务注册费：教师  980元/人、学生480元/人；</p> 
          <p>2015年10月6日以后缴费，会务注册费为：教师 1280元/人、学生580元/人。</p><br/>
          <p>所有参会者须在网上注册帐号，登录后在“<strong>会议缴费</strong>”项下，可见会务专用帐号及相关操作提示。</p>
          <p>您可以通过汇款缴费，<font color="#FF0000">请务必在汇款附言上写明：管理学年会+姓名，如：“管理学年会   张三”。</font></p>
          <p><em>（同一笔转账含多个参会者时必须完整注明每一位参会者姓名。）</em></p>
          <p>&nbsp;</p>
          <p><font color="#FF0000" size="3">网上报名完整流程</font></p>
          <p>第<font color="#FF0000">1</font>步：在“<strong>参会报名</strong>”提交参会者资料。</p>
          <p>第<font color="#FF0000">2</font>步：转账汇款。</p>
          <p>第<font color="#FF0000">3</font>步：在“<strong>会议缴费</strong>”编辑提交转账汇款的信息或上传转账凭证。</p>
          <p>第<font color="#FF0000">4</font>步：在”<strong>参会报名</strong>“查看已报名参会人员，缴费状态更改为”<strong>已缴费</strong>“，报名状态更改为”<strong>已完成</strong>“，表</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;示网上报名成功。</p>
          <p><br>
                          </p>
          
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