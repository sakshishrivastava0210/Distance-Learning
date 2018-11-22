<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
<h1>Welcome!</h1>
<form action="Response.jsp"> 
Select class whose study material you want to upload or download
<br></br>
<select name="class">
<option>Class 9</option>
<option>Class 10</option>
<option>Class 11</option>
<option>Class 12</option>
</select>
<br><br/>
<input type="submit" value="Submit">
</form>
</body>
</html>