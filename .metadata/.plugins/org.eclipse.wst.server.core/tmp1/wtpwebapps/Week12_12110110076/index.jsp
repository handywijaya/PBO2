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
    <title>Products - IF532 JSP</title>

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
				<li class="active"><a href="#">Products<span class="sr-only">(current)</span></a></li>
				<li><a href="orders.jsp">Orders</a></li>
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
                <th>Product Name</th>
                <th>Quantity per Unit</th>
                <th>Price</th>
                <th>Stock</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>Product Name</th>
                <th>Quantity per Unit</th>
                <th>Price</th>
                <th>Stock</th>
            </tr>
        </tfoot>
 
        <tbody>
        	<%=
        		NorthwindDB.getAllProducts()
        	%>
			<!-- di comment
			<tr><td>Chai</td><td>10 boxes x 20 bags</td><td>18.0000</td><td>39</td></tr>
			<tr><td>Chang</td><td>24 - 12 oz bottles</td><td>19.0000</td><td>17</td></tr>
			<tr><td>Aniseed Syrup</td><td>12 - 550 ml bottles</td><td>10.0000</td><td>13</td></tr>
			<tr><td>Chef Anton's Cajun Seasoning</td><td>48 - 6 oz jars</td><td>22.0000</td><td>53</td></tr>
			<tr><td>Chef Anton's Gumbo Mix</td><td>36 boxes</td><td>21.3500</td><td>0</td></tr>
			<tr><td>Grandma's Boysenberry Spread</td><td>12 - 8 oz jars</td><td>25.0000</td><td>120</td></tr>
			<tr><td>Uncle Bob's Organic Dried Pears</td><td>12 - 1 lb pkgs.</td><td>30.0000</td><td>15</td></tr>
			<tr><td>Northwoods Cranberry Sauce</td><td>12 - 12 oz jars</td><td>40.0000</td><td>6</td></tr>
			<tr><td>Mishi Kobe Niku</td><td>18 - 500 g pkgs.</td><td>97.0000</td><td>29</td></tr>
			<tr><td>Ikura</td><td>12 - 200 ml jars</td><td>31.0000</td><td>31</td></tr>
			<tr><td>Queso Cabrales</td><td>1 kg pkg.</td><td>21.0000</td><td>22</td></tr>
			<tr><td>Queso Manchego La Pastora</td><td>10 - 500 g pkgs.</td><td>38.0000</td><td>86</td></tr>
			<tr><td>Konbu</td><td>2 kg box</td><td>6.0000</td><td>24</td></tr>
			<tr><td>Tofu</td><td>40 - 100 g pkgs.</td><td>23.2500</td><td>35</td></tr>
			<tr><td>Genen Shouyu</td><td>24 - 250 ml bottles</td><td>15.5000</td><td>39</td></tr>
			<tr><td>Pavlova</td><td>32 - 500 g boxes</td><td>17.4500</td><td>29</td></tr>
			<tr><td>Alice Mutton</td><td>20 - 1 kg tins</td><td>39.0000</td><td>0</td></tr>
			<tr><td>Carnarvon Tigers</td><td>16 kg pkg.</td><td>62.5000</td><td>42</td></tr>
			<tr><td>Teatime Chocolate Biscuits</td><td>10 boxes x 12 pieces</td><td>9.2000</td><td>25</td></tr>
			<tr><td>Sir Rodney's Marmalade</td><td>30 gift boxes</td><td>81.0000</td><td>40</td></tr>
			<tr><td>Sir Rodney's Scones</td><td>24 pkgs. x 4 pieces</td><td>10.0000</td><td>3</td></tr>
			<tr><td>Gustaf's Knckebrd</td><td>24 - 500 g pkgs.</td><td>21.0000</td><td>104</td></tr>
			<tr><td>Tunnbrd</td><td>12 - 250 g pkgs.</td><td>9.0000</td><td>61</td></tr>
			<tr><td>Guaran Fantstica</td><td>12 - 355 ml cans</td><td>4.5000</td><td>20</td></tr>
			<tr><td>NuNuCa Nu-Nougat-Creme</td><td>20 - 450 g glasses</td><td>14.0000</td><td>76</td></tr>
			-->
		</tbody>
		
		</table>
	</div>
	
    
  </body>
</html>