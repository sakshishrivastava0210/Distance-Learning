<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<h1>Login Here</h1>
<form action="Confirm.jsp">
<table>
<tr>
<td>Username : </td>
<td>
<input type="text" required="" name="username">
</td>
</tr>
<tr>
<td>Password : </td>
<td>
<input type="password" required="" name="password">
</td>
</tr>
</table>
<br></br>
<input type="submit" value="Submit">
</form>
</body>
</html>