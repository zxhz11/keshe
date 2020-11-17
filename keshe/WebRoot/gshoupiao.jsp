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
    
    <title>My JSP 'gshoupiao.jsp' starting page</title>
    
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
                       <div class="text-center border-bottom py-3 font-weight-bold">站点信息管理</div>
                       <div class="text-center pt-2">
                           <form>
                                                      站点名称：<input type="text" name="zhandian">&nbsp&nbsp&nbsp<input type="submit" value="查询">&nbsp&nbsp&nbsp<input type="button" value="添加">
                           </form>
                       </div>
                       <div>
                       <table class="table table-bordered"> 
                       <thead class="table-primary">
                            <tr><th>ID</th><th>站点名称</th><th>修改</th><th>删除</th></tr>
                       </thead>
                       <tbody>
                       <%
                       request.setCharacterEncoding("UTF-8");
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/chezhan","root","00923zxh.");
                       Statement stat=conn.createStatement();
                       String sql="select * from zhandian";
                       ResultSet rs=stat.executeQuery(sql);
                       while(rs.next())
                       {
                       int id=rs.getInt(1);
                       String zhanname=rs.getString(2);
                       %>
                       <tr>
                           <td><%out.print(id); %></td> <td><%out.print(zhanname); %></td><td><a href="">修改</a></td><td><a href="">删除</a></td>
                       </tr>
                       <%
                         }
                           stat.close();
                           conn.close();
                       
                        %>
                         </tbody>
                       </div>
                   </div>
                </div>
            </div>
            
        </div>
  </body>
</html>