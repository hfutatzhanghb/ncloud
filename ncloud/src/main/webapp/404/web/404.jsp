<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme() + "://"
  + request.getServerName() + ":" + request.getServerPort()
  + path + "/";
%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<head>
		<title>404</title>
		<meta name="keywords" content="404 iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<link href="<%=basePath%>/404/web/css/style.css" rel="stylesheet" type="text/css"  media="all" />
	</head>
	<body>
		<!--start-wrap--->
		<div class="wrap">
			<!---start-header---->
				<div class="header">
					<div class="logo">
						<h1><a href="#">Ohh! No</a></h1>
					</div>
				</div>
			<!---End-header---->
			<!--start-content------>
			<div class="content">
				<img src="<%=basePath%>/404/web/images/error-img.png" title="error" />
				<p><span><label>O</label>hh.....</span>You Requested the page that is no longer There.</p>
				<a href="#">返回主页</a>
				<div class="copy-right">
					<p>&#169 All rights Reserved | Designed by <a href="http://w3layouts.com/">W3Layouts</a></p>
				</div>
   			</div>
			<!--End-Cotent------>
		</div>
		<!--End-wrap--->
	</body>
</html>

