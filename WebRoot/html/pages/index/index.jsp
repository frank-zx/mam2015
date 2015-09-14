<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页-第十届（2015）中国管理学年会</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
<link id="artDialogSkin" href="resources/skin/aero/aero.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="resources/css/index.css" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  		<script src="/assets/js/html5shiv.min.js?v=f7c242d291"></script>
  		<script src="/assets/js/respond.min.js?v=f7c242d291"></script>
		<![endif]-->
</head>
<body>
	<!--header  头部导航-->
	<jsp:include page="../../includes/header.jsp"></jsp:include>

	<!--main内容-->
	<div id="main">
		<!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
		<div class="main-content">
			<div class="ins-and-login">
				<div class="ins">
					<h4>第十届（2015）中国管理学年会</h4>
					<p>
						本届年会将以“互联时代的产业变革和管理创新”为主题。随着云计算、互联网、大数据等新兴信息技术与各行各业的深度融合，对国家的产业政策、行业的管理规范、企业的运营管理产生了深刻的影响，加快产业变革和管理创新正面临着前所未有的机遇和挑战。本届论坛诚邀学术界、产业界及社会各界的专家学者参加，围绕互联时代的产业变革和管理创新等相关管理问题开展跨学科、跨行业、跨地区的学术研讨，为加快我国产业变革和管理创新做出新的贡献。本届年会也是换届年会，欢迎广大学者踊跃参会。
						<a href="news/newsShow.action" class="look-more">查看更多>></a>
					</p>
				</div>

				<div class="login">
				
				<font color="red" style="width: 255px;float: right;">${requestScope.modifyPwd}
							${requestScope.regSuccess } ${requestScope.resetPwd }
							${requestScope.loginfail}</font>
					<c:if test="${empty sessionScope.email}">
						
						<form action="membernotlogin/login.action" onsubmit="return validate_form(this)" method="post">
							<div class="form-title">
								<a class="log-left"> 用户登录 </a><a
									href="html/pages/index/findback.jsp" class="forg-pw">忘记密码？</a>
								<a class="reg-right" href="html/pages/index/register.jsp">
									注册 </a>
							</div>

							<div class="clearfloat"></div>

							<div class="form-input usr-num">
								<input type="email" name="email" id="mail" class="form-control"
									placeholder="请输入邮箱" />
							</div>
							<div class="form-input usr-pw">
								<input type="password" name="pwd" id="secret" class="form-control"
									placeholder="请输入密码" />
							</div>
							<%--<div class="form-input">
							<label class="control-radio">
  								<input type="radio" name="optionsRadios" id="user-ordinary" value="普通注册用户">
  								普通注册用户
							</label>
							<label class="control-radio pingshen">
							  <input type="radio" name="optionsRadios" id="user-ps" value="option2">
							    评审员
							</label>
						</div>--%>


							<button type="submit"
								class="btn btn-primary btn-lg btn-block btn-login form-input">
								登录</button>
						</form>
					</c:if>
					<c:if test="${!empty sessionScope.email}">
						<div class="login-link logined-link">
							<div class="logined-left">
								<%--<a href="html/pages/index/baomingenroll.jsp" class=""><button class="btn btn-primary btn-lg btn-block">会议报名</button>会议提交</a>
						 --%>
								<button class="btn btn-primary btn-lg btn-block"
									onclick="location='${ctx}/html/pages/index/baomingenroll.jsp'">参会报名</button>
								<button class="btn btn-primary btn-lg btn-block"
									onclick="location='${ctx}/html/pages/index/paper_upload.jsp'">论文提交</button>
								<button class="btn btn-primary btn-lg btn-block"
									onclick="location='${ctx}/member/yourPaper.action'">查看论文</button>
								<%--<a href="html/pages/index/paper_upload.jsp" class=""><button class="btn btn-primary btn-lg btn-block">论文提交</button>论文提交</a> 
						 <a href="javascript:void(0);" class=""><button class="btn btn-primary btn-lg btn-block">会议缴费</button>会议缴费 </a>
						--%>
							</div>
							<div class="logined-right">
								<%--<a href="javascript:void(0);" class=""><button class="btn btn-primary btn-lg btn-block">酒店预订</button>酒店预订</a>							
						 <a href="member/yourPaper.action" class=""><button class="btn btn-primary btn-lg btn-block">查看论文</button>查看论文</a>
						 <a href="html/pages/index/pupdatepw.jsp" class=""><button class="btn btn-primary btn-lg btn-block">修改密码</button>修改密码</a>
						--%>
								<button class="btn btn-primary btn-lg btn-block" onclick="location='${ctx}/html/pages/index/payfees.jsp'">会议缴费</button>
								<button class="btn btn-primary btn-lg btn-block" onclick="location='${ctx}/html/pages/index/hotelbook.jsp'">酒店预订</button>
								<button class="btn btn-primary btn-lg btn-block"
									onclick="location='${ctx}/html/pages/index/pupdatepw.jsp'">修改密码</button>
							</div>
						</div>
					</c:if>

				</div>
			</div>
			<div class="clearfloat"></div>
			<div class="last-news">
				<div class="news-title">
					<h4 class="title-name">最新消息</h4>
					<span class="more-news"> <a href="news/newsShow.action">更多</a>
					</span>
				</div>
				<div class="clearfloat"></div>
				<div class="news-list">
					<h4 class="title-bar">
						<span class="topic-name">新闻标题</span> <span class="post-time">发布时间</span>
						<span class="views">浏览数</span>
					</h4>
					<ul>
						<c:forEach items="${newsList}" var="news" begin="0" end="6">
							<li><span class="topic-name"> <a
									href="news/newsContent.action?id=${news.id}" class="topic-link">
										<font> ${news.title}</font> </a> </span> <span class="post-time"><fmt:formatDate
										value="${news.createDatetime}" type="date" /> </span> <span
								class="views">${news.reviews}</span>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="clearfloat"></div>
			<div class="other-info">
				<div class="base-info">
					<div class="info-title">
						<h4>年会基本信息</h4>
					</div>
					<br />
					<div class="info-content">
						<div class="base-title">主办单位：</div>
						<p>中国管理现代化研究会</p>
						<p>复旦管理学奖励基金会</p>
					</div>
					<br />
					<div class="info-content">
						<div class="base-title">承办单位：</div>
						<p>
							<a href="http://som.hfut.edu.cn"> <img
								src="resources/img/glxy.png"> </a>
						</p>
					</div>
					<br />
					<%-- <div class="info-content">
						<div class="base-title">支持单位：</div>
						<p>
							<a href="http://som.hfut.edu.cn/portal.php"> <img
								src="resources/img/glxy.png" alt="合肥工业大学管理学院" target="_blank">
							</a>
						</p>
					</div> --%>
					<div class="info-content">
						<span class="base-title"> 时间： </span> <span>2015年11月06日 ~
							08日</span>
					</div>
					<div class="info-content">
						<span class="base-title"> 地点： </span> <span>安徽合肥-合肥工业大学管理学院</span>
					</div>
					<div class="info-content">
						<span class="base-title"> 地址： </span> <span>安徽省合肥市屯溪路193号</span>
					</div>
				</div>
				<div class="jiabin-info">
					<div class="info-title">
						<h4>主旨演讲嘉宾<font color=grey size=3px>&nbsp;(暂定)</font></h4>
					</div>
					<div class="info-list">
						<div class="list-content">
							<a  class="thumbnail img-border"> <img
								data-src="holder.js/180x180" alt="" src="resources/img/yangshanlin.jpg">
							</a> <a  class="jiabin-name"> 杨善林 </a>
						</div>
						<div class="clearfloat"></div>
						<div class="list-content">
							<a class="thumbnail img-border"> <img
								data-src="holder.js/180x180" alt="" src="resources/img/fangshucheng.jpg">
							</a> <a  class="jiabin-name"> 方述诚 </a>
						</div>
						<div class="clearfloat"></div>
						<div class="list-content">
							<a  class="thumbnail img-border"> <img
								data-src="holder.js/180x180" alt="" src="resources/img/lishantong.jpg">
							</a> <a  class="jiabin-name"> 李善同 </a>
						</div>
						<div class="clearfloat"></div>
						<%--<div class="list-content">
							<a href="" class="thumbnail img-border"> <img
								data-src="holder.js/180x180" alt="" src="resources/img/exe.jpg">
							</a> <a  class="jiabin-name"> 风清扬 </a>
						</div>
						<div class="clearfloat"></div>
					--%></div>
				</div>
				<div class="quast-road">
					<div class="info-title">
						<h4>快速通道</h4>
					</div>
					<br />
					<div class="road-list">
						<a target="_blank" href="http://www.csmm.org.cn/index.html"> <img src="resources/img/road_icon1.png"
							alt=""> </a><br /> <a href="http://www.fpfm.org/"
							target="_blank"> <img src="resources/img/road_icon2.png"
							alt=""> </a><br /> <a href="http://www.hfut.edu.cn"
							target="_blank"> <img src="resources/img/hfut_logo.png"
							alt="" style="display: block;width: 196px;height: 52px;"> </a>
						<br /> <a href="http://som.hfut.edu.cn" target="_blank"> <img
							src="resources/img/glxy.png" alt=""
							style="display: block;width: 205px;height: 46px;margin-left: 6px;">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--footer-->
	<div class="clearfloat"></div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/artDialog.js"></script>
	<script type="text/javascript" src="resources/js/index.js"></script>

	<script type="text/javascript"
		src="http://cdn.bootcss.com/jquery-placeholder/2.0.8/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input, textarea').placeholder();
		});
		function validate_form(thisform)
		{
			with (thisform) 
			{
				
				if (mail_validate_required(mail,"邮箱地址不正确！")==false)
				{mail.focus();return false}
				if (secret_validate_required(secret,"请输入密码！")==false)
				{secret.focus();return false}
			}
		}

		function mail_validate_required(field,alerttxt)
		{
			with (field)
			{
				apos=value.indexOf("@")
				dotpos=value.lastIndexOf(".")
				if (apos<1||dotpos-apos<2) 
				  {alert(alerttxt);return false}
				else {return true}
			}
			}
		function secret_validate_required(field,alerttxt)
		{
			with (field)
			{  
		        if(("")==$.trim(value) || null==$.trim(value))
		        	{alert(alerttxt);return false}
		        else {return true}
			}
		}
	</script>
</body>
</html>