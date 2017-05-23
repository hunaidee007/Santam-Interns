<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auto Property Inquiry</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="MyStyle.css">
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>

</head>
<body>

	<div>
		<div class="container">
			<div class="col-lg-12 well">
				<div class="row">
					<form action="AutoCoverage.jsp" method="post">
						<div class="col-sm-12">
							
							<div class="row">
								<div align="center">
									<label><h3>Auto Insurance Inquiry</h3></label>
								</div>
								<div class="col-sm-6 form-group">
									<label>Vehicle Registration</label> <input type="text" placeholder="Enter Vehicle Registration" class="form-control">
								</div>

								<div class="col-sm-6 form-group">
									<label>Model</label> <input type="text" placeholder="Enter Vehicle Model" class="form-control">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6 form-group">
									<label>Make</label> <input type="text" placeholder="Enter Vehicle Make" class="form-control">
								</div>

								<div class="col-sm-6 form-group">
									<label>Value</label> <input type="text"	placeholder="Enter Value of the Vehicle" class="form-control">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-4 form-group">
									<label>Period Required</label> <br> <label class="radio-inline"> <input type="radio" name="optradio">6 Months
									</label> <label class="radio-inline"> <input type="radio" name="optradio">12 Months</label>
								</div>
							</div>
						</div>

						<div class="col-sm-12">
							<div class="row">
								<div align="center">
									<label><h3>Home Insurance Inquiry</h3></label>
								</div>
								<div class="col-sm-6 form-group">
									<label> </label> <input type="text"	placeholder=" " class="form-control">
								</div>

								<div class="col-sm-6 form-group">
									<label> </label> <input type="text" placeholder=" " class="form-control">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-6 form-group">
									<label> </label> <input type="text"	placeholder=" " class="form-control">
								</div>

								<div class="col-sm-6 form-group">
									<label> </label> <input type="text"	placeholder=" " class="form-control">
								</div>
								
								<div class="col-sm-6 form-group">
									<label> </label> <input type="text"	placeholder=" " class="form-control">
								</div>
								
								<div class="col-sm-6 form-group">
									<label> </label> <input type="text"	placeholder=" " class="form-control">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-4 form-group">
									<label>Period Required </label> <br> <label class="radio-inline"><input type="radio" name="optradio">6 Months</label> 
									<label class="radio-inline"> <input type="radio" name="optradio">12 Months</label>
								</div>
							</div>
						</div>

						<div>
							<div>
								<center>
									<button type="button" class="btn btn-lg btn-info">SUBMIT</button>
								</center>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>	
	
</body>
</html>