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
		<title>交通信息-第十届（2015）中国管理学年会</title>
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
  
  <div id="main">  
    <!--banner-->
		<jsp:include page="../../includes/banner.jsp"></jsp:include>
    <div class="main-content">
      
      <div class="content-article">
        <div class="article-title">
          <h3>交通信息</h3>
        </div>
        <div class="content-con" style="font-size:16px;margin-left:50px;">
        <%--
                          <STRONG>从各火车站、机场到合肥工业大学南校区的路线：</STRONG><BR>
                    <BR>
                <STRONG>合肥火车站</STRONG>（<EM>距离合肥工业大学南区大约<STRONG>8.9</STRONG>公里</EM>）：
                <UL>
                  <LI><strong>方案1：</strong>从火车站步行至中绿广场（500米）：1、乘226路(或149路)公交车，到达合工大站下车（6站），步行150米（过天桥）到达合肥工业大学南区。2、乘坐902路公交车，到达谢岗站（6站）下车，步行30米到达合肥工业大学南区东门。</LI>
                  <LI><strong>方案2</strong>：打车（费用大约12元）。</LI>
                </UL>
                <br/>
                <STRONG>合肥南站</STRONG>（<EM>距离合肥工业大学南区大约<STRONG>15.9</STRONG>公里</EM>）:
                <UL>
                  <LI>
                   <STRONG>方案1：</STRONG>步行至东陈岗站，乘坐235路公交车，到达合工大站（3站）下车，步行150米（过天桥）到达合肥工业大学南区。
                  </LI>
                  <LI>
                    <STRONG>方案2：</STRONG>打车（费用大约14元）。
                  </LI>
                </UL>
                <br/>
               <STRONG>合肥新桥国际机场</STRONG>（<EM>距离合肥工业大学南区大约<STRONG>43.4</STRONG>公里</EM>）：
                <UL>
                  <LI>
                   <STRONG>方案1：</STRONG>步行至新桥机场站，乘坐<SPAN title="运营时间:09:00-00:00  ">机场巴士1号线</SPAN>, 在巢湖路站（3站）下车，步行至孝肃桥站（550米），  乘坐145路（末班发车20:00）公交车，到谢岗站下车，步行30米左右到合肥工业大学南区东门。
                  <LI>
                    <STRONG>方案2：</STRONG>打车（费用大约80元）。
                  </LI>
                </UL>
                <p>&nbsp;</p>
       --%>
      <STRONG>从各火车站、机场到滨湖世纪金源大酒店的路线：</STRONG><BR>
                    <BR>
                <STRONG>合肥火车站</STRONG>（<EM>距离滨湖世纪金源大酒店大约<STRONG>22.7</STRONG>公里</EM>）：
                <UL>
                 <br/> <LI>
                    <strong>方案1：</strong>从火车站步行至中绿广场（200米），乘<strong>509</strong>路公交车，到达滨湖世纪城站下车（4站），步行650到达滨湖世纪金源大酒店。
                  </LI><br/>
                  <LI>
                  <strong>方案2</strong>：打车（费用大约38元）。
                  </LI>
                </UL>
                <br/>
              <STRONG>合肥火车南站</STRONG>（<EM>距离滨湖世纪金源大酒店大约<STRONG>7.4</STRONG>公里</EM>）：
                <UL>
                 <br/> <LI>
                   <STRONG>方案1：</STRONG>步行至合肥南站北广场站，乘坐509路公交车，到达滨湖世纪城站（1站）下车，步行650米到达滨湖世纪金源大酒店；或步行至梅兰（brt侧式站台）站上车，乘快速公交1号线白班，到达滨湖世纪城站下车，步行650到达滨湖世纪金源大酒店。
                  </LI><br/>
                  <LI>
                   <STRONG>方案2：</STRONG>打车（费用大约17元）。
                  </LI>
                </UL><br/>
               <STRONG>合肥新桥国际机场</STRONG>（<EM>距离滨湖世纪金源大酒店大约<STRONG>50.6</STRONG>公里</EM>）：
                <UL>
                <br/>  <LI>
                    <STRONG>方案1：</STRONG>步行至新桥机场站（800米），乘坐<SPAN title="运营时间:09:00-00:00  ">机场巴士3号线</SPAN>, 在汽车客运南站（5站）下车，步行南门换乘中心站（140米），乘坐63路公交车，到四十六中站下车，步行1.3公里左右到滨湖世纪金源大酒店。
                 </LI><br/> <LI>
                    <STRONG>方案2：</STRONG>打车（费用大约60元）<STRONG>。</STRONG>
                  </LI>
                </UL>
                <p>&nbsp;</p>
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