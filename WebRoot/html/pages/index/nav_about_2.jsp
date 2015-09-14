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
    <title>关于合肥工业大学管理学院-第十届（2015）中国管理学年会</title>
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
          <h3>合肥工业大学管理学院</h3>
        </div>
        <div class="content-con">
               <p>合肥工业大学管理学院始建于1979年成立的管理工程系，1998年改名为管理学院。经过三十多年发展，特别是近十多年来，在学科带头人杨善林教授带领下，学院在学科建设、人才培养、科学研究、师资队伍建设等各个方面都取得了巨大进展，逐步形成了“我们拥有共同事业”的学院文化，学院发展呈现出“和谐、奋发”的良好局面。</p>

    <p>学院现拥有管理科学与工程一级学科国家重点学科，企业管理安徽省重点学科，管理科学与工程、工商管理2个一级学科博士授予权和博士后科研工作流动站，工商管理（MBA）、公共管理（MPA）、工程管理、资产评估、会计学（MPAcc）、物流工程、项目管理等专业学位点或授权领域，信息管理与信息系统、电子商务、物流工程与管理、工商管理、会计学、市场营销6个本科专业，其中信息管理与信息系统专业是国家特色专业。</p>

    <p>学院现有教职工133人，其中专任教师112人，博士生导师14人，正高级职称23人，副高级职称47人，硕士生导师54人，国务院学科评议组成员1人，国家教学名师1人，国家百千万人才工程1人，新世纪优秀人才计划2人，全国百篇优秀博士论文获得者1人，具有博士学位教师69人。聘有长江学者讲座教授2人。现有教育部科研创新团队1个，国家级教学团队2个。在校博士生150余人，各类硕士生1350人，本科生1963人。</p>

    <p>学院现有6个系和4个省部级科研基地，设有信息管理与信息系统系，电子商务系、物流工程与管理系、工商管理系、会计学系、市场营销系；拥有“过程优化与智能决策”教育部重点实验室、“智能决策与信息系统技术”教育部工程研究中心、“信息处理技术与信息系统”安徽省工程技术中心、“知识经济与企业管理创新”安徽省高校省级人文社科基地。学院还主办《预测》、《运筹与管理》2种学术刊物。</p>

    <p>自2005年来，学院取得了一系列的教学与科研成果，先后获国家级教学成果奖二等奖2项，安徽省教学成果奖特等奖2项、一等奖1项、二等奖4项；获国家级教学团队2个，国家级精品课程4门，国家级双语教学示范课程1门；主编国家级“十一五”规划教材10部，其中1部评为国家精品教材；获评全国优秀博士论文1篇，全国优秀博士论文提名1篇；先后承担了一批以国家自然科学基金重点项目、国家哲学社会科学规划重大项目、国家“863”计划重点项目、国防基础研究重点项目和国家发改委政策研究重点项目等为代表的重要课题的研究工作，总经费8000多万元；发表学术论文900多篇；出版学术专著23部；获国家科技进步奖二等奖2项，省部级科学技术奖一等奖5项，二等奖3项，省部级人文社科奖一等奖2项、二等奖6项。</p>

    <p>学院加强国内外交流和合作，与英国曼彻斯特大学、法国巴黎中央大学、美国匹兹堡大学、清华大学、大连理工大学、西安交通大学等国内外著名高校和科研机构建立了长期、稳定的学术联系和合作关系，一批著名学者和企业高管被聘为兼职教授或顾问。</p>

    <p>学院紧紧围绕国民经济和社会对创新型管理人才的需求，不断改革创新，在“我们拥有共同事业”的文化引领下，成为国内一流的人才培养和科研基地。</p>
        </div>
      </div>
      <div class="nav-left">
        <div class="left-title">
          <h3>关于我们</h3>
        </div>
        <ul>
          <li>
            <a href="html/pages/index/nav_about.jsp">关于合肥工业大学</a>
          </li>
          <li>
            <a href="html/pages/index/nav_about_2.jsp">关于合肥工业大学管理学院</a>
          </li>
          <li>
            <a href="html/pages/index/nav_about_1.jsp">联系我们</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="clearfloat"></div>
  </div>
  
  <!--footer-->
  <jsp:include page="../../includes/footer.jsp"></jsp:include>
  
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  </body>  
</html>