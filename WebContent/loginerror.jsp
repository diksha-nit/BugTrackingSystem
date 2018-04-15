<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
 <meta name="description" content="">
 <meta name="author" content="">
<title>Welcome - Authentication Error!</title>
<style>
body{background-image: url("images/background.jpg");}
</style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />

</head>
<body>

<nav class="navbar navbar-inverse">
  	<div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="default.jsp">Bug E-Tracking System</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="default.jsp">Home</a></li>
     
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
    String login1 = (String)session.getAttribute("login");
	if("yes".equals(login1))
	{%>
	<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span height="400px" class="glyphicon glyphicon-user">&nbsp;<%=(String)session.getAttribute("user")%></span><span class="caret"></span></a>
        <ul class="dropdown-menu">
        
          <li><a href="logout.jsp">Logout</a></li>
          </ul>
      </li>
	<%
	}
	else
	{
	%>
    <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
   <%
	}
   %>
   
   </ul>
   </div>
  </nav>
<div  class="row">
<div class="col-sm-3">
</div>
<div class="col-sm-6">
<div class="panel panel-warning">
<div class="panel-heading">Login Error</div>
<div class="panel-body">
<img src="images/bug.jpg" width="134" height="74" /><br/>

You are not Authorized to view this page.<br/> 
Your have been logged as some other type of User. <br /> Re-Login after <a href="logout.jsp">Logout</a></div>
<br/>
<br/>
<br/>
<br/>
	
<br/><br/>

 
</div>
    </div>
    </div>
<footer class="container-fluid text-center">
  <p>All Copyright © <br/> Bug E-Tracking System</p>
</footer>

</body>
</html>
