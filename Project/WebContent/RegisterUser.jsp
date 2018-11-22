<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String id=request.getParameter("username");
String pwd=request.getParameter("password");
String fname=request.getParameter("firstname");
String lname=request.getParameter("lastname");
String state=request.getParameter("state");
String gender=request.getParameter("gender");
String category=request.getParameter("category");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/upload","root","root@123");
System.out.println("Connected");
Statement st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into register values('"+id+"','"+pwd+"','"+fname+"','"+lname+"','"+state+"','"+gender+"','"+category+"')");
response.sendRedirect("http://localhost:8083/Project/Home.jsp");
%>
</body>
</html>