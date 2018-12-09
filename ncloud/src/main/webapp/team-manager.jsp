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

    <title>团队管理</title>

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
            <a
              href="javascript:;"
              style="color:white"
              data-toggle="collapse"
              data-target="#info"
              ><i class="fa fa-fw fa-folder"></i> 个人信息
              <i class="fa fa-fw fa-caret-down"></i
            ></a>
            <ul id="info" class="collapse in">
              <li>
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-files-o"></i>&nbsp;登陆</a
                >
              </li>
              <li>
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-files-o"></i>&nbsp;注册</a
                >
              </li>
              <li>
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-files-o"></i>&nbsp;修改密码</a
                >
              </li>
              <li>
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-files-o"></i>&nbsp;退出</a
                >
              </li>
            </ul>
          </li>
          <li>
            <a href="javascript:;" style="color:white"
              ><i class="fa fa-fw fa-folder"></i> 科研论坛
            </a>
          </li>
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
                  ><i class="fa fa-fw fa-files-o"></i> &nbsp;文档管理</a
                >
              </li>
              <li>
                <a href="<%=basePath%>task-manager.jsp" style="color:white"
                  ><i class="fa fa-fw fa-file-photo-o"></i> &nbsp;任务协作</a
                >
              </li>
              <li class="active">
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-file-audio-o"></i> &nbsp;视频会议</a
                >
              </li>
              <li>
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-file-video-o"></i> &nbsp;通讯录</a
                >
              </li>
              <li>
                <a href="javascript:;" style="color:white" data-toggle="collapse" data-target="#team_function" href="#"
                   style="color:white"
                ><i class="fa fa-fw fa-file-video-o"></i> &nbsp;实用功能 <i class="fa fa-fw fa-caret-down"></i
                ></a
                >
                <ul id="team_function" class="collapse in second_menu">
                  <li>
                    <a href="<%=basePath%>/doc/root.do" style="color:white"
                    ><i class="fa fa-fw fa-files-o"></i> &nbsp;文档管理</a
                    >
                  </li>
                  <li>
                    <a href="<%=basePath%>task-manager.jsp" style="color:white"
                    ><i class="fa fa-fw fa-file-photo-o"></i> &nbsp;任务协作</a
                    >
                  </li>
                  <li class="active">
                    <a href="#" style="color:white"
                    ><i class="fa fa-fw fa-file-audio-o"></i> &nbsp;视频会议</a
                    >
                  </li>
                  <li>
                    <a href="#" style="color:white"
                    ><i class="fa fa-fw fa-file-video-o"></i> &nbsp;通讯录</a
                    >
                  </li>
                  <li>
                    <a href="javascript:;" style="color:white" data-toggle="collapse" data-target="#team" href="#"
                       style="color:white"
                    ><i class="fa fa-fw fa-file-video-o"></i> &nbsp;实用功能</a
                    >

                  </li>
                  <li>
                    <a href="<%=basePath%>/team/getuserjoinedteams.do" style="color:white"
                    ><i class="fa fa-fw fa-file-video-o"></i> &nbsp;团队管理</a>
                  </li>
                </ul>

              </li>
              <li>
                <a href="<%=basePath%>/team/getuserjoinedteams.do" style="color:white"
                  ><i class="fa fa-fw fa-file-video-o"></i> &nbsp;团队管理</a>
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
                <button
                  class="btn btn-primary pull-right"
                  data-toggle="modal"
                  data-target="#join_modal"
                >
                  <i class="fa fa-fw fa-plus"></i>&nbsp;加入团队
                </button>
                
                <button
                  class="btn btn-primary pull-right"
                  style="margin-right:10px; "
                  data-toggle="modal"
                  data-target="#create_modal"
                >
                  <i class="fa fa-fw fa-cloud-upload"></i>&nbsp;创建团队
                </button>
              </h1>
            </div>
          </div>
          
          <!-- 隐藏标签 -->
          <input type="hidden" id="ctxValue"  value="<%=basePath%>/team/" />
          <!-- 隐藏标签 ,判断是否进行Ajax轮询处理加入团队请求操作-->
          <input type="hidden" id= "id_forteam_creatorEmail" value="${loginteam.teamCreatorName}"/>
          <input type="hidden" id= "id_foruser_email" value="${user.email}"/>
          
          <div id="disappare" style="display:none;">
            <h2>切换成功</h2>
            <p>2秒后自动隐藏此内容</p>
          </div>
          
          <!-- Three columns of text below the carousel -->
          <div class="row">
            <div class="col-xs-1 col-md-2"></div>
            <div class="panel panel-default col-xs-10 col-md-8 center">
              <table class="table">
                <tr>
                  <th>团队名</th>
                  <th>创建者邮箱</th>
                  <th></th>
                </tr>
                
                <c:forEach items="${teams}" var="iter_team" >
                <tr>
                	<td>${iter_team.teamName }</td>
                	<td>${iter_team.teamCreatorName }</td>
                	<td>
                    <button type="button" class="btn btn-primary" onclick="changeTeam(this)">进入</button>
                  </td>
                </tr>
                </c:forEach>
              </table>
            </div>
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </div>

      <!-- /#page-wrapper -->
    </div>
    
    <!-- /#wrapper -->
    <div
      class="modal fade"
      id="create_modal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myModalLabel"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">创建团队</h4>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="">
                <form class="form-horizontal" id="createteamform" action="<%=basePath%>/team/createteam.do">
                  <fieldset>
                    <div class="form-group">
                      <label class="col-md-4 control-label" for="textinput"
                        >团队名称*</label>
                      <div class="col-md-6">
                        <input
                          id="textinput"
                          name="teamName"
                          type="text"
                          placeholder="输入团队名称"
                          class="form-control input-md"
                          required=""
                        />
                      </div>
                    </div>

                    <!-- Select Basic -->
                    <div class="form-group">
                      <label class="col-md-4 control-label" for="select"
                        >团队类别（领域或方向）</label
                      >
                      <div class="col-md-6">
                        <select id="select" name="select" class="form-control">
                          <option value="1">Option one</option>
                          <option value="2">Option two</option>
                        </select>
                      </div>
                    </div>

                    <!-- Text input -->
                    <div class="form-group">
                      <label class="col-md-4 control-label" for="textinput"
                        >所属单位</label
                      >
                      <div class="col-md-6">
                        <input
                          id="textinput"
                          name="textinput"
                          type="text"
                          placeholder=""
                          class="form-control input-md"
                        />
                      </div>
                    </div>

                    <!-- Textarea -->
                    <div class="form-group">
                      <label class="col-md-4 control-label" for="textarea"
                        >简介</label
                      >
                      <div class="col-md-6">
                        <textarea
                          class="form-control"
                          id="textarea"
                          name="textarea"
                        ></textarea>
                      </div>
                    </div>

                    <!-- Button -->
<!--                     <div class="form-group">
                      <label
                        class="col-md-4 control-label"
                        for="singlebutton"
                      ></label>
                      <div class="col-md-6">
                        <button
                          id="singlebutton"
                          name="singlebutton"
                          class="btn btn-primary"
                        >
                          创建
                        </button>
                      </div>
                    </div> -->
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="confirmCreateTeam()">创建</button>
            
          </div>
        </div>
      </div>
    </div>

    <div
      class="modal fade"
      id="join_modal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="myModalLabel"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">加入团队</h4>
          </div>
          <div class="modal-body">
            <div class="row">
              <div>
                <div style="padding:12px;">
                  <form class="form-horizontal">
                    <fieldset>
                      <!-- Form Name -->
                      <div class="input-group">
                        <input
                          type="text"
                          name="teamname"
                          class="form-control"
                          placeholder="输入团队名"
                        />
                        <span class="input-group-btn">
                          <button class="btn btn-default" id="btn_searchteam" type="button">搜索
                          </button>
                        </span>
                      </div>
                      <!-- /input-group -->
                    </fieldset>
                  </form>
                </div>
              </div>
              <div style="padding:12px;">
                <div class="panel panel-default">
                  <table class="table" id="searchteam_table">
<!--                     <tr>
                      <th>团队名</th>
                      <th>创建者</th>
                      <th>操作</th>
                    </tr>
                    <tr>
                      <td>团队1</td>
                      <td>创建者1</td>
                      <td>
                        <button type="button" class="btn btn-primary">加入</button>
                      </td>
                    </tr> -->
                  </table>
                </div>
              </div>
              <!-- /.row -->
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal" id="btn_cleardialog">关闭</button>
          </div>
        </div>
      </div>
    </div>
    
    <!-- jQuery -->
    <script src="<%=basePath%>/myresources/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath%>/myresources/js/bootstrap.min.js"></script>
    <!-- AmaranJS Core -->
    <script src="<%=basePath%>/myresources/js/jquery.amaran.js"></script>
    <!-- Customer JavaScript -->
    <script src="<%=basePath%>/myresources/js/team-manager.js"></script>
  </body>
</html>