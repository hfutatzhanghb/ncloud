<%@page import="cn.cloud.kysq.doc.entity.File_detail"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% List<File_detail> list = (List)request.getAttribute("filelist"); %>   
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	
    <title>文档管理</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">文档管理</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                   <!--  <li>
                        <a href="#"><i class="fa fa-fw fa-folder"></i> &nbsp;全部文件</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-files-o"></i> 文档</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-file-photo-o"></i> &nbsp;图片</a>
                    </li>
                    <li class="active">
                        <a href="#"><i class="fa fa-fw fa-file-audio-o"></i>  &nbsp;音频</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-file-video-o"></i> &nbsp;视频</a>
                    </li> -->
                    
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-folder"></i> 全部文件 <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse in">
                            <li>
                                 <a href="#"><i class="fa fa-fw fa-files-o"></i> 文档</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-file-photo-o"></i> &nbsp;图片</a>
                            </li>
                            <li class="active">
                                <a href="#"><i class="fa fa-fw fa-file-audio-o"></i>  &nbsp;音频</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-file-video-o"></i> &nbsp;视频</a>
                            </li>
                                </ul>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-fw fa-trash"></i> &nbsp;回收站</a>
                    </li>
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header" style="height: 50px">
                            
                            <button class="btn btn-primary pull-right"><i class="fa fa-fw fa-plus"></i>&nbsp;新建文件夹</button>
                            <button class="btn btn-primary pull-right" style="margin-right:10px; "><i class="fa fa-fw fa-cloud-upload"></i>&nbsp;上传文件</button>
                            
                            
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-home"></i>  <a href="#">文档管理</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-fw fa-file-photo-o"></i> 文档
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row" style="position: relative;">
                    <button class="btn btn-link" style="position:relative; left: 5px; bottom: 5px;">返回上一级</button>
                </div>
                <!-- /.row -->
                <table class="table .table-striped" style="table-layout:fixed" >
                    <thead>
                        <tr>
                            <th>文件名</th>
                            <th></th>
                            <th>大小</th>
                            <th>上传者</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${list}" var="item">
                    		<tr>
                    			
                    		</tr>
                    	</c:forEach>
                        <tr>
                            <td>test1.doc</td>
                            <td>
                                <span class="fa fa-refresh yincang" title="重命名" style="float:left" data-toggle="modal" data-target="#modifyModal"> &nbsp;&nbsp;</span>
                                <a href="javascript:void(0)" title="删除"  data-toggle="modal" data-target="#deleteModal" class="acolor">
                                    <span class="fa fa-trash yincang" style="float:left">&nbsp;&nbsp;</span>
                                </a>
                                <a href="javascript:void(0)" title="分享" class="acolor" data-toggle="modal" data-target="#shareModal">
                                    <span class="fa fa-share-alt yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>
                                <a title="下载" href="#" class="acolor">
                                     <span class="fa fa-cloud-download yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>

                            </td>
                            <td>120k</td>
                            <td>小北觅</td>
                        </tr>
                        <tr>
                            <td>test1.doc</td>
                            <td>
                                <span class="fa fa-refresh yincang" title="重命名" style="float:left" data-toggle="modal" data-target="#modifyModal"> &nbsp;&nbsp;</span>
                                <a href="javascript:void(0)" title="删除"  data-toggle="modal" data-target="#deleteModal" class="acolor">
                                    <span class="fa fa-trash yincang" style="float:left">&nbsp;&nbsp;</span>
                                </a>
                                <a href="javascript:void(0)" title="分享" class="acolor" data-toggle="modal" data-target="#shareModal">
                                    <span class="fa fa-share-alt yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>
                                <a title="下载" href="#" class="acolor">
                                     <span class="fa fa-cloud-download yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>

                            </td>
                            <td>120k</td>
                            <td>小北觅</td>
                        </tr>
                        <tr>
                            <td>test1.doc</td>
                            <td>
                                <span class="fa fa-refresh yincang" title="重命名" style="float:left" data-toggle="modal" data-target="#modifyModal"> &nbsp;&nbsp;</span>
                                <a href="javascript:void(0)" title="删除"  data-toggle="modal" data-target="#deleteModal" class="acolor">
                                    <span class="fa fa-trash yincang" style="float:left">&nbsp;&nbsp;</span>
                                </a>
                                <a href="javascript:void(0)" title="分享" class="acolor" data-toggle="modal" data-target="#shareModal">
                                    <span class="fa fa-share-alt yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>
                                <a title="下载" href="#" class="acolor">
                                     <span class="fa fa-cloud-download yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>

                            </td>
                            <td>120k</td>
                            <td>小北觅</td>
                        </tr>
                        <tr>
                            <td>test1.doc</td>
                            <td>
                                <span class="fa fa-refresh yincang" title="重命名" style="float:left" data-toggle="modal" data-target="#modifyModal"> &nbsp;&nbsp;</span>
                                <a href="javascript:void(0)" title="删除"  data-toggle="modal" data-target="#deleteModal" class="acolor">
                                    <span class="fa fa-trash yincang" style="float:left">&nbsp;&nbsp;</span>
                                </a>
                                <a href="javascript:void(0)" title="分享" class="acolor" data-toggle="modal" data-target="#shareModal">
                                    <span class="fa fa-share-alt yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>
                                <a title="下载" href="#" class="acolor">
                                     <span class="fa fa-cloud-download yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>

                            </td>
                            <td>120k</td>
                            <td>小北觅</td>
                        </tr>
                        <tr>
                            <td>test1.doc</td>
                            <td>
                                <span class="fa fa-refresh yincang" title="重命名" style="float:left" data-toggle="modal" data-target="#modifyModal"> &nbsp;&nbsp;</span>
                                <a href="javascript:void(0)" title="删除"  data-toggle="modal" data-target="#deleteModal" class="acolor">
                                    <span class="fa fa-trash yincang" style="float:left">&nbsp;&nbsp;</span>
                                </a>
                                <a href="javascript:void(0)" title="分享" class="acolor" data-toggle="modal" data-target="#shareModal">
                                    <span class="fa fa-share-alt yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>
                                <a title="下载" href="#" class="acolor">
                                     <span class="fa fa-cloud-download yincang" style="float:left">&nbsp;&nbsp;</span>
                                 </a>

                            </td>
                            <td>120k</td>
                            <td>小北觅</td>
                        </tr>
                    </tbody>
    
                </table>



            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>