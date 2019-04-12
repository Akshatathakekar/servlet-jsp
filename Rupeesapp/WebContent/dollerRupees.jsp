<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table style="boder: 20px">
		<tr>
			<th>Doller</th>
			<th>Indian Rupees</th>
		</tr>

		<c:forEach var="i" begin="1" end="50" step="1">
			<tr>
				<td>${i}</td>

				<td>${i*45}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>