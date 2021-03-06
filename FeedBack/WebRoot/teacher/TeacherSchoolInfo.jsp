<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>教师信息展示</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datetimepicker/datertimepicker.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>教师端</b></a>
      <!--logo end-->
      
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="login.html">退出</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="profile.html"><img src="img/wuyanzu.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">小明</h5>
          
          <li class="mt">
            <a class="active" href="TeacherInInfo.html">
              <i class="fa fa-dashboard"></i>
              <span>个人信息</span>
              </a>
          </li>
		  <li class="mt">
            <a  href="TeacherBox.html">
              <i class="fa fa-envelope"></i>
              <span>查看反馈</span>
              </a>
          </li>
		  <li class="mt">
            <a  href="Exams.html">
              <i class="fa fa-th"></i>
              <span>查看考试</span>
              </a>
          </li>
		  <li class="mt">
            <a  href="Schedule.html">
              <i class="fa fa-book"></i>
              <span>课表</span>
              </a>
          </li>
          
          
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 查看和修改个人信息</h3>
        <div class="row mt">
          <!--  DATE PICKERS -->
          <div class="col-lg-12">
            <div class="form-panel">
            <jsp:useBean id="teacherschool" scope="request" class="com.feedback.domain.TeacherSchool" />
             <form:form modelAttribute="teacherschool" action="#" class="form-horizontal style-form" method="POST">
              <div class="form-group">
                  <label class="control-label col-md-3">教工号</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="tsno" class="form-control" readonly="true"/>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="control-label col-md-3">密码</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="tspsw" class="form-control" readonly="true"/>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="control-label col-md-3">姓名</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="tsname" class="form-control" readonly="true"/>
                  </div>
                </div>
               
                
				<div class="form-group">
                  <label class="control-label col-md-3">电话号码</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="tstel" class="form-control" readonly="true"/>
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">职称</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="tsprofession" class="form-control" readonly="true"/>
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">学位</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="tsscholar" class="form-control" readonly="true"/>
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">类型</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="tstype" class="form-control" readonly="true"/>
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">出生日期</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="birthyear" class="form-control" readonly="true"/>
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">毕业院校</label>
                  <div class="col-md-3 col-xs-11">
                    <form:input path="tsschool" class="form-control" readonly="true"/>
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">海外经历</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tsoversea" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">工程背景</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tsbackground" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">主持项目</label>
                  <div class="col-md-3 col-xs-11">
                   <form:textarea path="tswork" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">科研论文</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tsscpaper" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">教研论文</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tsteapaper" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">专利</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tspatent" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">软著</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tssoft" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">专著</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tssp" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">科研教学获奖</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tsprize" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">师德师风表彰</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tsreward" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <label class="control-label col-md-3">与软件学院本科生合作成果</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tsarch" class="form-control" readonly ="true" />
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="control-label col-md-3">单位</label>
                  <div class="col-md-3 col-xs-11">
                    <form:textarea path="tsdepartment" class="form-control" readonly ="true" />
                  </div>
                </div>
                
				<div class="form-group">
                  <div class="col-lg-offset-2 col-lg-10">
                    <button class="btn btn-theme" type="submit">提交</button>
                  </div>
                </div>
               
				
              </form:form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
        <!-- DATE TIME PICKERS -->
        <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <form class="form-horizontal  style-form" action="#">
                <div class="form-group">
                  <label class="control-label col-md-3">修改密码</label>
                  <div class="col-md-3 col-xs-11">
                    <input type="text" class="form-control" value="123456">
                    
                  </div>
				  
                </div>
				<div class="form-group">
                  <label class="control-label col-md-3">修改邮箱</label>
                  <div class="col-md-3 col-xs-11">
                    <input type="text" class="form-control" value="123456789@163.com">
                    
                  </div>
				  
                </div>
				 <div class="form-group last">
                  <label class="control-label col-md-3">头像上传</label>
                  <div class="col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" alt="" />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                      <div>
                        <span class="btn btn-theme02 btn-file">
                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> 选择图片</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> 更改</span>
                        <input type="file" class="default" />
                        </span>
                        <a href="advanced_form_components.html#" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash-o"></i> 移除</a>
                      </div>
                    </div>
                    
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-offset-2 col-lg-10">
                    <button class="btn btn-theme" type="submit">提交</button>
                  </div>
                </div>
              </form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- row -->
        <!--  TIME PICKERS -->
        
        
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="lib/advanced-form-components.js"></script>

</body>
</html>
