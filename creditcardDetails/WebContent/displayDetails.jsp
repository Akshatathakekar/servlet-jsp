<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th>Customer Name</th>
<th>Card Number</th>
<th>Credit Limit</th>
</tr>
<tr>
<td>${customerName}</td>
<td>${number}</td>
<td>${limit}</td>

</tr>
</table>
</body>
</html>