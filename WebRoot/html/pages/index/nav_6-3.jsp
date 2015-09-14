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
    <title>关于会务费-第十届（2015）中国管理学年会</title>
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
          <h3>关于会务费</h3>
        </div>
        <div class="content-con">
        <p><strong>1.</strong><strong>论坛的会务注册费是多少？</strong></p>
          <p>答：2015年10月6日以前（包括10月6日）缴费，会务注册费：教师  980元/人、学生480元/人；</p>
          <p>2015年10月6日以后缴费，会务注册费为：教师 1280元/人、学生580元/人。          
          <p>
            <STRONG>2.会务注册费包括哪些项目？</STRONG>
          <p>答：会务注册费包含会议资料费、餐费。</p>
          <p><STRONG>3.</STRONG><strong>我如何缴费？</strong></p>
          <p>答：网上报名完整流程</p>
          <p>第1步：在“<strong>参会报名</strong>”提交参会者资料。</p>
          <p>第2步：转账汇款。</p>
          <p>第3步：在“<strong>会议缴费</strong>”编辑提交转账汇款的信息或上传转账凭证。</p>
          <p>第4步：在”<strong>参会报名</strong>“查看已报名参会人员，缴费状态更改为”<strong>已缴费</strong>“，报名状态更改为”<strong>已完成</strong>“，表</p>
          <p>             示网上报名成功。</p>
          <p>（1）为了更准确和高效的处理您的缴费确认工作，请务必在汇款附言上注明“管理学年会+姓名”，如“管理学年会张三”。同一笔转账含多个参会者时必须完整注明每一位参会者姓名。</p>
          <p>（2）本次会务费只接受银行平台转账，一律不接受第三方平台转账（如支付宝等），如您通过第三方平台付款，我们一律不确认已缴费。</p>
          <p>（3）支付会议费后，您只需以图片格式上传转账凭证，我们在24小时内（节假日除外）核对并更新您的缴费状态（推荐使用）。如果您不选择以图片格式上传转账凭证，也可通过编辑提交转账汇款信息，但是我们需要10天才能确认您的缴费和更新支付状态。</p>
          <p><strong>4.</strong><strong>缴费可取得哪些报销凭证？</strong></p>
          <p>答：组委会将为每位参会者提供“会务费”发票，以及会议邀请函。为减少更换发票给您带来的麻烦，请在“参会报名”项准确填写“发票抬头”信息。发票和会议邀请函在注册当天在签到处领取。</p>
          <p><strong>5.</strong><strong>我怎么知道会务组已经收到我的会务注册费？</strong></p>
          <p>答：在”<strong>参会报名</strong>“查看已报名参会人员，缴费状态更改为”<strong>已缴费</strong>“，则表示会务注册费已收到。我们会定期更新缴费状态。如果您缴费超过十天以后还未看到状态变更，请与会务组联系。</p>
          <p><strong>6.</strong><strong>我可否当天到现场缴费？</strong></p>
          <p>答：我们不建议您当天到会场缴费，一方面，10月6日前缴费可以享受一定优惠，另外，未缴费无法确认报名，我们无法为您提供代订酒店等服务。如果您确实需要当天到会场缴费，请与会务组联系，我们为您预留名额。</p>
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