<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.bean.Customer"
	import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!Customer cutomer;%>

	<%!List<Customer> customerList;%>

	<%
		customerList = (List<Customer>) session.getAttribute("customerList");
	%>

	<table border="1">
		<tr>
			<td>Customer ID</td>
			<td>Customer Name</td>
			<td>Customer Surname</td>
			<td>Customer Address</td>
			<td>Customer Phone Number</td>
			<td>Customer Email</td>
			<td>Customer ID Number</td>
			<td>Customer Gender</td>
		</tr>
		<%
			for (Customer customer : customerList) {
		%>
		<tr>
			<td><%=customer.getCustId()%></td>
			<td>
			<%!int tempCustId=0;%>
			<% tempCustId=customer.getCustId();%>
			<%=tempCustId %>
		
		<a href="ReturnIndividualCustomerController?CustId=<%=tempCustId %>"><%=customer.getCustName()%></a></td>
			<td><%=customer.getSurname()%></td>
			<td><%=customer.getAddress()%></td>
			<td><%=customer.getContactNo()%></td>
			<td><%=customer.getEmail()%></td>
			<td><%=customer.getIdNumber()%></td>
			<td><%=customer.getGender()%></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>