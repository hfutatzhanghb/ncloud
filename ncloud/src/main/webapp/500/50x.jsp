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
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>500 ERROR</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" media="screen" href="<%=basePath%>500/main.css" />
  <script src="<%=basePath%>500/main.js"></script>
</head>
<body>
  <div class="wrap">
    <div class="row_flex">
      <div class="message">
        <h1>
          <span>500</span>
          <br>
          Server error
        </h1>
        <p>看什么！！<a href="http://limonplayer.cn">赶紧回去</a></p>
      </div>
      <div class="scene">
        <img src="scene.png">
        <div class="charecter">
          <img src="charecter.png" alt="charecter">
          <div class="hand">
            <img src="charecter-4-hand-part.png" alt="hand">
          </div>
          <div class="eye">
            <img src="charecter-4-eye.gif" alt="eye">
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>