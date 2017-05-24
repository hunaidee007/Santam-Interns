<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.bean.CustomerBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration Form</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="MyStyle.css">
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
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
				<!-- <li><a href="InsuranceInquiryAuto.jsp">Auto Insurance</a></li>
				<li><a href="InsuranceInquiryProperty.jsp">Property
						Insurance</a></li>
						-->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="TopFiveCustomerReportServlet">Reports
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
					<li><a href="TopFiveCustomerReportServlet">Top Five Customers</a></li>
						<!--  <li><a href="ActiveProductsReportServlet">Active Products</a></li>-->
						<li><a href="EnterCity.jsp">Customer By City</a></li>
						<li><a href="EnterProduct.jsp">Customer By Product</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="col-lg-12 well">
			<div class="row">
				<%
					CustomerBean customer = (CustomerBean) session.getAttribute("customer");
				%>
				<form action="CustomerController" method="post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label> <input type="text"
									Value="<%=customer.getCustName() %>" class="form-control"
									name="txtFName" />
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label> <input type="text"
									Value="<%=customer.getSurname() %>" class="form-control"
									name="txtLName" />
							</div>
						</div>
						<!-- <div class="form-group">
							<label>Address</label>
							<textarea rows="3" class="form-control" name="txtAreaAddress"><%//=customer.getAddress() %></textarea>
						</div>
						 <div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label> <input type="text" Value="TODO"
									class="form-control" name="txtCity" />
							</div>
							<div class="col-sm-4 form-group">
								<label>State</label> <input type="text" Value="TODO"
									class="form-control" name="txtState" />
							</div>
							<div class="col-sm-4 form-group">
								<label>Zip</label> <input type="text" Value="TODO"
									class="form-control" name="txtCode" />
							</div>
							-->
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Gender</label> <input type="text"
									Value="<%=customer.getGender() %>" class="form-control"
									name="txtGender" />
							</div>
							<div class="col-sm-6 form-group">
								<label>Identity Number</label> <input type="text"
									Value="<%=customer.getIdNumber() %>" class="form-control"
									name="txtID">
							</div>
						</div>
						<div class="form-group">
							<label>Phone Number</label> <input type="text"
								Value="<%=customer.getContactNo() %>" class="form-control"
								name="txtPhoneNo" />
						</div>
						<div class="form-group">
							<label>Email Address</label> <input type="text"
								Value="<%=customer.getEmail() %>" class="form-control"
								name="txtEmail" />
						</div>
						<center>
							<!-- <div>
								<label class="checkbox-inline"> <input type="checkbox"
									value="Auto">Auto Insurance
								</label> <label class="checkbox-inline"> <input type="checkbox"
									value="Property">Property Insurance
								</label>
							</div>
							-->
						</center>

						<div>
							<center>
								<a href="CustomerRegistrationForm.jsp">Customer Registration</a>
							</center>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>