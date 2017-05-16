<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration Form</title>

<link rel="stylesheet" href="MyStyle.css">

</head>
<body>
	<center>
		<h2>Customer Registration Form</h2>
		<form action="InsuranceInquiryAuto.jsp" method="post">
		
			<table >
				<tr>
						<td width="45%">ID NUMBER&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<br><br></td>
						<td width="30%"><input type="text" name="id"placeholder="id number" width="50" required /><br><br></td>
						
				</tr>
				
				<tr>
						<td>FIRST NAME&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;	&nbsp; &nbsp; &nbsp; &nbsp;<br><br></td>
						<td> <input type="text" name="firstname" placeholder="first name" required/><br /><br></td>				
				</tr>
				
				<tr>
						<td>LAST NAME&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;	&nbsp; &nbsp; &nbsp; &nbsp;<br><br></td>
						<td> <input type="text" name="lastname" placeholder="last name" required /><br><br></td>				
				</tr>
				
				<tr>
						<td>GENDER&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;	&nbsp; &nbsp; &nbsp; &nbsp;<br><br></td>
						<td> <input type="text" name="name" placeholder="gender" required/><br><br></td>				
				</tr>
				
				<tr>
						<td>CONTACT NUMBER&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;	&nbsp; &nbsp; &nbsp; &nbsp;<br><br></td>
						<td> <input type="text" name="name" placeholder="phone number" required /><br><br></td>				
				</tr>
				
				<tr>
						<td>EMAIL ADDRESS&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;	&nbsp; &nbsp; &nbsp; &nbsp;<br><br></td>
						<td> <input type="email" name="name" placeholder="amos@example.com" required /><br><br></td>				
				</tr>
				
				<tr>
						<td>HOME ADDRESS&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;	&nbsp; &nbsp; &nbsp; &nbsp;<br><br></td>
						
<!-- 					   <td><input type="text" name="name" placeholder="line1" /><br/><input type="text" name="name" placeholder="line1" /><br/><input type="text" name="name" placeholder="line1" /><br/><input type="text" name="name" placeholder="line1" /></td>
 -->						
						<td><textarea  rows="4" cols="16.5" name="address" required></textarea></td>	
										
				</tr>
				
			</table><br><br>
			<a href="Login.html"><input type="button" value="BACK"></a>&nbsp;&nbsp;&nbsp;&nbsp;	<input type="submit" value="NEXT" >
		</form>
	</center>
</body>
</html>