<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Welcome - Home</title>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{background-image: url("images/background.jpg");}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse ">
  	<div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="default.jsp">Bug E-Tracking System</a>
    </div>
    <ul class="nav navbar-nav">
    <li class="active " sytle="background-color:green;"><a href="default.jsp">Home</a></li>
     
     <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> &nbsp;Login<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="login.jsp?type=Admin">Administrator</a></li>
          <li><a href="login.jsp?type=Expert">Technical Expert</a></li>
          <li><a href="login.jsp?type=User">User Login</a></li>
        </ul>
      </li>
      <li><a href="aboutus.jsp">About Us</a></li>
       <li><a href="contactus.jsp">Contact Us</a></li>
    </ul>
   <ul class="nav navbar-nav navbar-right">
   <%
    String login = (String)session.getAttribute("login");
	if("yes".equals(login))
	{%>
	<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span height="400px" class="glyphicon glyphicon-user">&nbsp;<%=(String)session.getAttribute("user")%></span><span class="caret"></span></a>
        <ul class="dropdown-menu">
        
          <li><a href="logout.jsp">Logout</a></li>
          </ul>
      </li>
	<%}
	else{
	%>
    <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
   <%} %>
   </ul>
   </div>
  </nav>
		
			<div  class="row">
			<div class="col-sm-2">
			</div>
			<div class="col-sm-8">
			<div class="panel panel-info">
      		<div class="panel-heading">Bug Tracking System Information</div>
      		<div class="panel-body">
    		<ul>
			<li> Bug E-Tracking System is web based general purpose issue tracking application.</li>
			<li>It is in daily use by thousands of development, customer support, and help desk teams around the world.</li>
			<li>Highly configurable. you can configure it to use as a simple bug tracking system for a small team, or configure it with a workflow, permissions for a larger organization.</li>
			<li> works great as a help desk system, a customer support ticket system.</li>
  			</ul>  		
      		</div>
    		</div>
			</div>
			</div>
  			<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>	

 <footer class="container-fluid text-center">
  <p>All Copyright © <br/> Bug E-Tracking System</p>
</footer>

</body>
</html>
