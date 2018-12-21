<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme() + "://"
  + request.getServerName() + ":" + request.getServerPort()
  + path + "/";
%>
<!DOCTYPE html >
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>团队概况</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>/myresources/css/bootstrap.min.css" rel="stylesheet" />
	<!-- AmaranJS CSS -->
	<link href="<%=basePath%>/myresources/css/amaran.min.css" rel="stylesheet" />
	<link href="<%=basePath%>/myresources/css/animate.min.css" rel="stylesheet" />
	
    <!-- Custom CSS -->
    <link href="<%=basePath%>/myresources/css/sb-admin.css" rel="stylesheet" />
    <link href="<%=basePath%>/myresources/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/myresources/css/exDemoTasks.css" />
    <link href="<%=basePath%>/myresources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>/myresources/css/simple-sidebar.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/myresources/css/style.css" />
    <!-- Custom Fonts -->

    <!--
      HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
    -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <nav id="nav">
      <div class="logo">
        <a href="index1.html"><img id="logo" src="assets/logo.png"/></a>
      </div>
      <div class="tag_container">
        <a href="online-disk.html" class="tag">文档管理</a>
        <a href="task-manager.html" class="tag"> 小组协作</a>
        <span class="tag">视频会议</span> <span class="tag">实用功能</span>
        <span class="tag">通讯录</span> <span class="tag">个人信息</span>
      </div>
    </nav>

    <div id="wrapper">
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
          
          <li>
            <a href="javascript:;" style="color:white"
              ><i class="fa fa-fw fa-folder"></i> 科研论坛
            </a>
          </li>

		<li><a href="javascript:;" style="color: white"><i
				class="fa fa-fw fa-folder"></i> 科研团队 </a></li>

		<li>
            <a
              href="javascript:;"
              style="color:white"
              data-toggle="collapse"
              data-target="#team"
              ><i class="fa fa-fw fa-folder"></i> 团队空间
              <i class="fa fa-fw fa-caret-down"></i
            ></a>
            <ul id="team" class="collapse in">
              <li>
                <a href="<%=basePath%>/doc/root.do" style="color:white"
                  ><i class="fa fa-fw fa-folder-o"></i> &nbsp;文档管理</a
                >
              </li>
              <li>
                <a href="<%=basePath%>task-manager.jsp" style="color:white"
                  ><i class="fa fa-fw fa-tasks"></i> &nbsp;任务协作</a
                >
              </li>
              <li class="active">
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-video-camera"></i> &nbsp;视频会议</a
                >
              </li>
              <li>
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-envelope-o"></i> &nbsp;组内群聊</a
                >
              </li>
              
              <li>
                <a href="javascript:;" style="color:white">
                	<i class="fa fa-fw fa-star"></i> &nbsp;实用功能 </a>
              </li>
              <li>
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-info-circle"></i> &nbsp;团队概况</a
                >
              </li>
              <li>
                <a href="javascript:;" style="color:white" data-toggle="collapse" data-target="#team_manager_secondmenu"
                  ><i class="fa fa-fw fa-cog"></i> &nbsp;团队管理<i class="fa fa-fw fa-caret-down"></i
                ></a>
                <ul id="team_manager_secondmenu" class="collapse in second_menu">
                  <li>
                    <a href="<%=basePath%>/team/getuserjoinedteams.do" style="color:white"
                    ><i class="fa fa-fw fa-exchange"></i> &nbsp;切换团队</a
                    >
                  </li>
					<li>
                    <a href="<%=basePath%>/team/getallJoinRequest.do" style="color:white"
                    ><i class="fa fa-fw fa-list"></i> &nbsp;申请处理</a
                    >
                  </li>
                  <li>
                    <a href="<%=basePath%>/team/" style="color:white"
                    ><i class="fa fa-fw fa-user"></i> &nbsp;成员管理</a
                    >
                  </li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      
      <div id="page-content-wrapper">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header" style="height: 50px;margin-top: 10px;">
                <div class="col-lg-6"><!-- /input-group --><span id="currentteam">当前团队 <span id="teamname">${loginteam.teamName }</span></span></div>
                <!-- /.col-lg-6 -->
               
              </h1>
            </div>
          </div>
          
          <!-- 隐藏标签 -->
          <input type="hidden" id="ctxValue"  value="<%=basePath%>/team/" />
          <!-- 隐藏标签 ,判断是否进行Ajax轮询处理加入团队请求操作-->
          <input type="hidden" id= "id_forteam_creatorEmail" value="${loginteam.teamCreatorName}"/>
          <input type="hidden" id= "id_foruser_email" value="${user.email}"/>
          
          <!-- Three columns of text below the carousel -->
          <div class="row">
            <div class="col-xs-1 col-md-2"></div>
            <div class="panel panel-default col-xs-10 col-md-8 center">

            </div>
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </div>

      <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    
    
    <!-- jQuery -->
    <script src="<%=basePath%>/myresources/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath%>/myresources/js/bootstrap.min.js"></script>
    <!-- AmaranJS Core -->
    <script src="<%=basePath%>/myresources/js/jquery.amaran.js"></script>
    <!-- Customer JavaScript -->
    <script src="<%=basePath%>/myresources/js/team-information.js"></script>
  </body>
</html>