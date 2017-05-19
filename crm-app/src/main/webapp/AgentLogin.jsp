<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="InsurembrellaStyle.css" rel="stylesheet" type="text/css" />
<title>Login</title>
</head>
<body>
	<div class="wrapper">
		<div id="content">
			<div id="maluluza">
				<center>
					<form action="AgentLogin" method="post">
						<fieldset>
							<legend>
								<h3>Login Page</h3>
							</legend>
							<table>
								<tr>
									<td>
										<p>Username:</p>
									</td>
									<td><input type="text" name="txtUsername"
										placeholder="Enter username" requered /></td>
								</tr>
								<tr>
									<td>
										<p>Password:</p>
									</td>
									<td><input type="text" name="txtPassword"
										placeholder="Enter password" requered /></td>
								</tr>
								<tr>
									<td></td>
								</tr>
								<tr>
									<td></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input type="submit"
										value="Sign In" name="signIn"></td>
								</tr>
							</table>
							<br /> <br /> <br /> <br /> <br />
						</fieldset>
					</form>
				</center>
			</div>
		</div>
	</div>
</body>
</html>