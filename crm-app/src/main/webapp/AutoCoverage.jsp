<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auto Coverage</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="MyStyle.css">
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<%
		String idNo = (String) session.getAttribute("idNumber");
	String inputEnquiryId = (String) session.getAttribute("enquiryId");
	%>
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
				<!--  <li><a href="AutoCoverage.jsp">Auto Insurance</a></li>
				<li><a href="InsuranceInquiryProperty.jsp">Property
						Insurance</a></li>
						-->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="TopFiveCustomerReportServlet">Reports
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
					<li><a href="TopFiveCustomerReportServlet">Top Five Customers</a></li>
						<!--<li><a href="ActiveProductsReportServlet">Active Products</a></li>-->
						<li><a href="EnterCity.jsp">Customer By City</a></li>
						<!--<li><a href="EnterProduct.jsp">Customer By Product</a></li>-->
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
	<div align="center">
		<label><h3>Vehicle Insurance</h3></label>
	</div>
	<div class="container">
		<div class="col-lg-12 well">
			<div class="row">
				<form action="VehicleInsuranceServlet" method="post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Vehicle Registration</label> <input type="text"
									name="vehicleRegistration"
									placeholder="Enter Vehicle Registration" class="form-control"
									required>
							</div>
							<div class="col-sm-6 form-group">
								<label>Model</label> <input type="text" name="model"
									placeholder="Enter Vehicle Model" class="form-control" required>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Make</label> <input type="text" name="make"
									placeholder="Enter Vehicle Make" class="form-control" required>
							</div>

							<div class="col-sm-6 form-group">
								<label>Value</label> <input type="text" name="value"
									placeholder="Enter Value of the Vehicle" class="form-control"
									required>
							</div>

							<div class="col-sm-6 form-group">
								<label>Manufacturing Date</label> <input type="text" name="date"
									placeholder="Enter Manufacturing Date" class="form-control"
									required>
							</div>

							<div class="col-sm-6 form-group">
								<input type="hidden" name="enquiryId"
									value="<%=inputEnquiryId%>" class="form-control">
							</div>
								<div class="col-sm-6 form-group">
								<input type="hidden" name="enquiryId"
									value="<%=inputEnquiryId%>" class="form-control">
							</div>
								</div>
								<div class="col-sm-6 form-group">
								<input type="hidden" name="idNumber"
									value="<%=idNo%>" class="form-control">
							</div>

						</div>
						<br />

						<div class="row">
							<div class="col-sm-6 form-group">

								<fieldset class="radiogroup2">
									<legend>Select Vehicle Type</legend>
									<ul class="radio">
										<li><input type="radio" name="type" value="twoWheels" /><label>Two
												wheels</label></li>
										<li><input type="radio" name="type" value="fourWheels" /><label>Four
												Wheels</label></li>
									</ul>
								</fieldset>
							</div>
							<div class="col-sm-6 form-group">
								<fieldset class="radiogroup1">
									<legend>Select Period Required</legend>
									<ul class="radio">
										<li><input type="radio" name="period" value="sixMonths" /><label>Six
												Months</label></li>
										<li><input type="radio" name="period"
											value="twelveMonths" /><label>Twelve Months</label></li>
									</ul>
								</fieldset>
							</div>

						</div>
					</div>
					<br /> <br /> <br />
					<div>
						<div>
							<label><h3 align="center">Select Coverage</h3></label>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Collision
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="checkbox" name="collision" value="collision"
									class="btn btn-lg btn-info">
								</label>
							</div>

							<div class="col-sm-6 form-group">
								<label>Physical Damage &nbsp;&nbsp;&nbsp;<input
									type="checkbox" name="physicalDamage" value="physicalDamage"
									class="btn btn-lg btn-info"></label>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Personal Injury&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="checkbox" name="personalInjury" value="personalInjury"
									class="btn btn-lg btn-info"></label>
							</div>

							<div class="col-sm-6 form-group">
								<label>Liability
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="checkbox" name="liability" value="liability"
									class="btn btn-lg btn-info">
								</label>
							</div>

							<div class="col-sm-6 form-group">
								<label>Comprehensive &nbsp;&nbsp;&nbsp;<input
									type="checkbox" name="comprehensive" value="comprehensive"
									class="btn btn-lg btn-info"></label>
							</div>
						</div>
					</div>
					<br> <br> <br> <br>
					<div>
						<div>
							<center>
								<button type="submit" class="btn btn-lg btn-info">SUBMIT</button>
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