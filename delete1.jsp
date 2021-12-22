<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String n=request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver");  
Connection con= 
DriverManager.getConnection("jdbc:mysql://localhost:3306/kmit","root","root");
PreparedStatement ps=con.prepareStatement( "delete from userjsp where name=?");  
ps.setString(1,n);       
int i=ps.executeUpdate();  
try
{
if(i>0)  
{
response.sendRedirect("index.jsp");
}
}catch (Exception e2) {System.out.println(e2);}  
%>   
</body>
</html>