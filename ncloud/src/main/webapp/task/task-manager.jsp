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

    <title>任务协作</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>/myresources/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="<%=basePath%>/myresources/css/sb-admin.css" rel="stylesheet" />
    <link href="<%=basePath%>/myresources/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/myresources/css/exDemoTasks.css" />
    <link
      href="<%=basePath%>/myresources/font-awesome/css/font-awesome.min.css"
      rel="stylesheet"
      type="text/css"
    />
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
      <a href="index1.html"><img id="logo" src="assets/logo.png" /></a>
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

		<li>
			<a href="<%=basePath%>/team/research-group.jsp" style="color: white"><i
					class="fa fa-fw fa-folder"></i> 科研团队 </a>
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
                  ><i class="fa fa-fw fa-folder-o"></i> &nbsp;文档管理</a
                >
              </li>
              <li>
                <a href="<%=basePath%>/task/task-manager.jsp" style="color:white"
                  ><i class="fa fa-fw fa-tasks"></i> &nbsp;任务协作</a
                >
              </li>
              <li class="active">
                <a href="<%=basePath%>/meeting/videomeeting.jsp" style="color:white"
                  ><i class="fa fa-fw fa-video-camera"></i> &nbsp;视频会议</a
                >
              </li>
              <li>
                <a href="<%=basePath%>/meeting/chating.jsp" style="color:white"
                  ><i class="fa fa-fw fa-envelope-o"></i> &nbsp;组内群聊</a
                >
              </li>

              <li>
                <a href="<%=basePath%>/applied-function.jsp" style="color:white">
                	<i class="fa fa-fw fa-star"></i> &nbsp;实用功能 </a>
              </li>
              <li>
                <a href="<%=basePath%>/team/team-infomation.jsp" style="color:white"
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
                    <a href="<%=basePath%>/team/team-user-manage.jsp" style="color:white"
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
      <div class="task_bar">
          <div class="dropdown" style="display:inline-block">
            <span class="task_span btn btn-default" id="project_downmenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">项目<i class="fa fa-fw fa-caret-down"></i></span>
            <ul class="dropdown-menu" aria-labelledby="project_downmenu">
                <li><a href="#">项目1</a></li>
                <li><a href="#">项目2选中 <i class="glyphicon glyphicon-ok"></i></a></li>
              </ul>
          </div>
        <span class="task_span btn btn-default" data-toggle="modal" data-target="#project_modal">创建项目</span>
        <span class="task_span btn btn-default">我参与的任务</span>
      </div>
      <div style="min-height: 660px; height: auto !important; height: 100%;">
        <div id="task_container">
          <div id="task_container2" style="display:flex;	overflow-x: auto;">
            <div class="task_tip ">
              <h4>需求分析 <span></span></h4>
              <div class="like_btn_control clearfix ">
                <ul class="nav navbar-nav">
                  <li><input type="checkbox" /></li>
                  <li>
                    <p>确定总体功能描述</p>
                  </li>
                </ul>
                <ul class="nav navbar-nav">
                  <li><input type="checkbox" /></li>
                  <li>
                    <p>详细需求分析</p>
                  </li>
                </ul>
              </div>
              <div class="addTask" data-toggle="modal" data-target="#mission_modal">
                <span>
                  <span class="glyphicon glyphicon-plus-sign"></span> 添加任务
                </span>
                <!-- <form class="form-horizontal"> -->

                <!-- </form> -->
              </div>
            </div>
            <div class="task_tip">
              <h4>详细设计<span></span></h4>
              <div class="like_btn_control clearfix ">
                <ul class="nav navbar-nav">
                  <li><input type="checkbox" /></li>
                  <li>
                    <p>数据库设计</p>
                  </li>
                </ul>
                <ul class="nav navbar-nav">
                  <li><input type="checkbox" /></li>
                  <li>
                    <p>编码</p>
                  </li>
                </ul>
              </div>
              <div class="addTask">
                <span class="glyphicon glyphicon-plus-sign"></span> 添加任务
              </div>
            </div>
            <div class="task_tip">
              <h4>测试与维护<span></span></h4>
              <div class="like_btn_control clearfix ">
                <ul class="nav navbar-nav">
                  <li><input type="checkbox" /></li>
                  <li>
                    <p>测试用户登录逻辑</p>
                  </li>
                </ul>
                <ul class="nav navbar-nav">
                  <li><input type="checkbox" /></li>
                  <li>
                    <p>测试任务管理是否有bug</p>
                  </li>
                </ul>
                <ul class="nav navbar-nav">
                  <li><input type="checkbox" /></li>
                  <li>
                    <p>测试文档管理是否有bug</p>
                  </li>
                </ul>
              </div>
              <div class="addTask">
                <span class="glyphicon glyphicon-plus-sign"></span> 添加任务
              </div>
            </div>
            <div class="new_task_tip ">
              <span class="glyphicon glyphicon-plus"></span> 新建任务列表....
              <form>
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="新建任务列表...." />
                </div>
                <div class="clearfix">
                  <input type="button" class="btn btn-primary pull-right" value="保存" />
                  <input type="button" class="btn btn-default btn-link pull-right" value="取消" />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- /.container-fluid -->
    </div>

    <!-- /#page-wrapper -->
  </div>
  <!-- <div id="footer">
    <div class="container text-center">
      Copyright©2018 中国科学院核能安全技术研究所 版权所有 站长统计
    </div>
  </div> -->
  <!-- /#wrapper -->
  <div class="modal fade" id="project_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="myModalLabel">创建项目</h4>
        </div>
        <div class="modal-body">
          <form class="form-horizontal" style="padding:16px;">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="项目名称" />
            </div>
            <div class="form-group">
              <label for="project_desc" class="control-label">项目描述</label>
              <div class="controls">
                <div class="textarea">
                  <textarea class="form-control" rows="3" id="project_desc"></textarea>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="project_desc" class="control-label">项目成员</label>
              <span class="glyphicon glyphicon-user task-icon"></span>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">
            取消
          </button>
          <button type="button" class="btn btn-primary">确定</button>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="mission_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">创建任务</h4>
          </div>
          <div class="modal-body">
            <form class="form-horizontal" style="padding:16px;">
              <div class="form-group">
                <label for="project_desc" class="control-label">任务描述</label>
                <div class="controls">
                  <div class="textarea">
                    <textarea class="form-control" rows="3" id="project_desc"></textarea>
                  </div>
                </div>
              </div>
              <div class="form-group"  data-toggle="modal" data-target="#member_modal">
                <label for="project_desc" class="control-label">成员</label>
                <span class="glyphicon glyphicon-user task-icon"></span>
                <div class="member_list">
                  <span class="member">1</span><span class="member">2</span><span class="member">3</span>
                </div>
              </div>
              <div class="form-group">
                  <label for="project_desc" class="control-label">截止时间</label>
                  <span class="glyphicon glyphicon-th"></span>
                <input type="text" value="2019/09/01" class="form-control data-input">

                </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              取消
            </button>
            <button type="button" class="btn btn-primary">确定</button>
          </div>
        </div>
      </div>
    </div>
  <div class="modal fade" id="member_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="myModalLabel">项目成员</h4>
        </div>
        <div class="modal-body">
          <label><input name="membercheck" type="checkbox" value="" />成员1 </label>
          <label><input name="membercheck" type="checkbox" value="" />成员2 </label>
          <label><input name="membercheck" type="checkbox" value="" />成员3 </label>
          <label><input name="membercheck" type="checkbox" value="" />成员4 </label>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">
            取消
          </button>
          <button type="button" class="btn btn-primary">确定</button>
        </div>
      </div>
    </div>
  </div>

  <!-- jQuery -->
  <script src="<%=basePath%>/myresources/js/jquery.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="<%=basePath%>/myresources/js/bootstrap.min.js"></script>
  <script src="<%=basePath%>/myresources/js/bootstrap-datepicker.min.js"></script>
  <script src="<%=basePath%>/myresources/js/bootstrap-datepicker.zh-CN.min.js"></script>
  <script>
      $('.data-input').datepicker({
          format: "yyyy/mm/dd"
      });
        let container = document.querySelector("#task_container2")
        //判断浏览器
        let isIE = navigator.userAgent.match(/MSIE (\d)/i);
        isIE = isIE ? isIE[1] : undefined;
        let isFF = /FireFox/i.test(navigator.userAgent);
 
        if (isIE < 9) //传统浏览器使用MouseWheel事件
        container.attachEvent("onmousewheel", function (e) {
                //计算鼠标滚轮滚动的距离
                //一格3行，每行40像素
                let v = e.wheelDelta / 2;
                container.scrollLeft += v;
                //阻止浏览器默认方法
                return false;
            });
        else if (!isFF) //除火狐外的现代浏览器也使用MouseWheel事件
        container.addEventListener("mousewheel", function (e) {
                //计算鼠标滚轮滚动的距离
                let v = -e.wheelDelta / 2;
                container.scrollLeft += v;
                //阻止浏览器默认方法
                e.preventDefault();
            }, false);
        else //火狐使用DOMMouseScroll事件
        container.addEventListener("DOMMouseScroll", function (e) {
                //计算鼠标滚轮滚动的距离
                //一格是3行，但是要注意，这里和像素不同的是它是负值
                container.scrollLeft += e.detail * 80;
                //阻止浏览器默认方法
                e.preventDefault();
            }, false);
  </script>
</body>
</html>