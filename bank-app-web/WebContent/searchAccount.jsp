<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
	<br>
	
		<b><h2>Your Account Details</h2></b>

	<br>
	<br>
	<div class="container">

		<table class="table" border="20px" bgcolor="#fbeddb">
			<thead class="thead-dark">
				<tr>
					<th>Account no</th>
					<th>Customer Name</th>
					<th>Account Type</th>
					<th>Account Balance</th>
				</tr>
			</thead>
			<tbody>
				
					<tr>
						<td>${account.accountId}</td>   <!--account is a key which is given in setAttribute()  -->
						<td>${account.accountHolderName}</td>
						<td>${account.accountType}</td>
						<td>${account.accountbalance}</td>

					</tr>
				


			</tbody>
		</table>
	</div>

</body>
</html>