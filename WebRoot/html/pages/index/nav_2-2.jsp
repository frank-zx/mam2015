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
          <h3>交通信息</h3>
        </div>
        <div class="content-con" style="font-size:16px;margin-left:50px;">
        
      <STRONG>从各火车站、机场到滨湖世纪金源大酒店的路线：</STRONG><BR>
                    <BR>
                <STRONG>合肥火车站</STRONG>（<EM>距离滨湖世纪金源大酒店大约<STRONG>22.7</STRONG>公里</EM>）：
                <UL>
                 <br/> <LI>
                    <strong>方案1：</strong>从火车站步行至中绿广场（200米），乘<strong>509</strong>路公交车，到达滨湖世纪城站下车（4站），步行650米到达滨湖世纪金源大酒店。
                  </LI><br/>
                  <LI>
                  <strong>方案2</strong>：打车（费用大约38元）。
                  </LI>
                </UL>
                <br/>
              <STRONG>合肥火车南站</STRONG>（<EM>距离滨湖世纪金源大酒店大约<STRONG>7.4</STRONG>公里</EM>）：
                <UL>
                 <br/> <LI>
                   <STRONG>方案1：</STRONG>步行至合肥南站北广场站，乘坐509路公交车，到达滨湖世纪城站（1站）下车，步行650米到达滨湖世纪金源大酒店；或步行至梅兰（brt侧式站台）站上车，乘快速公交1号线白班，到达滨湖世纪城站下车，步行650米到达滨湖世纪金源大酒店。
                  </LI><br/>
                  <LI>
                   <STRONG>方案2：</STRONG>打车（费用大约17元）。
                  </LI>
                </UL><br/>
               <STRONG>合肥新桥国际机场</STRONG>（<EM>距离滨湖世纪金源大酒店大约<STRONG>50.6</STRONG>公里</EM>）：
                <UL>
                <br/>  <LI>
                    <STRONG>方案1：</STRONG>步行至新桥机场站（800米），乘坐<SPAN title="运营时间:09:00-00:00  ">机场巴士3号线</SPAN>, 在汽车客运南站（5站）下车，步行南门换乘中心站（140米），乘坐63路公交车，到四十六中站下车，步行1.3公里左右到滨湖世纪金源大酒店。
                 </LI><br/> <LI>
                    <STRONG>方案2：</STRONG>打车（费用大约60元）<STRONG>。</STRONG>
                  </LI>
                </UL>
                <p>&nbsp;</p>
       </div>
      </div>
     
    <!-- left -->
    

 <div class="nav-left">
        <div class="left-title">
          <h3>会议信息</h3>
        </div>
        <ul>
          <li>
            <a href="html/pages/index/nav_2.jsp">会议简介</a>
          </li>
          <li>
            <a href="html/pages/index/nav_2-6.jsp">论文征集</a>
          </li>
          <li>
            <a href="html/pages/index/nav_2-5.jsp">时间安排</a>
          </li>
          <li>
            <a href="html/pages/index/nav_2-4.jsp">会议缴费</a>
          </li>
          <li>
            <a href="html/pages/index/nav_2-7.jsp">酒店信息</a>
          </li>
         <li>
            <a href="html/pages/index/nav_2-2.jsp">交通信息</a>
          </li>
          <li>
            <a href="html/pages/index/nav_2-1.jsp">往届会议</a>
          </li>
          <li>
            <a href="html/pages/index/nav_2-3.jsp">关于委员会</a>
          </li>
        </ul>
      </div>
    </div>

    <div class="clearfloat"></div>
  </div>
	<!--footer-->
	<!--footer-->
<div class="clearfloat"></div>
<jsp:include page="../../includes/footer.jsp"></jsp:include>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	</body>  
</html>