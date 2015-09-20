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
<title>酒店信息-第十届（2015）中国管理学年会</title>
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
	<script type="text/javascript" src="resources/js/respond.js"></script>

	<div id="main">
		<!--banner-->


		<div class="banner">
			<div class="con">
				<!--  <h2 class="con-title1">第十届（2015）中国管理学年会</h2>
				<h4 class="con-title2">互联时代的产业变革和管理创新</h4>-->
			</div>
		</div>
		<div class="index-info" style="height: 4px">
			<div class="list-info">
				<ul>
					<!-- <li><span>中国合肥：</span>2015年11月06日 ~ 08日</li>
					<li><span>主办单位：</span>中国管理现代化研究会   复旦管理学奖励基金会</li>
					<li><span>承办单位：</span>合肥工业大学管理学院</li> -->
				</ul>
			</div>
		</div>
		<div class="main-content">

			<div class="content-article">
				<div class="article-title">
					<h3>酒店信息</h3>
				</div>
				<div class="content-con"
					style="margin-left:70px;font-size:16px;line-height:25px;">
					<strong>预定酒店流程：</strong>
					<p>需要预定酒店的参会人员请登录用户信息，在“酒店预定”栏目填写住宿信息及要求（入住酒店名称，选择房间类型及数量），酒店房间实行先到先得的原则，请需要的参会人员尽早预定。（本次会议提供两个房型：单间和标间，价格约为360-400元/晚。）</p>
					<strong>预订酒店的相关事项说明:</strong>
					<ol>
						<li>入住手续：客人预定酒店成功后，当天凭本人的证件办理入住即可。</li>
						<li>按酒店规定：最迟中午 12 点须办理退房手续。若住客要求缩短或延长住房日期,须提前于退房日的中午 12
							点前通知会务酒店负责人 吴先生 ，以办理相关手续(18 点前退房将收取半天房费；18点后退房将收取一天房费)。</li>
					</ol>
					<p>
						<strong>如有任何问题，请与会务酒店负责人联系。</strong>
					</p>
					<p>
						<strong>联系人：</strong>吴先生
					</p>
					<p>
						<strong>电 话：</strong>0551-62901400
					</p>
					<br /> <strong>酒店信息：</strong> <br>
					<p>
						<strong>1.世纪金源大饭店</strong>
					</p>
					<p>
						<strong>地址：</strong>安徽 合肥市滨湖新区徽州大道5558号
					</p>
					<p>
						<strong>电话：</strong>0551-66868888
					</p>
					<p>
						<strong>传真：</strong>0551-66869999
					</p>
					<br>
					<p>
						<strong>2.视界风尚假日酒店</strong>
					</p>
					<p>
						<strong>地址：</strong>安徽 合肥市滨湖新区徽州大道与福州路交汇处
					</p>
					<p>
						<strong>电话：</strong>0551-62269666
					</p>
					<p>
						<strong>传真：</strong>0551-62269678
					</p>
					<p>&nbsp;</p>
					<p>
						<strong> </strong>
					</p>
					<p>&nbsp;</p>
					<p>
						<br>
					</p>
					<p>&nbsp;</p>
				</div>
			</div>
			<!-- left -->


			<div class="nav-left">
				<div class="left-title">
					<h3>会议信息</h3>
				</div>
				<ul>
					<li><a href="html/pages/index/nav_2.jsp">会议简介</a></li>
					<li><a href="html/pages/index/nav_2-6.jsp">论文征集</a></li>
					<li><a href="html/pages/index/nav_2-5.jsp">时间安排</a></li>
					<li><a href="html/pages/index/nav_2-4.jsp">会议缴费</a></li>
					<li><a href="html/pages/index/nav_2-7.jsp">酒店信息</a></li>
					<li><a href="html/pages/index/nav_2-2.jsp">交通信息</a></li>
					<li><a href="html/pages/index/nav_2-1.jsp">往届会议</a></li>
					<li><a href="html/pages/index/nav_2-3.jsp">关于委员会</a></li>
				</ul>
			</div>
		</div>

		<div class="clearfloat"></div>
	</div>
	<!--footer-->
	<!--footer-->


	<div class="footer">
		<div class="foot1">
			<i class="add"></i> <span>中国安徽合肥市包河区屯溪路193号合肥工业大学 / 邮编：230009</span>
			<i class="mail"></i> <span>hfutsom@mam2015.org.cn</span> <i
				class="tel"></i> <span>会议接待咨询:0551-62901400
				&nbsp;&nbsp;投稿咨询：15156215690</span>
		</div>
		<div class="foot2">
			<p class="copyright">
				Copyright 2015 <a href="http://www.hfut.edu.cn/ch/" target="_blank">合肥工业大学</a>
				<a href="http://som.hfut.edu.cn" target="_blank">管理学院</a> All rights
				reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="html/pages/index/nav_about_1.jsp">联系我们</a>
			</p>
			<p class="support">技术支持：合肥工业大学管理学院电子商务研究所</p>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</body>
</html>