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
    
    <title>My JSP 'checkzhuce.jsp' starting page</title>
    
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
    String user=request.getParameter("username");
    String pwd=request.getParameter("password");
    String idcode=request.getParameter("idcode");
    String phone=request.getParameter("phone");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/chezhan","root","00923zxh."); 
    out.println("<script language='javascript'>alert('数据库连接成功！');</script>"); 
    PreparedStatement pStmt = conn.prepareStatement("select * from user where name = '" + user + "'");  
    ResultSet rs = pStmt.executeQuery();  			
	if(rs.next()){  
         out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='zhuce.jsp';</script>");  
    }
	else{  
          PreparedStatement tmt = conn.prepareStatement("Insert into user values('" + user + "','" + pwd + "','" + idcode + "','" + phone + "')");  
          int rst = tmt.executeUpdate();  
          if (rst != 0){  
                out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='index.jsp';</script>");    
          }
          else{  
               out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='zhuce.jsp';</script>");    
          }  
      }
    %>
  </body>
</html>
