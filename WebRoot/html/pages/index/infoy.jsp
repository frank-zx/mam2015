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
<title>主旨演讲嘉宾-杨善林</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
<link rel="stylesheet" href="resources/css/common/left_nav_model.css">
<style type="text/css">
.main-content .content-article {
  width: 815px;
  font-family: "微软雅黑","Microsoft Yahei",Arial,Helvetica,sans-serif,"宋体";
  color: #333;
  height: auto;
  padding-left: 0px;
  margin: 0 auto;
  border:none;
  float:none;
}
.content-article .article-title h3 {
	border:none;
}
</style>
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
					<h3>简介</h3>
				</div>
				<div class="content-con" style="margin-left:70px;font-size:18px;line-height:25px;">
					<p>
					<strong>杨善林</strong>，男，教授/博士生导师，硕士。1985年合肥工业大学计算机应用专业硕士毕业后留校任教，1986年7月-1987年10月在澳大利亚墨尔本大学开展合作研究，1988年9月-1989年12月在德国德累斯顿工业大学CIMS中心做访问学者。2013年当选为中国工程院院士。
					</p>
					<p>
					主要从事决策科学与技术、人工智能、计算机网络、计算机仿真与控制系统、信息管理与信息系统等领域的研究工作。现为国务院学位委员会管理科学与工程学科评议组成员，教育部管理科学与工程学科类专业教学指导委员会委员，合肥工业大学管理科学与工程一级学科博士授权点首席博导，管理科学与工程博士后科研流动站负责人，安徽省信息处理技术与信息系统工程研究中心主任，全国百名优秀回国人员，国家教学名师。指导的博士生中有一人的论文获评全国优秀博士论文。曾获得国家科技进步奖二等奖两次（排名分别为第一、第二），获得安徽省科学技术奖一等奖三次（均排名第一），教育部自然科学奖一等奖一次（排名第一），获得国家级发明专利两项（均排序第一）。
					</p>
				</div>
			</div>
			<!-- left -->
			<%-- <jsp:include page="../../includes/nav_2_left.jsp"></jsp:include> --%>
			<div class="clearfloat"></div>
		</div>
		<!--footer-->
		<jsp:include page="../../includes/footer.jsp"></jsp:include>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</body>
</html>