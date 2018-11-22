<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<h1>Register Here</h1>
<form action="RegisterUser.jsp">
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
<tr>
<td>State : </td>
<td>
<input type="text" required="" name="state">
</td>
</tr>
<tr>
<td>Gender : </td>
<td>     
<select name="gender">
            <option>Male</option>
            <option>Female</option>
            </select>
            </td>
            </tr>
<tr>
<td>Category : </td> 
<td>
<input type="radio" name="category" required="" value="student" />Student
<input type="radio" name="category" required="" value="faculty" />Faculty
</td>
</tr>
</table>
<br></br>
<input type="submit" value="Submit" name="submit" />
</form>
</body>
</html>