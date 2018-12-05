<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>核安全领域云</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Lambent Login Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min5aaf.css?v=v8_1_26"/>
		<link rel="stylesheet" type="text/css" href="./resources/css/umt20135aaf.css?v=v8_1_26"/>
		<link rel="stylesheet" href="./resources/css/style.css">
</head>
<body >
<div class="navbar navbar-inverse navbar-fixed-top nav-bar fix-top">
		<div class="navbar-inner" style="background-image:-webkit-gradient(linear,0 0,0 100%,from(#005bcc),to(#111))">
			<div class="container" style="width:100%">
				<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </button>
		        <div class="logoDiv">
					<a class="duckling-logo logo"></a>
					<a class="logo" href="/ncloud/index"><span class="logo-title">中国核安全科技领域云</span></a>
				</div>
				<div class="nav-collapse collapse">
					<ul class="nav-right">
				<li id="banner_regist"> <a tabindex=10 href="/ncloud/index" >注册</a></li>
			        </ul>
					<ul class="nav">
						<li id="banner_index"><a href="/ncloud/index">首页</a></li>
						<!-- <li id="banner_forgot_password"><a  href="findPsw8cb8.html?act=stepOne" class="small_link forgetpsw">找回密码</a></li> -->
					</ul>
				</div>
			</div>
		</div>
	</div>
	<h1></h1>
	<div class="main-agileinfo">
		<h2>现在登录</h2>
		<form action="/ncloud/index" method="post">
		    <input type="hidden" name="captcha" value="1234">
			<input type="text" name="userName" class="name" placeholder="用户名" required="">
			<input type="password" name="password" class="password" placeholder="密码" required="">
			<ul>
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>记得我</label>
				</li>
			</ul>
            <a href="/ncloud/index">忘记密码?
          </a><br>
			<div class="clear"></div>
			<input type="submit" value="Login"  style="margin-bottom:20px;">
			<!-- <ul>
				<li>
					<label for="brand1" style="color:white;"><span></span>第三方登录</label>
				</li>
			</ul> -->
			 <a href="javascript:void(0);" onclick="kejiyun()"><image src="./resources/images/linkin-24.png"></image></a>
		</form>
	</div>
	<div class="footer-w3l">
		<p class="agile"> &copy;核安全研究所</a></p>
	</div>
	
<script>
var basePath='${basePath}';
function kejiyun(){
	window.open(basePath+"/oauth",'_self');
}
</script>
</body>
</html>