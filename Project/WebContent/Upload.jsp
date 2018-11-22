<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Page</title>
</head>
<body>
<form action="UploadServlet" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>First Name : </td>
<td>
<input type="text" required="" name="firstname">
</td>
</tr>
<tr>
<td>Last Name : </td>
<td>
<input type="text" required="" name="lastname">
</td>
</tr>
<tr>
<td>Select File : </td>
<td>
<input type="file" required="" name="file">
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
<br></br>
<a href ="List.jsp">View List</a>
</body>
</html>