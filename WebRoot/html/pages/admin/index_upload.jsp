<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head lang="zh-cn">
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>上传文件</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css" />
<link id="artDialogSkin" href="resources/skin/aero/aero.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="resources/css/common/reset.min.css" />
<link rel="stylesheet" href="resources/css/common/common.min.css" />
<link rel="stylesheet" href="resources/css/index_upload.css" />
</head>
<body>
	<%
		if (session.getAttribute("name") == null) {
	%>
	<jsp:forward page="../../../error.jsp"></jsp:forward>

	<%
		}
	%>

    
	<jsp:include page="../../includes/adminnav.jsp"></jsp:include>
	<div class="clearfloat"></div>
	<div class="main">
		<div class="form-title">
			<h4> > 上传资源</h4>
		</div>

	<form id="js-form" action="admin/resourceUpload.action"
			enctype="multipart/form-data" method="post">
		<!-- <form> -->
			<div class="clearfloat"></div>
			<font color="red">${requestScope.uploadresult }</font>
			<div class="form-group">
				<img id="tempimg" dynsrc="" src="" style="display:none"/>
				<input type="file" name="document" id="js-fileInput" class="form-control">
			</div>
			<div class="form-group">
				<button type="button" id="js-btn-upload" class="btn btn-primary submit-control">
					上传</button>
					
			</div>
			<div class="clearfloat"></div>
		</form>
	</div>
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/artDialog.js"></script>
	<script type="text/javascript" src="resources/js/common.js"></script>
	<script type="text/javascript" src="resources/js/admin_upload.js"></script>
</body>
</html>