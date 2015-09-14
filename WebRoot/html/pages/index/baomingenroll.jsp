<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> <%
String path = request.getContextPath(); String basePath =
request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
			<form id="info-sub" action="member/addParti.action"  onsubmit="return validate_form(this)" method="post">
              <div class="form-content">
	              <div class="form-title" style="text-align: left;height:35px;">
	              	
	              	<h4 style="width:100px;float:left;">  &gt; 会议报名 </h4>
	              	<a href="member/showYourParti.action" style="display:inline-block;float:right;font-size: 14px;margin-top: 8px;">查看您已提交报名人员</a>
	              </div>
	              <div class="clearfloat"></div>
	   
              	  <label for="realname" class="control-label">真实姓名：<font color="red" size="2px">(必填)</font></label>
	              <input type="text" name="realname" class="form-control input-text control-input" placeholder="请输入真实姓名" id="realname">
	              <div class="height-margin"></div>

	              <label for="tel" class="control-label">联系电话：<font color="red" size="2px">(必填)</font></label>
	              <input type="text" name="tel" class="form-control input-text control-input" placeholder="" id="tel">
	              <div class="height-margin"></div>
	              
	              <label for="org" class="control-label">单位：<font color="red" size="2px">(必填)</font></label>
	              <input type="text" name="organization" class="form-control input-text control-input" placeholder="输入所在单位" id="org">
	              <div class="height-margin"></div>
     
     	           <label for="email" class="control-label">邮箱：<font color="red" size="2px">(必填)</font></label>
	              <input type="email" name="email" class="form-control input-text control-input" placeholder="请输入邮箱" id="email">
	              <div class="height-margin"></div>
	              <div class="height-margin"></div>
	              <div class="form-group form-radio">
					 	<label for="isStudent" style="font-size: 16px;">是否为学生：<font color="red" size="2px">(默认为否)</font></label>
							  <input  type="radio" name="isStudent" id="isStudent1" value="true">
							  是
							  <input  type="radio" name="isStudent" id="isStudent2" value="false" checked>
							  否	
					</div>
					<div class="form-group">					
	              		<button type="submit" class="btn btn-primary" id="btn-sub">提交</button>
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
				if (realname_validate_required(realname,"姓名不能为空！")==false)
				{realname.focus();return false}
				
				if (tel_validate_required(tel,"手机号码不能为空！")==false)
				{tel.focus();return false;}
				
				if (org_validate_required(org,"请填写单位名称！")==false)
				{org.focus();return false}
				
				if (email_validate_required(email,"邮箱地址不正确！")==false)
				{email.focus();return false}
			}
		}

		function realname_validate_required(field,alerttxt)
	{
		with (field)
		{   
	        if(("")==$.trim(value) || null==$.trim(value))
	        	{alert(alerttxt);return false}
	        else {return true}
		}
	}

		function tel_validate_required(field,alerttxt)
		{
			with (field)
			{   
		        if(("")==$.trim(value) || null==$.trim(value))
		        	{alert(alerttxt);return false}
		        else {return true}
			}
		}

	function org_validate_required(field,alerttxt)
	{
		with (field)
		{   
	        if(("")==$.trim(value) || null==$.trim(value))
	        	{alert(alerttxt);return false}
	        else {return true}
		}
	}

	function email_validate_required(field,alerttxt)
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
	</script>
</body>
</html>