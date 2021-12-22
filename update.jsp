<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="update1.jsp" method="post">  
Name:<input type="text" name="name"/><br/><br/>  
Branch:<input type="text" name="branch"/><br/><br/>  
<input type="submit" value="register"/>  
</form>
</body>
</html>