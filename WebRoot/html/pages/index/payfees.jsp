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
<title>会议缴费-第十届（2015）中国管理学年会</title>
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
<script type="text/javascript"" >
	window.onload = function(){
	var realname = document.getElementById('realname');
    var org = document.getElementById('org');
    var totalfee = document.getElementById('totalfee');
	var teafee=document.getElementById('teafee');
	var stufee=document.getElementById('stufee');
	var date1=document.getElementById('isDiscount1');
    var date2=document.getElementById('isDiscount2');
	var btn=document.getElementById("btn-sub");
	var btn1=document.getElementById("isDiscount1");
	var btn2=document.getElementById("isDiscount2");
  btn1.onclick=function Discount1(){
	teafee.innerHTML=980;
	stufee.innerHTML=480;
	totalfee.innerHTML=0;
	realname.value=0;
	org.value=0;
     }		
   btn2.onclick=function Discount2(){
	teafee.innerHTML=1280;
	stufee.innerHTML=580;
	totalfee.innerHTML=0;
	realname.value=0;
	org.value=0;
     };	           
   document.onkeyup = function gettotal() {
      var teanum = parseInt(realname.value);
      var stunum = parseInt(org.value);
      var sfee = parseInt(stufee.childNodes[0].nodeValue);
      var tfee = parseInt(teafee.childNodes[0].nodeValue);
      totalfee.innerHTML = parseInt(teanum*tfee+stunum*sfee);
      };
    btn.onclick=function check(){ 		
	   if (realname.value=="0"&&org.value=="0"){
	   alert("教师人数和学生人数不可同时为0！");
       return false;			
	     }
       else{
          var file = document.getElementById("js-fileInput").value;
	      if (file ==""){
		     alert ("请上传图片！");
		      return false;
	           }
	      else{
		       var fileType=(file.substring(file.lastIndexOf(".")+1,file.length)).toLowerCase();
		       if (!(fileType=="jpg"||fileType=="JPG"||fileType=="jpeg"||fileType=="JPEG")){
			       alert("图片格式不符！");
			        return false;
		            }
	           
	          }		 			
           }	
        }
}
</script>
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
			<form id="info-sub" action="member/payfees.action" method="post" enctype="multipart/form-data">
              <div class="form-content">
	              <div class="form-title" style="text-align: left;height:35px;">
	              	<font color="red" style="width: 255px;float: right;font-size:20px;">${requestScope.payfees}</font>
	              	<h4 style="width:100px;float:left;">  &gt; 会议缴费 </h4>
	              	
	              </div>
	              <div class="clearfloat"></div>
	              
	              <div class="form-group form-radio">
					 	<label for="isDiscount" style="font-size: 16px;" id="isDiscount">缴费日期：</label>
						      <input  type="radio" name="isDiscount" id="isDiscount1" value="true"  checked >
							  2015-10-15 前（包含）
							  <input  type="radio" name="isDiscount" id="isDiscount2" value="false"   >
							  2015-10-15 后
					  
					</div>
              	  <label for="realname" class="control-label">教师人数：</label>
	              <input type="text" name="teacherNum" class="form-control input-text control-input" placeholder="请输入教师人数" id="realname" value="0" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
	              <div class="height-margin"></div>

	              <label for="tel" class="control-label">教师费用：</label>
	              <label for="tel" class="control-label"><span id="teafee" value="980" >980</span>元/人</label>
	              <div class="height-margin"></div>
	              
	              <label for="org" class="control-label">学生人数：</label>
	              <input type="text" name="studentNum" class="form-control input-text control-input" placeholder="请输入学生人数" id="org" value="0" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
	              <div class="height-margin"></div>
     
     	           <label for="email" class="control-label">学生费用：</label>
	               <label for="email" class="control-label"><span id="stufee" value="480" >480</span>元/人</label>
	              <div class="height-margin"></div>
	              
	              <label for="email" class="control-label">总费用：<span name="fee" id="totalfee"  style="color:red">0</span></label>
	              
	               <label for="email" class="control-label"  >元</label>
	              
	              <div class="form-group">
						<label for="file" class="control-label">凭据上传：<font color="red" size="2px">（请上传清晰的银行回执单图片，仅支持.jpg文件）</font></label> 
						<input type="file" name="img" id="js-fileInput" class="form-control" accept=".jpg,.jpeg"/>
					</div>
	              <div class="height-margin"></div>
	              
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
	
</body>
</html>