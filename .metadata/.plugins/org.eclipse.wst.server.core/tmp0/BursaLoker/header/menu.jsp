<nav class="navbar navbar-inverse navbar-fixed-top" >
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		  <a class="navbar-brand" href="#">BursaLoker</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		  <ul class="nav navbar-nav navbar-left">
			<li class="active"><a href="index.jsp">Home<span class="sr-only">(current)</span></a></li>
			<li><a href="order.jsp">Profile</a></li>
			<li><a href="tambahProduct.jsp">Inbox</a></li>
			<li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Setting <span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
	            <li><a href="asd">Edit Profile</a></li>
	            <li><a href="ubah_password.jsp">Ubah Password</a></li>
	            <li class="divider"></li>
	            <li><a href="#">Log Out</a></li>
	          </ul>
	        </li>
		  </ul>
		  
		  <form class="navbar-form navbar-right" role="search">
	        <div class="form-group">
	          <input type="text" class="form-control" placeholder="Search">
	        </div>
	        <button type="submit" class="btn btn-success">Submit</button>
	      </form>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable();
	} );
</script>