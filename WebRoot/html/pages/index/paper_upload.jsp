<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>论文提交-第十届（2015）中国管理学年会</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link rel="stylesheet" href="resources/css/common/nav.css" />
<link rel="stylesheet" href="resources/css/common/footer.css" />
<link rel="stylesheet" href="resources/css/index.css" />
<link rel="stylesheet" href="resources/css/art_sub.css" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
        <script src="/assets/js/html5shiv.min.js?v=f7c242d291"></script>
        <script src="/assets/js/respond.min.js?v=f7c242d291"></script>
        <![endif]-->
</head>
<body>
	<%
		if (session.getAttribute("email") == null) {
	%>
	<jsp:forward page="../../../error.jsp"></jsp:forward>

	<%
		}
	%>
	<!--header  头部导航-->
	<jsp:include page="../../includes/header.jsp"></jsp:include>

	<!--main    内容-->
	<div id="main">
		<!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
		<div class="main-content">
			<form id="info-sub" action="member/uploadPaper.action"
				enctype="multipart/form-data" method="post">
				<div class="form-content">
					<div class="form-title">
						<h4>
							<font color="red">${requestScope.uploadresult}</font> &gt; 论文上传
						</h4>
					</div>

					<label for="art-title" class="control-label">论文标题：<font color="red" size="2px">(必填)</font></label> <input
						type="text" name="title"
						class="form-control input-text control-input"
						placeholder="请输入论文标题" id="art-title">
					<div class="height-margin"></div>

					<label for="author" class="control-label">作者：<font color="red" size="2px">(必填)</font></label> <input
						type="text" name="author"
						class="form-control input-text control-input" placeholder="输入作者"
						id="author">
					<div class="height-margin"></div>

					<label for="org" class="control-label">单位：<font color="red" size="2px">(必填)</font></label> <input
						type="text" name="organization"
						class="form-control input-text control-input"
						placeholder="输入作者所在单位" id="org">
					<div class="height-margin"></div>

					<label for="tel" class="control-label">联系电话：<font color="red" size="2px">(必填)</font></label> <input
						type="text" name="tel"
						class="form-control input-text control-input"
						placeholder="请输入电话号码" id="tel">
					<div class="height-margin"></div>

					<label for="email" class="control-label">邮箱：<font color="red" size="2px">(必填)</font></label> <input
						type="email" name="email"
						class="form-control input-text control-input" placeholder="请输入邮箱"
						id="email">
					<div class="height-margin"></div>
					<div class="form-group">
						<label for="file" class="control-label">论文上传：<font color="red" size="2px">（仅支持.doc
							.docx .pdf文件）</font></label> <input type="file" name="document"
							id="js-fileInput" class="form-control">
					</div>
<label class="control-label">请选择专题：<font color="red" size="2px">(必选)</font></label>
					<select id="topic" name="topic" style="margin-left:90px;">
					<option value="" selected=""></option>
						<option value="组织与战略" >组织与战略</option>
						<option value="会计与财务">会计与财务</option>
						<option value="金融管理">金融管理</option>
						<option value="组织行为与人力资源管理">组织行为与人力资源管理</option>
						<option value="运作管理">运作管理</option>
						<option value="市场营销">市场营销</option>
						<option value="管理与决策科学">管理与决策科学</option>
						<option value="信息管理">信息管理</option>
						<option value="公共管理">公共管理</option>
						<option value="创业与中小企业管理">创业与中小企业管理</option>
						<option value="技术与创新管理">技术与创新管理</option>
						<option value="城市与区域管理">城市与区域管理</option>
						<option value="平行管理">平行管理</option>
						<option value="商务智能">商务智能</option>
						<option value="公司治理">公司治理</option>
						<option value="管理案例研究">管理案例研究</option>
						<option value="决策模拟">决策模拟</option>
						<option value="国际商务谈判">国际商务谈判</option>
						<option value="廉政建设与治理研究">廉政建设与治理研究</option>
						<option value="中国经济与社会安全研究">中国经济与社会安全研究</option>
						<option value="风险投资">风险投资</option>
						<option value="政府战略与公共政策研究">政府战略与公共政策研究</option>

					</select>

					<div class="form-group form-radio">
						<label for="wanfang">是否同意万方收录：<font color="red" size="2px">(默认为否)</font></label> <input type="radio"
							name="wanfang" id="wanfang1" value="true"> 是 <input
							type="radio" name="wanfang" id="wanfang2" value="false" checked>
						否
					</div>
					<div class="form-group  form-radio">
						<label for='cnki'>是否同意知网收录：<font color="red" size="2px">(默认为否)</font></label> <input type="radio"
							name="cnki" id="cnki1" value="true"> 是 <input
							type="radio" name="cnki" id="cnki2" value="false" checked>
						否
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-primary" id="btn-sub">提交并上传</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--footer-->
	<div class="clearfloat"></div>
	<jsp:include page="../../includes/footer.jsp"></jsp:include>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script>
		$('#btn-sub').bind('click', function() {
			var arttitle = $.trim($('#art-title').val());
			len = parseInt(arttitle.length);

			if (len <= 0) {
				alert("请输入论文标题！");
				$('#art-title').focus();
				return false;
			}
			var author = $.trim($('#author').val());
			len1 = parseInt(author.length);

			if (len1 <= 0) {
				alert("请输入作者！");
				$('#author').focus();
				return false;
			}
			var orgn = $.trim($('#org').val());
			len2 = parseInt(orgn.length);

			if (len2 <= 0) {
				alert("请输入作者所在单位！");
				$('#org').focus();
				return false;
			}

			var tell = $.trim($('#tel').val());
			len3 = parseInt(tell.length);
			if (len3 <= 0) {
				alert("请输入电话号码！");
				$('#tel').focus();
				return false;
			}

			var emailname = $.trim($('#email').val());
			apos = emailname.indexOf("@")
			dotpos = emailname.lastIndexOf(".")
			if (apos < 1 || dotpos - apos < 2) {
				alert("邮箱格式不正确！");
				$('#email').focus();
				return false;
			}

			var filename = $('#js-fileInput').val();
			abc = filename.lastIndexOf(".");
			var bcd = filename.substring(abc + 1);
			if (bcd != "doc" && bcd != "docx" && bcd != "pdf") {
				alert("文件类型不正确");
				return false;
			}
			
			var topic = $.trim($('#topic').val());
			if (topic==""||topic==null) {
				alert("请选择论文对应专题");
				$('#topic').focus();
				return false;
			}

			if (window.confirm('上传后无法更改，是否继续？')) {
				$('#info-sub').submit();
				return true;
			} else {
				return false;
			}
		});
	</script>
	<script type="text/javascript"
		src="http://cdn.bootcss.com/jquery-placeholder/2.0.8/jquery.placeholder.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('input, textarea').placeholder();
		});
	</script>
</body>
</html>