<%@page import="sun.security.rsa.RSASignature.MD5withRSA"%>
<%@page import="sun.security.provider.MD5"%>
<%@page import="Classes.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- include boostrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/dataTables.bootstrap.css" rel="stylesheet">


<title>Ubah Password</title>
</head>
<body>
	
	<%
  		if(request.getParameter("change")!=null)
  		{
  			//out.println(request.getParameter("txtCurrPass"));
  			//out.println(request.getParameter("txtNewPass"));
  			//out.println(request.getParameter("txtConfirmPass"));
  			
  			String asd = User.changePassword("1", request.getParameter("txtCurrPass"), request.getParameter("txtNewPass"), request.getParameter("txtConfirmPass"));
  			//if(User.changePassword("1",request.getParameter("txtCurrPass"), request.getParameter("txtNewPass"), request.getParameter("txtConfirmPass")))
  				//out.println("Ganti Password Berhasil!");
  			
  			out.println(asd);
  		}
  	%>
	<div class="container-form-change-password">
	<center>
		<h1>Ubah Password</h1>
	</center>
	<form method="POST" action = "#">
	<center>
	 	<table id="example" class="table table-striped table-bordered table-hover" cellspacing="0" width="100px">
	 	<tr>
	 		<td align="right">
	 			Current Password <font color="red">*</font>
	 		</td>
	 		<td>
	 			<input type="password" name="txtCurrPass"/>
	 		</td>
	 	</tr>
	 	<tr>
	 		<td align="right">	
	 			New Password <font color="red" >*</font>
	 		</td>
	 		<td>
	 			<input type="password" name="txtNewPass"/>
	 		</td>
	 	</tr>
	 	<tr>
	 		<td align="right">
	 			Confirm Password <font color="red">*</font>
	 		</td>
	 		<td>
	 			<input type="password" name="txtConfirmPass"/>
	 		</td>
	 	</tr>
	 	
	 	<tr>
	 		<td colspan="4" align="center">
	 			<input type="submit" value="Ganti Password" name="change"/>
	 		</td>
	 	</tr>
		</table>
	</center>
	</form>
	</div>
</body>
</html>