<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Response Page</title>
</head>
<body>
<h1><%= request.getParameter("class") %></h1>
<form action="Action.jsp">
Select course : <select name="course">
<option>Mathematics</option>
<option>Chemistry</option>
<option>Physics</option>
<option>History</option>
<option>Economics</option>
<option>Political Science</option>
<option>Geography</option>
</select>
<br></br>
<input type="submit" value="Submit">
</form>
</body>
</html>