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
    
    <title>My JSP 'liuyan.jsp' starting page</title>
    
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
                <div class="col-2 text-center border">
                    <div class="mb-5 text-left border-bottom border-white" style="font-size: 30px;">个人中心</div>
                    <div class="mb-5"><a href="chaxun.jsp">车票信息</a></div>
                    <div class="mb-5"><a href="dingdan.jsp">我的订单</a></div>
                    <div class="mb-5"><a href="tuipiao.jsp">退票</a></div>
                    <div class="mb-5"><a href="liuyan.jsp">发布留言</a></div>
                    <div class="mb-5"><a href="chakanly.jsp">查看留言</a></div>
                </div>
                <div class="col-10 bg-white">
                    <div class="text-center border-bottom py-3 font-weight-bold">留言板</div>
                    <div class="py-3">
                        <form action="" method="post" name="form">
                         <div class="m-3">留言标题：<input type="text" name="title"></div>
                         <div class="m-3">留言：
                         <textarea name="message" rows="10" cols="40">
                         </textarea></div>
                         <input type="submit" value="提交" class="m-3">
                         </form>
                          <%
                          request.setCharacterEncoding("UTF-8");
                          String title=request.getParameter("title");
                          String message=request.getParameter("message");
                          if(title!=null && message!=null){
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/chezhan","root","00923zxh.");
                          Statement stat=conn.createStatement();
                          String sql="insert into liuyan(name,title,message) values('"+username+"','"+title+"','"+message+"')";
                          int s=stat.executeUpdate(sql);
                          if(s!=0){
                          out.println("<script language='javascript'>alert('留言成功！');window.location.href='chakanly.jsp';</script>");}
                          else{
                          out.println("<script language='javascript'>alert('留言失败！');window.location.href='liuyan.jsp';</script>");}
                          }
                           %>
                    </div>
                </div>
            </div>
            </div>
        </div>
  </body>
</html>
