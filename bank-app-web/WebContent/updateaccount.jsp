<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
.col-sm-10 {
	width: 50%;
}

.container {
	background-color: #fbeddb;
	width: 60%;
}

.but {
	align-self: center;
}

</style>
</head>

<body>
	<p>
		<img src="images/xyz.png" height="50"> &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b> <a
			href="main_index.html">Home</a></b>&nbsp; &nbsp; &nbsp; <b> About Us</b>&nbsp;
		&nbsp; &nbsp; <b>Contact </b>&nbsp; &nbsp; &nbsp; <b>Customer Care</b>

	</p>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">

			<li class="nav-item active"><a class="nav-link"
				href="create_acc.html">New Account</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="withdraw.html">Withdraw</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="Deposit.html">Deposit</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="transferFund.html">Fund Transfer</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="checkbal.html">Check balance</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="details.html">Details</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="searchAccount.html">Search Account</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="deleteAccount.html">Delete Account</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="updateAccount.html">Update Account</a></li>



		</ul>
	</nav>
</head>
<body>
<br>
	<form action="newUpdate.do" method="post">
		Account Number   <input type="text" name="accountnumber"
			value="${account.accountId}" readonly="readonly"><br>
		
		<br> Customer name<input type="text" name="customername"
			value="${account.accountHolderName}"><br>
		
		<br> Account Type   <select name="accounttype">
		<option>${account.accountType}</option>
			<option value="saving">Saving Account</option>
			<option value="current">Current account</option>

		</select>
		 <br>
		<br> Account Balance   <input type="text" name="accountbalance"
			value="${account.accountbalance}" readonly="readonly"><br>
		<br> <input type="submit" value="Update">
	</form>
</body>
</html>