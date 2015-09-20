<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>发布信息</title>
<link rel="stylesheet" href="resources/css/common/bootstrap.css">
<link id="artDialogSkin" href="resources/skin/aero/aero.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="resources/css/common/reset.min.css" />
<link rel="stylesheet" href="resources/css/common/common.min.css" />
<link rel="stylesheet" href="resources/css/index_admin.css">
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
		<form id="js-msg-sub" action="admin/addRecuit.action" method="post">
			<div class="form-title">

				<h4>> 发布消息</h4>
			</div>
			${requestScope.message}
			<div class="form-group" method="post">
				<label for="art-title" class="control-label">招聘单位：</label> <input
					type="text" name="org" class="form-control" id="js-title" placeholder="输入招聘单位"
					>
			</div>
			<div class="form-group" method="post">
				<label for="art-title" class="control-label">招聘职位：</label> <input
					type="text" name="position" class="form-control" id="js-title" placeholder="输入招聘职位"
					>
			</div>
			<div class="form-group" method="post">
				<label for="art-title" class="control-label">联系人：</label> <input
					type="text" name="contact" class="form-control" id="js-title" placeholder="输入联系人"
					>
			</div>
			<div class="form-group">
				<label for="art-content">招聘详情：</label>
				<textarea name="content"  class="form-control" style="width:100%;"></textarea>
			</div>
			<div class="form-group">
				<button type="button" class="btn btn-primary submit-control" id="js-btn-sub">
					提交</button>
			</div>
			<div class="clearfloat"></div>
		</form>
	</div>
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/artDialog.js"></script>
	<script type="text/javascript" src="resources/js/common.js"></script>
	<script type="text/javascript" src="resources/js/admin_index.js"></script>
	<script type="text/javascript" src="resources/js/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
	tinyMCE.init({
		// General options
		mode : "textareas",
		theme : "advanced",
		plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave",

		// Theme options
		theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
		theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
		theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing : false,
		height:"700",

		// Example content CSS (should be your site CSS)
		content_css : "../../../resources/css/content.css", 

		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "resources/editor/lists/template_list.js",
		external_link_list_url : "resources/editor/lists/link_list.js",
		external_image_list_url : "resources/editor/lists/image_list.js",
		media_external_list_url : "resources/editor/lists/media_list.js",

		// Style formats
		style_formats : [
			{title : 'Bold Text', inline : 'b'},
			{title : 'Read Text', inline : 'span', styles : {color : '#ff0000'}},
			{title : 'Red header', block : 'h1', styles : {color : '#ff0000'}},
			{title : 'Example 1', inline : 'span', classes : 'example1'},
			{title : 'Example 2', inline : 'span', classes : 'example2'},
			{title : 'Table styles'},
			{title : 'Table row 1', selector : 'tr', classes : 'tablerow1'}
		],

		formats : {
			alignleft : {selector : 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes : 'left'},
			aligncenter : {selector : 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes : 'center'},
			alignright : {selector : 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes : 'right'},
			alignfull : {selector : 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes : 'full'},
			bold : {inline : 'span', 'classes' : 'bold'},
			italic : {inline : 'span', 'classes' : 'italic'},
			underline : {inline : 'span', 'classes' : 'underline', exact : true},
			strikethrough : {inline : 'del'}
		},

		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User",
			staffid : "991234"
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