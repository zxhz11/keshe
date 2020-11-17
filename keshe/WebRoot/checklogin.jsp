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
    
    <title>My JSP 'checklogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    request.setCharacterEncoding("UTF-8");
    String username=request.getParameter("myname");
    session.setAttribute("myname",username);
    String password=request.getParameter("pwd");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/chezhan","root","00923zxh."); 
	if(conn!=null){
		String sql="select * from user where name='"+username+"' and password='"+ password + "'";
		out.println("sql="+sql);
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
        if(rs.next()){
			out.println("<script language='javascript'>alert('登录成功！');</script>");
			response.sendRedirect("zhuye.jsp");
		}
		else{
			 out.println("<script language='javascript'>alert('登录失败！');window.location.href='index.jsp';</script>");//密码不对返回到登陆
		}
	}
	else{
		out.println("<script language='javascript'>alert('数据库连接失败！');</script>");
		response.sendRedirect("index.jsp");//密码不对返回到登陆
	}
     %>
  </body>
</html>
