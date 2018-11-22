<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
<style>
            tr,td,th
            {
                padding: 20px;
                text-align: center;
            }
</style>
</head>
<body>
<%!
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
%>
<table border="2">
<tr>
<th>First Name</th><th>Last Name</th><th>Path</th><th>Added Date</th><th>Download</th>
</tr>
<%
con = Database.getConnection();
String sql = "select * from record";
ps = con.prepareStatement(sql);
rs = ps.executeQuery();
while (rs.next()) {
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getTimestamp(4)%></td>
<td><a href="DownloadServlet?fileName=<%=rs.getString(3)%>">Download</a></td>
</tr>
<%
}
%>
</table>
<br></br>
<a href="Home.jsp">Home</a>
</body>
</html>