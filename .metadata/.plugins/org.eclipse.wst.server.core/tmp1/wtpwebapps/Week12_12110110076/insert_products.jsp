<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.database.*" %>
    	
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Orders - IF532 JSP</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.js"></script>
	
	<style type="text/css">
		body { font-size: 140%; }
	</style>
	
	
	
  </head>
  
  <body>
  	<%
  		if(request.getParameter("insert")!=null)
  		{
  			out.println("asd");
  			if(NorthwindDB.insertProducts(request.getParameter("txtName"), request.getParameter("txtQty"),Integer.parseInt(request.getParameter("txtPrice")) , Integer.parseInt(request.getParameter("txtStock"))))
  				out.println("insert berhasil");
  		}
  	%>
  
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  <a class="navbar-brand" href="#">[IF532] Object Oriented Programming 2</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp">Products</a></li>
				<li class="active"><a href="#">Orders<span class="sr-only">(current)</span></a></li>
			  </ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').dataTable();
		} );
	</script>
	
	<div class="container">
		 <form method="POST" action = "#">
		 	<table>
		 	<tr>
		 		<td>
		 			Product Name :
		 		</td>
		 		<td>
		 			<input type="text" name="txtName">
		 		</td>
		 	</tr>
		 	<tr>
		 		<td>
		 			Quantity Per Unit : 
		 		</td>
		 		<td>
		 			<input type="text" name="txtQty">
		 		</td>
		 	</tr>
		 	<tr>
		 		<td>
		 			Price :
		 		</td>
		 		<td>
		 			<input type="text" name="txtPrice">
		 		</td>
		 	</tr>
		 	<tr>
		 		<td>
		 			Stock :
		 		</td>
		 		<td>
		 			<input type="text" name="txtStock">
		 		</td>
		 	</tr>
		 	<tr>
		 		<td colspan="4">
		 			<input type="submit" value="Insert Data" name="insert">
		 		</td>
		 	</tr>
			<!-- Product Name : <input type="text" name="txtName"><br>
			Quantity Per Unit : <input type="text" name="txtQty"><br>
			Price : <input type="text" name="txtPrice"><br>
			Stock : <input type="text" name="txtStock"><br>
			<input type="submit" value="Insert Data">
			 -->
			</table>
		</form> 
	</div>
	
    
  </body>
</html>