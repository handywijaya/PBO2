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
	<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Customer</th>
                <th>Employee</th>
                <th>Order Date</th>
				<th>Shipped Date</th>
				<th>Shipper</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>Order ID</th>
                <th>Customer</th>
                <th>Employee</th>
                <th>Order Date</th>
				<th>Shipped Date</th>
				<th>Shipper</th>
            </tr>
        </tfoot>
 
        <tbody>
        	<%= NorthwindDB.getAllOrders() %>
        	<!-- 
			<tr><td>10269</td><td>White Clover Markets</td><td>Buchanan</td><td>1996-07-31 00:00:00</td><td>1996-08-09 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10358</td><td>La maison d'Asie</td><td>Buchanan</td><td>1996-11-20 00:00:00</td><td>1996-11-27 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10397</td><td>Princesa Isabel Vinhos</td><td>Buchanan</td><td>1996-12-27 00:00:00</td><td>1997-01-02 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10549</td><td>QUICK-Stop</td><td>Buchanan</td><td>1997-05-27 00:00:00</td><td>1997-05-30 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10569</td><td>Rattlesnake Canyon Grocery</td><td>Buchanan</td><td>1997-06-16 00:00:00</td><td>1997-07-11 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10575</td><td>Morgenstern Gesundkost</td><td>Buchanan</td><td>1997-06-20 00:00:00</td><td>1997-06-30 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10607</td><td>Save-a-lot Markets</td><td>Buchanan</td><td>1997-07-22 00:00:00</td><td>1997-07-25 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10654</td><td>Berglunds snabbkp</td><td>Buchanan</td><td>1997-09-02 00:00:00</td><td>1997-09-11 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10730</td><td>Bon app'</td><td>Buchanan</td><td>1997-11-05 00:00:00</td><td>1997-11-14 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10812</td><td>Reggiani Caseifici</td><td>Buchanan</td><td>1998-01-02 00:00:00</td><td>1998-01-12 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10851</td><td>Ricardo Adocicados</td><td>Buchanan</td><td>1998-01-26 00:00:00</td><td>1998-02-02 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10866</td><td>Berglunds snabbkp</td><td>Buchanan</td><td>1998-02-03 00:00:00</td><td>1998-02-12 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10869</td><td>Seven Seas Imports</td><td>Buchanan</td><td>1998-02-04 00:00:00</td><td>1998-02-09 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10954</td><td>LINO-Delicateses</td><td>Buchanan</td><td>1998-03-17 00:00:00</td><td>1998-03-20 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10290</td><td>Comrcio Mineiro</td><td>Callahan</td><td>1996-08-27 00:00:00</td><td>1996-09-03 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10408</td><td>Folies gourmandes</td><td>Callahan</td><td>1997-01-08 00:00:00</td><td>1997-01-14 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10421</td><td>Que Delcia</td><td>Callahan</td><td>1997-01-21 00:00:00</td><td>1997-01-27 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10437</td><td>Wartian Herkku</td><td>Callahan</td><td>1997-02-05 00:00:00</td><td>1997-02-12 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10443</td><td>Reggiani Caseifici</td><td>Callahan</td><td>1997-02-12 00:00:00</td><td>1997-02-14 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10452</td><td>Save-a-lot Markets</td><td>Callahan</td><td>1997-02-20 00:00:00</td><td>1997-02-26 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10460</td><td>Folk och f HB</td><td>Callahan</td><td>1997-02-28 00:00:00</td><td>1997-03-03 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10472</td><td>Seven Seas Imports</td><td>Callahan</td><td>1997-03-12 00:00:00</td><td>1997-03-19 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10533</td><td>Folk och f HB</td><td>Callahan</td><td>1997-05-12 00:00:00</td><td>1997-05-22 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10560</td><td>Frankenversand</td><td>Callahan</td><td>1997-06-06 00:00:00</td><td>1997-06-09 00:00:00</td><td>Speedy Express</td></tr>
			<tr><td>10596</td><td>White Clover Markets</td><td>Callahan</td><td>1997-07-11 00:00:00</td><td>1997-08-12 00:00:00</td><td>Speedy Express</td></tr>
			 -->
		</tbody>
		
		</table>
	</div>
	
    
  </body>
</html>