<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'glogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>管理员登录页面</title>
	<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.js"></script>
  </head>
  <script type="text/javascript">
	function addcheck() {
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		if (username == "") {
			alert("用户名不能为空!");
			return false;
		} else if (password == "") {
			alert("密码不能为空!");
			return false;
		    }
		    return false;
	}
</script>
  <body>
<div class="bg-secondary pt-5" style="height: 100%; width: 100%;">
    <div class="mx-auto border shadow bg-white" style="height: 350px;width: 300px; ">
		<h3 class="text-center my-4">管理员登录</h3>
		<form action="checkglogin.jsp" accept-charset="UTF-8" method="post">
		<div class="mb-4 pl-3">
			用&nbsp&nbsp户&nbsp&nbsp名：<input type="text" name="adminname" id="adminname" placeholder="输入您的用户名" maxlength="16" onfocus="if(this.value == '输入您的用户名') this.value =''">
		</div>
		<div class="mb-4 pl-3">
			密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：<input type="password"  placeholder="输入您的密码" id="password" name="password" maxlength="20" onfocus="if(this.value == '输入您的密码') this.value =''">
		</div>
		<div class="text-center mb-4">
			<input type="submit" name="commit" value="登录" class="btn btn-primary" onclick="return addcheck()">
		</div>
		<div class="text-center">
			<a class="btn btn-primary" href="index.jsp">取消</a>
		</div>
		</form>
	</div>
</div>
  </body>
</html>
