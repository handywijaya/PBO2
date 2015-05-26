<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="header/header.jsp" %>
	
	<style>
		.navbar-brand
		{
		    position: absolute;
		    width: 100%;
		    left: 0;
		    text-align: center;
		    margin: auto;
		}
		
		.dropdown-menu li:hover .sub-menu {
		    visibility: visible;
		}
		
		.dropdown:hover .dropdown-menu {
		    display: block;
		}
		
		textarea {
		    width: 500px;
		    min-height: 50px;
		    font-family: Arial, sans-serif;
		    font-size: 13px;
		    color: #444;
		    padding: 5px;
		}
		
		.noscroll {
		    overflow: hidden;
		}
		
		.hiddendiv {
		    display: none;
		    white-space: pre-wrap;
		    width: 500px;
		    min-height: 50px;
		    font-family: Arial, sans-serif;
		    font-size: 13px;
		    padding: 5px;
		    word-wrap: break-word;
		}
	</style>
	<script>
<<<<<<< HEAD
=======
		
>>>>>>> 20a2b610499caeb1b2874e6470112a3033c373e6
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
	<%@include file="header/menu.jsp" %>
	
	<div class="container" role='main' style='margin-top:70px;'>
	
	<form method="POST" action="uploadGambar.jsp">
		<textarea placeholder="Write your job vacancy here" name="content" id="content" class="form-control noscroll" rows="3" maxlength="1000" required></textarea>
		<input type="submit" name="btnSubmit" value="Post" class="btn btn-primary" style="margin-top : 5px; float : right;"/>
	</form>
	
	
	</div>
	
    
</body>
</html>