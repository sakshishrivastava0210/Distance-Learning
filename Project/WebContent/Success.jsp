<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page</title>
</head>
<body>
<c:if test="${requestScope.msg!=null}">
<h3><c:out value="${requestScope.msg}"></c:out></h3>
</c:if><br><br>
<c:if test="${sessionScope.firstname!=null}">
<c:set var = "file" scope = "session" value = "${sessionScope.firstname}"/>  
</c:if>
<a href = "Download.jsp"/>Download</a><br></br>
<a href = "List.jsp"/>View List</a>
</body>
</html>
