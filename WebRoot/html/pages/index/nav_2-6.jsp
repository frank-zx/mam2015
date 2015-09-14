<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>论文征集-第十届（2015）中国管理学年会</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
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
					<h3>论文征集</h3>
				</div>
				<div class="content-con" style="margin-left:70px;font-size:16px;line-height:25px;">
					本届年会只接受<strong>网上在线投稿</strong>。论文投稿的具体操作，请登录后，参见<strong>“论文提交”</strong>项。<br/><br>

					投稿注意事项： <br/>投稿时需选择具体会议专题；<br/>
						截稿日期为2015年7月31日，录用通知发放日期为2015年9月20日； <br/>请使用word格式或pdf格式；
						论文格式请在官网“资源下载”页面下载。请务必按照格式提交论文。<br><br>

					会议议题包括：<br> <span style="font-size:16px;"> 1、组织与战略<br>
						2、会计与财务<br> 3、金融管理<br> 4、组织行为与人力资源管理<br> 5、运作管理<br>
						6、市场营销<br> 7、管理与决策科学<br> 8、信息管理<br> 9、公共管理<br>
						10、创业与中小企业管理<br> 11、技术与创新管理<br> 12、城市与区域管理<br>
						13、平行管理<br> 14、商务智能<br> 15、公司治理<br> 16、管理案例研究<br>
						17、决策模拟<br> 18、国际商务谈判<br> 19、廉政建设与治理研究<br>
						20、中国经济与社会安全研究<br> 21、风险投资<br> 22、政府战略与公共政策研究 </span> <br><br>
						注：<br>
					1、所有入选年会论文将由会议组委会以会议论文光盘形式编辑发行。<br>
					2、年会组委会将会在中文投稿论文中遴选出优秀论文，推荐给国家自然科学基金委管理科学部认定的重要期刊，期刊名称确定后将及时在年会网站上公布具体信息。
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