<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuye.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.js"></script>
  </head>
  
  <body>
    <%
    request.setCharacterEncoding("UTF-8");
    String username=(String)session.getAttribute("myname");
     %>
<div class="bg-light">
    <div class="container" style="height:30px;">
      <font color="red"><% out.print(username+"&nbsp&nbsp&nbsp"); %></font>
           欢迎你登录在线车票系统！<a href="index.jsp">退出</a>
    </div>
</div>
<div style="background-color:#CCFFFF; height: 700px;" class="py-5 ">
            <div class="container bg-light border-top shadow" style="height: ;">
            <div class="row ">
                <div class="col-3 text-center border">
                    <div class="mb-5 text-left border-bottom border-white" style="font-size: 30px;">个人中心</div>
                    <div class="mb-5"><a href="chaxun.jsp">车票信息</a></div>
                    <div class="mb-5"><a href="dingdan.jsp">我的订单</a></div>
                    <div class="mb-5"><a href="tuipiao.jsp">退票</a></div>
                    <div class="mb-5"><a href="liuyan.jsp">发布留言</a></div>
                    <div class="mb-5"><a href="chakanly.jsp">查看留言</a></div>
                </div>
                <div class="col-9 bg-white">
                   <div>
                       <img src="images/laba.png" alt="laba">
                   </div>
                   <div class="border p-3">
                       <p>欢迎您登录中国铁路客户服务中心网站。</p>
                       <p class="text-danger">如果您的密码在其他网站也使用，建议您修改本网站密码。
根据有关部门要求，为加强新冠肺炎疫情防控工作，确保在需要时及时联系乘车旅客，同时也便于向旅客发送电子客票乘车席位等服务信息，自2月1日起，购票人须提供每一名乘车旅客本人使用的手机号码，为了方便您为他人购票，请您提前填报并通知乘车旅客协助核验。对于未成年人、老年人等重点旅客以及无手机的旅客，可提供监护人或能及时联系的亲友手机号码，港澳台旅客、外籍旅客可提供电子邮箱。铁路部门将依法保护旅客个人信息安全。</p>
                   </div>
                </div>
            </div>
            </div>
        </div>
  </body>
</html>
