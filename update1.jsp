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
String n1=request.getParameter("name");
String b2=request.getParameter("branch");
Class.forName("com.mysql.jdbc.Driver");  
Connection con= 
DriverManager.getConnection("jdbc:mysql://localhost:3306/kmit","root","root");
PreparedStatement ps=con.prepareStatement("update userjsp set branch=? where name=?");  
ps.setString(1,n1);  
ps.setString(2,b2);      
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