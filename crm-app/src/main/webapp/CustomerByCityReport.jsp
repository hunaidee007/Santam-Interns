<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page language="java" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customers By City</title>
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
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="TopFiveCustomerReportServlet">Reports
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="TopFiveCustomerReportServlet">Top Five
								Customers</a></li>
						<!--  <li><a href="ActiveProductsReportServlet">Active Products</a></li>-->
						<li><a href="EnterCity.jsp">Customer By City</a></li>
						<!--<li><a href="EnterProduct.jsp">Customer By Product</a></li>-->
					</ul></li>

			</ul>
		</div>
	</div>
	</nav>

	<div align="center">
		<label><h3>Customers Report By City</h3></label>
	</div>

	<div class="container">
		<div class="col-lg-12 well">
			<div class="row">
				<div align="center">
					<table class="table table-bordered">
						<tr>

							<td width="12.5%">Customer Name</td>
							<td width="12.5%">Surname</td>
							<td width="12.5%">Contact Number</td>
							<td width="12.5%">Email</td>
							<td width="12.5%">Gender</td>
							<td width="12.5%">City</td>
							<td width="12.5%">State</td>
							<td width="12.5%">Zip</td>


						</tr>
						<%
						List data= (List)request.getAttribute("data");
						for (Iterator itr=data.iterator(); itr.hasNext(); )
						{
						%>
						<tr>
							<td width="12.5%"><%=itr.next()%></td>
							<td width="12.5%"><%=itr.next()%></td>
							<td width="12.5%"><%=itr.next()%></td>
							<td width="12.5%"><%=itr.next()%></td>
							<td width="12.5%"><%=itr.next()%></td>
							<td width="12.5%"><%=itr.next()%></td>
							<td width="12.5%"><%=itr.next()%></td>
							<td width="12.5%"><%=itr.next()%></td>
						</tr>
						<%} %>
					</table>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>