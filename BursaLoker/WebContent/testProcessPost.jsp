<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "Classes.*" %>
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
		
	</style>
</head>
<body>
	<%@include file="header/menu.jsp" %>
	
	<div class="container" role='main' style='margin-top:70px;'>
	
	<%
		String message;
		if(request.getParameter("content") != null)
		{
			String content = request.getParameter("content");
			int result = Posting.addNewPost(content);
			if(result == 1)
			{
				message = "Insert success";
			}
			else
			{
				message = "Insert failed";
			}
		}
		else
		{
			message = "Forbidden";
		}
	%>
	<%= message %>
	
	</div>
	
    
</body>
</html>