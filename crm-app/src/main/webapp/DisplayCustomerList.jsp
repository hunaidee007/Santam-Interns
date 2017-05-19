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
	We are here :) :) :)

	<%! Customer cutomer; %>

	<%! List<Customer> customerList;  %>

	<%
	customerList = (List<Customer>)session.getAttribute("customerList"); 
	%>

	<table>
		<%
	for(Customer customer : customerList){
	%>
		<tr>
			<td><%=customer.getCustId() %></td>
			<td><%=customer.getCustName() %></td>
			<td><%=customer.getSurname() %></td>
			<td><%=customer.getAddress() %></td>
			<td><%=customer.getContactNo() %></td>
			<td><%=customer.getEmail() %></td>
			<td><%=customer.getCustId() %></td>
			<td><%=customer.getGender() %></td>
		</tr>
		<%
	}
	%>
	</table>

</body>
</html>