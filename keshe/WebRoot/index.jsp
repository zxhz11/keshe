<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
	<title>登录页面</title>
	<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.js"></script>
  </head>
  <script type="text/javascript">
    function validatelogin() {
        var myname =document.getElementById("myname").value; 
        var pwd = document.getElementById("pwd").value;
        if ((myname == "") || (myname == "用户名")) {
            alert("请输入用户名!");
            return false;
        }
        if ((pwd == "") || (pwd == "密码")) {
            alter("请输入密码！");
            return false;
          }
    }
</script>

  <body>
     <div style="height: 50px;" class="container clearfix mb-3">
            <div class="float-left" style="height: 50px; width: 50px;"><img src="images/logo.png" alt="tielu"></div>
            <div class="text-primary float-left ml-5 mt-3">欢迎登录车站在线管理系统！</div>
    </div>
    <div style="background-image: url(images/beijing.jpg)">
      <div style="height: 650px;" class="container clearfix">
        <div style="height: 480px; width: 440px;" class="float-right shadow text-white mt-5">
            <form action="checklogin.jsp" method="post" name="frmLogin">
                <div class="row py-3"> 
                    <div class="col-6 pl-5 border-right"><a href="glogin.jsp">管理员登录</a></div>
                    <div class="col-6 pl-5 ">用户登录</div>
                </div>
                <div class="py-3 pl-5">用户名：<input type="text" placeholder="用户名"name="myname" id="myname" maxlength="16" onfocus="if(this.value == '用户名') this.value =''"></div>
                <div class="py-3 pl-5">密&nbsp&nbsp&nbsp&nbsp码：<input type="password" placeholder="密码" name="pwd" id="pwd" maxlength="20" onfocus="if(this.value == '密码') this.value =''"></div>
                <div class="pl-4 py-3"><input type="submit" value="立即登录" class="bg-warning border rounded text-white" style="width: 400px;" onclick="return validatelogin()"></div>
                <div class="pl-4 py-3"><input type="button" value="注册账号" class="bg-warning border rounded text-white" style="width: 400px;" onclick="window.open('zhuce.jsp')"></div>
                <div class="border-top py-3 px-3 text-light">1、网站每日06:00~23:30提供服务。<br>
                    2、网站购票、改签和退票须不晚于开车前25分钟；办理“变更到站”业务时，请不晚于开车前48小时。</div>
            </form>
        </div>
       </div>
    </div>
    <div style="height: 50px;" class="bg-secondary text-light">
    <p class="text-center py-3">版权所有©2008-2019&nbsp&nbsp&nbsp中国铁道科学研究院集团有限公司</p>
    </div>
  </body>
</html>
