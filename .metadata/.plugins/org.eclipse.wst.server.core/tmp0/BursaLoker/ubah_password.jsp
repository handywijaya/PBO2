<%@page import="Classes.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ubah Password</title>
</head>
<body>
	
	<%
  		if(request.getParameter("change")!=null)
  		{
  			out.println(User.changePassword("1", request.getParameter("txtCurrPass"), request.getParameter("txtNewPass"), request.getParameter("txtConfirmPass")));
  			//if(User.changePassword("1",request.getParameter("txtCurrPass"), request.getParameter("txtNewPass"), request.getParameter("txtConfirmPass")))
  				//out.println("Ganti Password Berhasil!");
  		}
  	%>
	
	<center>
		<h1>Ubah Password</h1>
	</center>
	<form method="POST" action = "#">
	<center>
	 	<table>
	 	<tr>
	 		<td align="right"> 
	 		
	 			Current Password <font color="red">*</font>
	 		</td>
	 		<td>
	 			<input type="password" name="txtCurrPass">
	 		</td>
	 	</tr>
	 	<tr>
	 		<td align="right">
	 		
	 			New Password <font color="red">*</font>
	 		</td>
	 		<td>
	 			<input type="password" name="txtNewPass">
	 		</td>
	 	</tr>
	 	<tr>
	 		<td align="right">
	 			Confirm Password <font color="red">*</font>
	 		</td>
	 		<td>
	 			<input type="password" name="txtConfirmPass">
	 		</td>
	 	</tr>
	 	
	 	<tr>
	 		<td colspan="4" align="center">
	 			<input type="submit" value="Ganti Password" name="change">
	 		</td>
	 	</tr>
		</table>
	</center>
	</form>
</body>
</html>