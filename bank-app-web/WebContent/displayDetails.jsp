<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid rgb(204, 204, 204);
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 25%;
	background-color: rgb(211, 27, 27);
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	display: block;
	margin: 0 auto;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	border-radius: 5px;
	background-color: #fbeddb;
	padding: 20px;
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
			<li class="nav-item active"><a class="nav-link"
				href="details.html">Details</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="searchAccount.html">Search Account</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="deleteAccount.html">Delete Account</a></li>
			<li class="nav-item active"><a class="nav-link "
				href="updateAccount.html">Update Account</a></li>




		</ul>
	</nav>
	<br>
	<br>
	<center>
		<b><h2>Your Account Details</h2></b>
	</center>
	<br>
	<br>
	<div class="container">

		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Account no</th>
					<th>Customer Name</th>
					<th>Account Type</th>
					<th>Account Balance</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="account" items="${accounts}">
					<tr>
						<td>${account.accountId}</td>
						<td>${account.accountHolderName}</td>
						<td>${account.accountType}</td>

						<td>${account.accountbalance}</td>

					</tr>
				</c:forEach>


			</tbody>
		</table>
	</div>

</body>
</html>
