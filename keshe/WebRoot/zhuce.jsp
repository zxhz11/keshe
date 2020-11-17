<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>My JSP 'zhuce.jsp' starting page</title>
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
	<title>注册页面</title>
	<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.js"></script>
</head>
<script type="text/javascript">
	function addcheck() {
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		var idcode = document.getElementById("idcode").value;
		var phone = document.getElementById("phone").value;
		if (username == "") {
			alert("用户名不能为空!");
			return false;
		} else if (password == "") {
			alert("密码不能为空!");
			return false;
		    }else if (idcode=="") {
			alert("身份证号不能为空！");
			return false;
		    } else if(phone==""){
		    alert("手机号不能为空！");
		    return false;
		    } else if(idcode.length!=17){
		    alert("身份证号格式不正确！");
		    return false;
		    } else if(phone.length!=11){
		    alert("手机号格式不正确！");
		    return false;
		    }
		    
	}
</script>
<body>
	<div class="mx-auto mt-5 border shadow" style="height: 350px;width: 300px; ">
		<h3 class="text-center my-3">注册新用户</h3>
		<form action="checkzhuce.jsp" accept-charset="UTF-8" method="post">
		<div class="mb-3 pl-3">
			用&nbsp&nbsp户&nbsp&nbsp名：<input type="text" name="username" id="username" placeholder="输入您的用户名" maxlength="16" onfocus="if(this.value == '输入您的用户名') this.value =''">
		</div>
		<div class="mb-3 pl-3">
			密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码：<input type="password"  placeholder="输入您的密码" id="password" name="password" maxlength="20" onfocus="if(this.value == '输入您的密码') this.value =''">
		</div>
		<div class="mb-3 pl-3">
			身份证号：<input type="text" id="idcode" placeholder="请输入身份证号" name="idcode" maxlength="17" onfocus="if(this.value == '请输入身份证号') this.value =''">
		</div>
        <div class="mb-3 pl-3">
			手&nbsp&nbsp机&nbsp&nbsp号：<input type="text" placeholder="请输入手机号" id="phone" name="phone" maxlength="11" onfocus="if(this.value == '请输入手机号') this.value =''">
		</div>
		<div class="text-center mb-3">
			<input type="submit" name="commit" value="注册" class="btn btn-primary" onclick="return addcheck()">
		</div>
		<div class="text-center">
			<a class="btn btn-primary" href="index.jsp">取消</a>
		</div>
		</form>
	</div>

</body>

</html>