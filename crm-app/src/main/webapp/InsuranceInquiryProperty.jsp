<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Property Inquiry</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="MyStyle.css">
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


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
				<li><a href="CustomerRegistrationForm.jsp">Customer	Registration</a></li>
			<!--  	<li><a href="AutoCoverage.jsp">Auto Insurance</a></li>
				<li><a href="InsuranceInquiryProperty.jsp">Property Insurance</a></li>
			-->	
				<li><a href="#">Reports</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container" >
		<div class="col-lg-12 well">
			<div class="row">
				<div align="center">
					<label><h2>Property Insurance Inquiry</h2></label>
				</div>

				<form method="post" action="PropertyInquiry">
					<div class="col-sm-12">
						<div class="row">
							
							<div class="col-sm-6 form-group">
								<label>Property Value </label> <input type="text" name="propertyValue" placeholder="Enter Property value" class="form-control" required>
							</div>

						</div>
						<div class="row">

							<div class="col-sm-6 form-group">
								<label>Construction Type</label> <input type="text" name= "constructionType" placeholder="Enter Construction Type" class="form-control" required>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Fire Protection Equipment </label> <br>
								<label class="radio-inline"> <input type="radio" name="fireProtectionEquipment" value = "Yes">Yes</label> 
								<label class="radio-inline"> <input type="radio" name="fireProtectionEquipment" value = "No">No	</label>
							</div>
						</div>


						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Building Content Protection</label> <br> 
								<label class="radio-inline"> <input type="radio" name="buildingRd" value = "Yes">Yes</label>
								<label class="radio-inline"> <input type="radio"name="buildingRd" value = "No">No</label>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Natural Disaster Protection</label> <br> 
								<label class="radio-inline"> <input type="radio" name="disasterRd" value = "Yes">Yes</label>
								 <label class="radio-inline"> <input type="radio" name="disasterRd" value = "No">No</label>
							</div>
						</div>
						
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Security Alarm System</label> <br> 
								<label class="radio-inline"> <input type="radio" name="security" value = "Yes">Yes</label>
								 <label class="radio-inline"> <input type="radio" name="security" value = "No">No</label>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Burglar Bars </label> <br> 
								<label class="radio-inline"> <input type="radio" name="burglarRd" value = "Yes">Yes</label>
								<label class="radio-inline"> <input type="radio" name="burglarRd" value = "No">No</label>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Property Address</label></br>
								<textarea name="propertyAddress" rows="5" cols="20"	placeholder="Enter Property Address"></textarea>
							</div>
							<div class="col-sm-4 form-group">
								<label>Period </label> <br> 
								<label class="radio-inline"><input type="radio" name="period" value = "6 Months">6 Months</label> 
								<label class="radio-inline"> <input type="radio" name="period" value = "12 Months">12 Months	</label>
							</div>
						</div>
					</div>


					<center>
						<h2>Coverage</h2>
						<div>
							<label class="checkbox-inline"> <input type="checkbox" name = "dwell" value="Dwelling">Dwelling (Home Structure)</label>
							<label class="checkbox-inline"> <input type="checkbox" name = "personal" value="Personal">Personal Property</label>
							<label class="checkbox-inline"> <input type="checkbox" name = "liability" value="Liability">Liability Protection</label>
							<label class="checkbox-inline"> <input type="checkbox" name = "medical" value="medical">Guest Medical Protection</label>
							<label class="checkbox-inline"> <input type="checkbox"	name = "additional" value="Additional cover">Additional Protection</label>

						</div>
						
						<div>
								<!-- input type="submit" class="btn btn-lg btn-info"-->
								<input type="submit" value="send">								
						</div>
						
					</center>
				</form>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>