<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="MyStyle.css">
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><img style="max-width:100px; margin-top:-16px ;margin-left:-16px;height:52px;"
             src="./img/Santam.PNG"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="CustomerRegistrationForm.jsp">Customer Registration</a></li>
        <li><a href="InsuranceInquiryAuto.jsp">Auto Insurance</a></li>
        <li><a href="InsuranceInquiryProperty.jsp">Property Insurance</a></li>
      </ul>
    </div>
  </div>
</nav>
	<div class="container">
	<div class="col-lg-12 well">
	<div class="row">
				<form action = "CustomerController" method = "post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
								<input type="text" placeholder="Enter First Name Here.." class="form-control"
								name="txtFName"/>
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" placeholder="Enter Last Name Here.." class="form-control"
								name="txtLName"/>
							</div>
						</div>					
						<div class="form-group">
							<label>Address</label>
							<textarea placeholder="Enter Address Here.." rows="3" class="form-control" name="txtAreaAddress"> 
							</textarea>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label>
								<input type="text" placeholder="Enter City Name Here.." class="form-control"
								name="txtCity"/>
							</div>	
							<div class="col-sm-4 form-group">
								<label>State</label>
								<input type="text" placeholder="Enter State Name Here.." class="form-control"
								name="txtState"/>
							</div>	
							<div class="col-sm-4 form-group">
								<label>Postal Code</label>
								<input type="text" placeholder="Enter Zip Code Here.." class="form-control"
								name="txtCode"/>
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Title</label>
								<input type="text" placeholder="Enter Designation Here.." class="form-control"
								name="txtTitle"/>
							</div>		
							<div class="col-sm-6 form-group">
								<label>Identity Number</label>
								<input type="text" placeholder="Enter Identity Number Here.." class="form-control" 
								name ="txtID">
							</div>	
						</div>						
					<div class="form-group">
						<label>Phone Number</label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control"
						name="txtPhoneNo"/>
					</div>		
					<div class="form-group">
						<label>Email Address</label>
						<input type="text" placeholder="Enter Email Address Here.." class="form-control"
						name="txtEmail"/>
					</div>	
					
					<button type="submit" class="btn btn-lg btn-info">Submit</button>					
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