<%@page import="com.capgemini.bankapp.service.impl.BankAccountServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<th>Account Number</th>
			<th>customer Name</th>
			<th>Account Type</th>
			<th>Account Balance</th>

			<td>
				<%-- <%
					response.setContentType("text/html");
					String path = request.getServletPath();
					BankAccountServiceImpl service=new BankAccountServiceImpl();

					if (path.equals("/getAllBankAccounts.do")) {
						List<BankAccount> bankAccount = service.findAllbankAccounts();
						RequestDispatcher dispatcher = request.getRequestDispatcher("displayDetails.jsp");
						dispatcher.forward(request, response);
					}
					service.findAllbankAccounts();

					accountList = service.findAllbankAccounts();
					for (BankAccount a : accountList) {
						System.out.println(a);

					}
				%>
			 --%>
		</tr>

	</table>



</body>
</html>