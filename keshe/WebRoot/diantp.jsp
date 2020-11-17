<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
String cheid=request.getParameter("a");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/chezhan","root","00923zxh.");
Statement stat=conn.createStatement();
Statement cstat=conn.createStatement();
Statement ccstat=conn.createStatement();
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
String sql2="insert into tuipiao(id,checi,start,end,time,price,zuowei,type,date) values('"+id+"','"+checi+"','"+s+"','"+e+"','"+time+"','"+price+"','"+zuowei+"','"+type+"','"+d+"')";
cstat.executeUpdate(sql2);
}
String sql3="delete from dingdan where id='"+cheid+"'";
int b=ccstat.executeUpdate(sql3);
if(b!=0){
out.println("<script language='javascript'>alert('退票成功！');window.location.href='dingdan.jsp';</script>");}
else{
out.println("<script language='javascript'>alert('退票失败！');window.location.href='dingdan.jsp';</script>");}
stat.close();
cstat.close();
ccstat.close();
conn.close();
%>