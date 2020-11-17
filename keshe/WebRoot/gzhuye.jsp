<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gzhuye.jsp' starting page</title>
    
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
	<title>后台管理界面</title>
	<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.js"></script>
  </head>
  
  <body>
       <%
    request.setCharacterEncoding("UTF-8");
    String adminname=(String)session.getAttribute("adminname");
     %>
<div class="bg-light">
    <div class="container" style="height:30px;">
      <font color="red"><% out.print(adminname+"&nbsp&nbsp&nbsp"); %></font>
           欢迎你登录在线车票后台管理系统！<a href="index.jsp">退出</a>
    </div>
</div>
<div style="background-color:#FFCCCC; height: 700px;" class="py-5 ">
            <div class="container bg-light border-top shadow" style="height: ;">
            <div class="row ">
                <div class="col-3 text-center border">
                    <div class="mb-5 text-left border-bottom border-white" style="font-size: 30px;">后台管理系统</div>
                    <div class="mb-5"><a href="gyonghu.jsp">用户信息管理</a></div>
                    <div class="mb-5"><a href="gshoupiao.jsp">车站售票信息管理</a></div>
                    <div class="mb-5"><a href="gtuipiao.jsp">退票情况管理</a></div>
                </div>
                <div class="col-9 bg-white">
                   <div>
                       <img src="images/laba.png" alt="laba">
                   </div>
                   <div class="border p-3">
                       <p>欢迎您登录在线车票系统后台管理。</p>
                       <p class="text-danger">温馨提示：<br>1、请勿随意更该车站信息，必须根据所拿到的数据更改，否则将按照铁路有关条例处罚。<br>
                       2、请勿随意删除或更改用户信息，严格遵守管理员守则。</p>
                   </div>
                </div>
            </div>
            </div>
        </div>
  </body>
</html>
