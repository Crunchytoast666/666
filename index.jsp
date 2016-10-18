<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>JSP Form</title>
	</head>
	<body>
		<h1>JSP Form</h1>
		<form name="myForm" action="response.jsp" method="POST">
			<table border="0">
				<tbody>
					<tr>
						<td>First Name : </td>
						<td><input type="text" name="first" value="" size="50" /></td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>Last Name : </td>
						<td><input type="text" name="last" value="" size="50" /></td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>Gender : </td>
						<td><select name="gender">
								<option>Male</option>
								<option>Female</option>
							</select></td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td>Date of Birth : </td>
						<td><input type="text" name="dob" value="MM/DD/YYY" size="15"></td>
					</tr>
				</tbody>
			</table>
			<input type="reset" value="Clear" name="clear" />
			<input type="submit" value="Submit" name="submit" />
		</form>
	</body>
</html>