<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "Classes.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="header/header.jsp" %>
	
	<style type="text/css">
		.post:hover
		{
			cursor: hand;
		}
	</style>
	
	<script>
		
		$(function() {
			var t = $("#content");
			t.bind('input', function() {
				t.css("height", 'auto');
				t.css("height", t[0].scrollHeight  + 'px');
			});
		});
	</script>
</head>
<body>
	<%@include file="cekSession/cekSession.jsp" %>
	
	<%@include file="header/menu.jsp" %>
	<%
		Jabatan jabatan = new Jabatan();
	%>
<div class="container" role='main' id ="wrapper" style='margin-top:70px;'>
	
	<div class='col-md-3 col-xs-12' style='border-radius: 15px;float:left;background-color:white;padding:20px;'>
		<div class='col-md-12'>
			<div class='col-md-6' style='margin:0px;padding:0px'>
				<img class='img-thumbnail img-responsive' src='https://yellowslugreviews.files.wordpress.com/2014/08/jessica1.jpg' alt='...'  width="80" height="45"/>
			</div >
		
			<div class='col-md-6' style='margin:0px;padding:0px;margin-top:20px'>
				<p><b><%= session.getAttribute("nama") %></b></p>
				<p>@JessicaJung</p>
			</div>
		</div>
		
		<div class='col-md-12'>
			<table class='table'>
			<thead>
				<tr>
					<th>
					Post
				</th>
				
				<th>
					Applying
				</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						1231
					</td>
					<td>
						12312
					</td>
				
				</tr>
				
			</tbody>
			</table>
				
		</div>
		
		
	</div>
	
	<div class='col-md-5 col-xs-12' style='min-width:530px;border-radius: 15px; margin-left:15px;margin-right:15px;background-color:white;padding:20px;'>
		<div class='row' style='padding:5px;'>
			<form method="POST" action="testProcessPost.jsp">
				<textarea placeholder="Write your job vacancy here" name="content" id="content" class="form-control noscroll" rows="3" maxlength="1000" required></textarea>
				<input type="submit" name="btnSubmit" value="Post" class="btn btn-primary" style="margin-top : 5px; float : right;"/>
			</form>
		</div>
		
		<div class='row' style='margin-bottom:10px;padding:5px;'>
			Order By : 
			<button class='btn btn-success' style='border-radius:15px;'>Date</button> &nbsp
			<button class='btn btn-success' style='border-radius:15px;'>Like</button>
			
		</div>
		
		 <div class='row'>
		 	<div class='col-md-3'>
		 		<img class='post img-thumbnail img-responsive' style="cursor: pointer;" src='https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRcEcCPeAwGS71aWkyYz-ibCvXTvtE-mLhg6k-z13A6WKuAHHJqbg' alt='...'  width="120" height="65"/>
		 		
			 </div>
			 <div class='col-md-9'>
			 	<p>Mr Tanudjaja</p>
		 		<p>Recruiting basdasdasassd ></p>		
			 </div>		
		 	
		</div> 
		 <hr/>
		 <div class='row'>
		 
			<div class='col-md-3'>
			 	<img class='img-thumbnail img-responsive' src='https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRcEcCPeAwGS71aWkyYz-ibCvXTvtE-mLhg6k-z13A6WKuAHHJqbg' alt='...'  width="120" height="65"/>
			 		
			 </div>
			 
			 <div class='col-md-9'>
			 	<p>Mr Tanudjaja</p>
		 		<p>Recruiting basdasdasassd </p>		
			 </div>		
	 
	 	 </div>
	</div>
	
	<div class='col-md-3 col-xs-12' style='border-radius: 15px; padding-left:20px;background-color:white;padding:20px;'>
	 	<button class='btn btn-success' style='border-radius:20px'>Tampilkan Semua</button>
	 	<hr/>
	 	<p>Advance Filter</p>
	 	
	 	<div class='col-md-12'>
	 	<form method='POST' id='filterLowongan'>
	 		<%= Jabatan.getJabatan() %>
	 		
	 		<div class='row'>
	 			<button type='submit' class='btn btn-success' style='border-radius:15px'><i class='fa fa-search'></i> &nbsp Saring Pekerjaan</button>
	 		</div>
     	</form>
		 	
     	</div>
	</div>
	
</div>

<div class="modal fade" id="post" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">         
      <div class="modal-body col-md-12">                
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>

	
<%@ include file='footer/footer.jsp' %>	
	
    
</body>


<script>
       $(document).ready(function(){
           $('img').on('click',function(){
                var src = $(this).attr('src');
                var img = '<img src="' + src + '" class="img-responsive"/>';
                $('#post').modal();
                $('#post').on('shown.bs.modal', function(){
                    $('#post .modal-body').html(img);
                });
                $('#post').on('hidden.bs.modal', function(){
                    $('#post .modal-body').html('');
                });
           });  
        })
</script>
</html>