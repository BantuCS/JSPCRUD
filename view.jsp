<%@page import="java.sql.ResultSet"%>
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
Class.forName("com.mysql.jdbc.Driver");  
Connection con= 
DriverManager.getConnection("jdbc:mysql://localhost:3306/kmit","root","root"); 
PreparedStatement ps=con.prepareStatement("select * from userjsp");  
ResultSet rs=ps.executeQuery(); 
out.println("<h1> List</h1>");
while(rs.next())
{
	out.print(rs.getString(1)+" "+rs.getString(2)+"<br>");
}
%>
</body>
</html>