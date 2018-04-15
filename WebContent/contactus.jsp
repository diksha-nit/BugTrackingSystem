<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<style>
body{background-image: url("images/background.jpg");}
</style>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
 	<title>Welcome - Contact Us</title>
</head>
<body background="green">
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
       <li class="active"><a href="contactus.jsp">Contact Us</a></li>
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
			<div class="col-sm-2">
			</div>
			<div class="col-sm-9">
			<div class="panel panel-info">
      		<div class="panel-heading">Contact Us </div>
      		<div class="panel-body">
			<p><h4>Head Office</h4><br/>
           Bug E-Tracking System <br/>
		<font color="sky blue">Address :- </font><br/>
Village - Nithari Sector - 31 <br/>
Noida, Gautam Budh Nagar (U.P.)
<br/>
Pincode :- 201301 
</p>

Mobile : <font color="blue">+91 9560401712</font>
</div>
</div>
</div>

</div>
<br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/>

<footer class="container-fluid text-center">
  <p>All Copyright © <br/> Bug E-Tracking System</p>
</footer>




</body>
</html>
