<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Welcome - Adding Expert!</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
<style>
body{background-image: url("images/background.jpg");}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.off{height:100%;width:60%;align:center;float:left;padding-left:30%;}
</style>
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
<div class="col-sm-3">
<div class="panel panel-info">
<div class="panel-heading">Menu </div>
<div class="panel-body">
<a href="bugsadmin.jsp">View Bugs</a>
	<br/>
	<br/>
	<a href="configexp.jsp">Configure Experts</a>
	<br/>
	<br/>
	<a href="addexpert.jsp">Add Expert</a>
</div>	
</div>
</div>


<div class="col-sm-6">
<div class="panel panel-success">
<div class="panel-heading">Adding Expert</div>
<div class="panel-body">

<center>
<%
if("blank".equals((String)request.getParameter("msg")))
out.println("<div class='color color.warning'>Field Blank | Password and Re-Enter Password mismatch.</div>");
else if("error".equals((String)request.getParameter("msg")))
out.println("<div class='color color.warning'>Login Already exists.</div>");
%>
</center>
    <form id="form1" name="form1" method="post" action="SignUp">
      <table class="table">
        
        <tr>
          <th align="left">Login ID </th>
          <td><input type="text" name="loginid" size="20" class="form-control"/></td>
        </tr>
        <tr>
          <th align="left">Password</th>
          <td><input type="password" name="password" size="20" class="form-control"/></td>
        </tr>
        <tr>
          <th align="left">Re-Enter Password </th>
          <td><input type="password" name="repassword" size="20" class="form-control"/></td>
        </tr>
        <tr>
          <th align="left">Name</th>
          <td><input type="text" name="name" size="20" class="form-control"/></td>
        </tr>
        <tr>
          <th align="left">E-Mail</th>
          <td><input type="text" name="email" size="20" class="form-control"/></td>
        </tr>
        
        <tr>
          <td align="right">
          <input type="hidden" name="type" value="Expert"/>
		  <input type="submit" value="Submit" class="btn btn-success"/></td>
		  <td><input type="reset" value="Reset" class="btn btn-success"/></td>
		  
          </tr>
      </table>
     </form>
  </div>
  </div>
  </div>
  </div>
  <footer class="container-fluid text-center">
  <p>All Copyright © <br/> Bug E-Tracking System</p>
</footer>   
     
    

</body>
</html>
