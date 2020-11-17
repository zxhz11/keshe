<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
String cheid=request.getParameter("a");
String uname=request.getParameter("b");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/chezhan","root","00923zxh.");
Statement stat=conn.createStatement();
Statement cstat=conn.createStatement();
String sql="select * from chepiao where id='"+cheid+"'";
ResultSet rs=stat.executeQuery(sql);
while(rs.next())
{
String id=rs.getString(1);
String checi=rs.getString(2);
String s=rs.getString(3);
String e=rs.getString(4);
String time=rs.getString(5);
String price=rs.getString(6);
String zuowei=rs.getString(7);
String type=rs.getString(8);
String d=rs.getString(9);
String sql2="insert into dingdan(id,checi,start,end,time,price,zuowei,type,date,name) values('"+id+"','"+checi+"','"+s+"','"+e+"','"+time+"','"+price+"','"+zuowei+"','"+type+"','"+d+"','"+uname+"')";
int b=cstat.executeUpdate(sql2);
if(b!=0){
out.println("<script language='javascript'>alert('订票成功！');window.location.href='dingdan.jsp';</script>");}
else{
out.println("<script language='javascript'>alert('订票失败！');window.location.href='dingdan.jsp';</script>");}
}
stat.close();
cstat.close();
conn.close();
%>