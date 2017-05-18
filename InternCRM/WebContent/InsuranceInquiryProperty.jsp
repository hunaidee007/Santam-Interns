<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insurance Inquiry</title>
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
        <li ><a href="CustomerRegistration.jsp">Customer Registration</a></li>
        <li><a href="InsuranceInquiryAuto.jsp">Auto Insurance</a></li>
        <li><a href="InsuranceInquiryProperty.jsp">Property Insurance</a></li>
      </ul>
    </div>
  </div>
</nav>
	<center>
		<h2>Insurance Inquiry</h2>
		<form action="InsuranceInquiry.jsp" method="post">

			<table>
				<tr>
					<td>PRODUCT TYPE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br> <br>
					</td>
					<td><select>
							<option value="" disabled="disabled" selected="selected">Select
								Product type</option>
							<option value="1">Auto</option>
							<option value="2">Property</option>
					</select><br> <br></td>

				</tr>

				<tr>
					<td>VEHICLE REGISTRATION&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br> <br>
					</td>
					<td><input type="text" name="firstname"
						placeholder="first name" /><br /> <br></td>
				</tr>

				<tr>
					<td>MODEL&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp;<br> <br>
					</td>
					<td><input type="text" name="lastname" placeholder="last name" /><br>
						<br></td>
				</tr>

				<tr>
					<td>MAKE&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp;<br> <br>
					</td>
					<td><input type="text" name="name" placeholder="gender" /><br>
						<br></td>
				</tr>

				<tr>
					<td>CURRENT COST&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp;<br> <br>
					</td>
					<td><input type="text" name="name" placeholder="phone number" /><br>
						<br></td>
				</tr>

				<tr>
					<td>PERIOD REQUIRED&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp;<br> <br>
					</td>
					<td><select>
							<option value="" disabled="disabled" selected="selected">Period Required&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
							<option value="1">6 Months</option>
							<option value="2">12 Months</option>
					</select><br> <br></td>
				</tr>


			</table>
			<br> <br> <a href="CustomerRegistration.jsp"><input
				type="button" value="BACK"></a>&nbsp;&nbsp;&nbsp;&nbsp; <input
				type="submit" value="NEXT">
		</form>
	</center>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>