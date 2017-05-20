<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="MyStyle.css">
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="InsurembrellaStyle.css" rel="stylesheet" type="text/css" />
<title>Login</title>
</head>
<body>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><img
				style="max-width: 100px; margin-top: -16px; margin-left: -16px; height: 52px;"
				src="./img/Santam.PNG"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="CustomerRegistrationForm.jsp">Customer
						Registration</a></li>
				<li><a href="InsuranceInquiryAuto.jsp">Auto Insurance</a></li>
				<li><a href="InsuranceInquiryProperty.jsp">Property
						Insurance</a></li>
				<li><a href="#">Reports</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="col-lg-12 well">
			<div class="row">

				<div class="wrapper">
					<div id="content">
						<div id="maluluza">
							<center>
								<form action="AgentLogin" method="post">
									<fieldset>
										<legend>
											<h3 align="center">Login Page</h3>
										</legend>
										<table>
											<tr>
												<td>
													<p>Username:</p>
												</td>
												<td><input type="text" name="txtUsername"
													placeholder="Enter username" requered /></td>
											</tr>
											<tr>
												<td>
													<p>Password:</p>
												</td>
												<td><input type="password" name="txtPassword"
													placeholder="Enter password" requered /></td>
											</tr>
											<tr>
												<td></td>
											</tr>
											<tr>
												<td></td>
											</tr>
											<tr>
												<td colspan="2" align="center"><input type="submit"
													value="Sign In" name="signIn"></td>
											</tr>
										</table>
										<br /> <br /> <br /> <br /> <br />
									</fieldset>
								</form>
							</center>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
</body>
</html>