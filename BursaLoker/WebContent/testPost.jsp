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
		/*function resizeTextarea (id) {
		  var a = document.getElementById(id);
		  a.style.height = 'auto';
		  a.style.height = a.scrollHeight+'px';
		}

		function init() {
		  var a = document.getElementsByTagName('textarea');
		  for(var i=0,inb=a.length;i<inb;i++) {
		     if(a[i].getAttribute('data-resizable')=='true')
		      resizeTextarea(a[i].id);
		  }
		}

		addEventListener('DOMContentLoaded', init);*/
		/*var observe;
		if (window.attachEvent) {
		    observe = function (element, event, handler) {
		        element.attachEvent('on'+event, handler);
		    };
		}
		else {
		    observe = function (element, event, handler) {
		        element.addEventListener(event, handler, false);
		    };
		}
		function init () {
		    var text = document.getElementById('txtInput');
		    function resize () {
		        text.style.height = 'auto';
		        text.style.height = text.scrollHeight+'px';
		    }
		    /* 0-timeout to get the already changed text */
		 /*   function delayedResize () {
		        window.setTimeout(resize, 0);
		    }
		    observe(text, 'change',  resize);
		    observe(text, 'cut',     delayedResize);
		    observe(text, 'paste',   delayedResize);
		    observe(text, 'drop',    delayedResize);
		    observe(text, 'keydown', delayedResize);

		    text.focus();
		    text.select();
		    resize();
		}*/
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
	
	<form method="POST" action="testProcessPost.jsp">
		<textarea placeholder="Write your job vacancy here" name="content" id="content" class="form-control noscroll" rows="3" maxlength="1000" required></textarea>
		<input type="submit" name="btnSubmit" value="Post" class="btn btn-primary" style="margin-top : 5px; float : right;"/>
	</form>
	
	
	</div>
	
    
</body>
</html>