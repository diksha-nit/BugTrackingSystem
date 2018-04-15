<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<style>
body{background-image: url("images/background.jpg");}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>Welcome - About Us</title>
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
      <li class="active"><a href="aboutus.jsp">About Us</a></li>
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
      		<div class="panel-heading">BTS : About Us</div>
      		<div class="panel-body">
    		</div>
    		The purpose of Bug E-Tracking System is to provide better service to the administrator or useful for applications developed in an organization.   
Bug tracking is the process of reporting and tracking the progress of bugs from discovery through to resolution, where a bug is defined as a deviation from requirements. Other terminology frequently used to describe this process include 
<br/><br/><br/><br/><br/><br/>

    		
    		
					</div>
					</div>
					</div>
<br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>

<footer class="container-fluid text-center">
  <p>All Copyright © <br/> Bug E-Tracking System</p>
</footer>

</body>
</html>
