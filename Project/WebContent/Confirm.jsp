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
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/upload","root","root@123");
System.out.println("Connected");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select * from register where id='"+id+"'");
if(rs.next())
{
	if(rs.getString(2).equals(pwd))
	{
		response.sendRedirect("http://localhost:8083/Project/Welcome.jsp");
	}
	else
	{
		out.println("Invalid username or password!");
	}
}
%>
</body>
</html>