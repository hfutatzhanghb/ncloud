<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme() + "://"
  + request.getServerName() + ":" + request.getServerPort()
  + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试Jquery</title>
</head>
<body>

<input type="hidden" value="123">
<a href="www.baidu.com">测试超链接</a>
<script src="<%=basePath%>/myresources/js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	
	var value1 = $("input").prop("value");
	alert(value1);
	$("a").attr("href",$("a").attr("href")+value1);
	
});

</script>
</body>
</html>