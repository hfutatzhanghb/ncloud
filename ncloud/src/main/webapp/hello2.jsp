<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试JSP加载时调用controller</title>
<script src="myresources/js/jquery.js"></script>
<script type="text/javascript">
function a(){
	$.ajax({
		url:"test.do",
		type:"POST",
		data:{teamID: "1"},
		async:false,
		success:function(e){
			alert("servlet调用成功");
		},
		error:function(e){
			alert("调用失败");
		}
	});
}
</script>
</head>
<body onload="a()">
	
	${requestScope.test123}
	</br> Test OK
</body>
</html>