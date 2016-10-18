<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
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
		<%
			String firstName = request.getParameter("first");
			String lastName = request.getParameter("last");
			String gender = request.getParameter("gender");
			String dateOfBirth = request.getParameter("dob");
			
			try
			{
				//Get a connection to database
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "DBPassword");
				
				//Create a statement
				Statement myStmt = myConn.createStatement();
				
				myStmt.executeUpdate("INSERT INTO `mydb`.`studentdata` (studentID, fName, lName) VALUES (NULL, '" + firstName + "', '" + lastName + "')");
			}
			catch(Exception exc)
			{
				exc.printStackTrace();
			}
		%>
		<h2>Hello <%= firstName %> <%=lastName %>! </h2>
	</body>
</html>