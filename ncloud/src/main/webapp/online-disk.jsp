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

<title>文档管理</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>/myresources/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Custom CSS -->
<link href="<%=basePath%>/myresources/css/sb-admin.css" rel="stylesheet" />
<link href="<%=basePath%>/myresources/css/styles.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/myresources/css/exDemoTasks.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/myresources/css/dropzone.css" />
<!-- AmaranJS CSS -->
<link href="<%=basePath%>/myresources/css/amaran.min.css"
	rel="stylesheet" />
<link href="<%=basePath%>/myresources/css/animate.min.css"
	rel="stylesheet" />
<link
	href="<%=basePath%>/myresources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/myresources/css/simple-sidebar.css"
	rel="stylesheet" />
<link href="<%=basePath%>/myresources/css/bootstrap-table.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/myresources/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/myresources/css/styles.css" />
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
                      <a href="javascript:;" style="color:white" data-toggle="collapse" data-target="#info"><i class="fa fa-fw fa-folder"></i>
                        个人信息
                        <i class="fa fa-fw fa-caret-down"></i></a>
                      <ul id="info" class="collapse in">
                        <li>
                          <a href="#" style="color:white"><i class="fa fa-fw fa-files-o"></i>&nbsp;登陆</a>
                        </li>
                        <li>
                          <a href="#" style="color:white"><i class="fa fa-fw fa-files-o"></i>&nbsp;注册</a>
                        </li>
                        <li>
                          <a href="#" style="color:white"><i class="fa fa-fw fa-files-o"></i>&nbsp;修改密码</a>
                        </li>
                        <li>
                          <a href="#" style="color:white"><i class="fa fa-fw fa-files-o"></i>&nbsp;退出</a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="javascript:;" style="color:white"><i class="fa fa-fw fa-folder"></i>
                        科研论坛
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" style="color:white" data-toggle="collapse" data-target="#team"><i class="fa fa-fw fa-folder"></i>
                          团队空间
                          <i class="fa fa-fw fa-caret-down"></i></a>
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
                <a href="#" style="color:white"
                  ><i class="fa fa-fw fa-file-video-o"></i> &nbsp;实用功能</a
                >
              </li>
              <li>
                <a href="<%=basePath%>/team/getuserjoinedteams.do" style="color:white"
                  ><i class="fa fa-fw fa-file-video-o"></i> &nbsp;团队管理</a
                >
              </li>
                      </ul>
                    </li>
                  </ul>
    </div>

		<!-- 上传文件对话框 -->
		<div class="modal fade" id="upload-dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">选择您需要上传的文件，可以拖拽</h4>
					</div>
					<div class="modal-body">
						<form action="<%=basePath%>/doc/uploadfile.do?"
							id="uploadfileform"  class="dropzone"
							enctype="multipart/form-data">

							<!-- <input type="file" name="file" id="btn_file" multiple> -->
							 
						</form>
						<!--style="display: none"  -->
					</div>
					<div class="modal-footer">
						<!-- <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> -->
						<button type="button" class="btn btn-default" onclick="closeUploadFileDialog()"> 关闭</button>
						<button type="button" class="btn btn-default disabled" id ="submitbutton">上传</button>
						
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
    <!-- 创建文件夹对话框 -->
    <div class="modal fade" id="createfolder-dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">新建文件夹</h4>
					</div>
					<div class="modal-body">
						<form action="<%=basePath%>/doc/createfolder.do?"
							id="uploadfileform"  class="dropzone"
							enctype="multipart/form-data">

							<!-- <input type="file" name="file" id="btn_file" multiple> -->
							 
						</form>
						<!--style="display: none"  -->
					</div>
					<div class="modal-footer">
						<!-- <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> -->
						<button type="button" class="btn btn-default" onclick="closeUploadFileDialog()"> 关闭</button>
						<button type="button" class="btn btn-default disabled" id ="submitbutton">上传</button>
						
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		
    
    <div id="page-content-wrapper">
        <div class="container-fluid">
		
            <!-- Page Heading -->
		<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header" style="height: 50px;margin-top: 10px;">
                        <div class="col-lg-6">
                            <div class="input-group">
                              <input type="text" class="form-control" placeholder="">
                              <span class="input-group-btn">
                                <button class="btn btn-default" type="button">搜索</button>
                              </span>
                            </div><!-- /input-group -->
                          </div><!-- /.col-lg-6 -->
                        <button class="btn btn-primary pull-right"><i class="fa fa-fw fa-plus"></i>&nbsp;新建文件夹</button>
                        <button class="btn btn-primary pull-right" style="margin-right:10px;" onclick="Open_UploadFiledialog()"><i class="fa fa-fw fa-cloud-upload"></i>&nbsp;上传文件</button>

						</h1>
                    <input type="hidden" id="forbreadcrumbpath" value="${breadcrumb.pathStr}" />
                    <input type="hidden" id="forbreadcrumbid" value="${breadcrumb.idStr}" />
                    <input type="hidden" id= "forteam-id" value="${loginteam.teamID }"/>
                    
                    <ol class="breadcrumb">
                        <li >
                            <i class="fa fa-home"></i>文档管理
                        </li>
                        <c:forEach items="${breadPath}" var="iter_path">
                        	<li>
                        		<!-- <i class="fa fa-fw fa-file-photo-o"></i> --> <a class="breadlist" href="getsubfiles.do?">${iter_path }</a> 
                        	</li>
                        </c:forEach>
                    </ol>
                </div>
            </div>
            <!-- /.row -->
            <!-- <div class="row" style="position: relative;">
                <button href="www.baidu.com" class="btn btn-link" style="position:relative; left: 5px; bottom: 5px;">返回上一级</button>
            </div> -->
            <!-- /.row -->
            <table class="table .table-striped" data-toggle="table" data-pagination="true" style="table-layout:fixed">
                <thead>
                    <tr>
                        <th>文件名</th>
                        <th>操作</th>
                        <th>大小</th>
                        <th>上传者</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${fileList}" var="iter_file">
                	<tr>
                		<c:if test="${iter_file.fileType==0 }">
                			<td value="${iter_file.fileID }">
                            <span class="filefolder-icon">
                                <img src="<%=basePath%>/myresources/assets/filefolder.png">
                            </span>
                            <a class="filelist" href="<%=basePath%>/doc/getsubfiles.do?fileID=${iter_file.fileID }&curPath=${iter_file.fileName}"> ${iter_file.fileName }</a>  
                        	</td>
                		</c:if>
                		<c:if test="${iter_file.fileType==1 }">
                			<td value="${iter_file.fileID }">
                            <span class="filefolder-icon">
                                <img src="<%=basePath%>/myresources/assets/file.png">
                            </span>
                            ${iter_file.fileName }
                        	</td>
                		</c:if>
                		<td>
                            <a class="link_icon" href="javascript:void(0)" title="删除" data-toggle="modal" data-target="#deleteModal"
                                >
                                <span class="fa fa-trash yincang" style="float:left">&nbsp;&nbsp;</span>
                            </a>
                            <a class="link_icon" title="下载" href="javascript:void(0)" onclick="downloadfile(this)">
                                <span class="fa fa-cloud-download yincang" style="float:left">&nbsp;&nbsp;</span>
                            </a>

                        </td>
                        <td>${iter_file.fileSize }</td>
                        <td>${iter_file.fileOwner }</td>
                		
                	</tr>
                	
                	</c:forEach>
					</tbody>

            </table>



        </div>
      <!-- /.container-fluid -->
    </div>

    <!-- /#page-wrapper -->
  </div>
  
  <!-- /#wrapper -->

	<!-- jQuery -->
	<script src="<%=basePath%>/myresources/js/jquery.js"></script>
	<script src="<%=basePath%>/myresources/js/online-disk.js"></script>
	<!-- AmaranJS Core -->
	<script src="<%=basePath%>/myresources/js/jquery.amaran.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>/myresources/js/bootstrap.min.js"></script>
	<!-- Bootstrap Table Core -->
	<script src="<%=basePath%>/myresources/js/bootstrap-table.js"></script>
	<script src="<%=basePath%>/myresources/js/bootstrap-table-zh-CN.js"></script>
	<!-- Dropzone 文件上传组件 -->
	<script src="<%=basePath%>/myresources/js/dropzone.js"></script>
</body>
</html>