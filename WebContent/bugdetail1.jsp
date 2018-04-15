<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style>
body{background-image: url("images/background.jpg");}
</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Welcome - Bug Detail</title>

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
<div class="col-sm-1">
</div>
<div class="col-sm-10">
<div class="panel panel-success">
<div class="panel-heading">Your Bug Detail</div>
<div class="panel-body">
<table class="table">
<tr bgcolor="#0054A8" class="whitetext" align="center">
<%
try{
    Connection con=ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	String query = "select * from bug where bugid="+(String)request.getParameter("bugid");
	ResultSet rs = stmt.executeQuery(query);
	while(rs.next()){
	out.print("<tr><td bgcolor=#F2F2F2>Bug ID</td><td>"+rs.getString("bugid")+"</td><td bgcolor=#F2F2F2>Author</td><td>"+rs.getString("author")+"</td></tr>");
	out.print("<tr><td bgcolor=#F2F2F2>Product Name</td><td colspan=3>"+rs.getString("prodname")+"</td></tr>");
	out.print("<tr><td bgcolor=#F2F2F2>Environment</td><td>"+rs.getString("env")+"</td><td bgcolor=#F2F2F2>Type</td><td>"+rs.getString("type")+"</td></tr>");
	out.print("<tr><td colspan=4 bgcolor=#F2F2F2>Description</td></tr>");	
	out.print("<tr><td colspan=4 >"+rs.getString("description")+"</td></tr>");
	out.print("<tr><td bgcolor=#F2F2F2>Priority</td><td colspan=3>"+rs.getString("priority")+"</td></tr>");
	
	out.print("<tr><td bgcolor=#F2F2F2>Status</td><td>"+rs.getString("status")+"</td><td bgcolor=#F2F2F2>Responsible</td><td>"+rs.getString("assign_to")+"</td></tr>");
	}
	rs.close();
	stmt.close();
	con.close();
}catch(Exception e){
	System.out.print(e);
}  
%>
<tr>

<table class="table table-responsive">
<tr><td colspan="2" bgcolor="#0054A8" class="whitetext">Audit Trail</td></tr>
<tr bgcolor=#F2F2F2><td class="smalltext" width="150">Expert</td><td class="smalltext">Comments</td></tr>
<%

try{
	 Connection con=ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	String query = "select * from solutions where bugid="+(String)request.getParameter("bugid");
	ResultSet rs = stmt.executeQuery(query);
	while(rs.next()){
	out.print("<tr>");
	out.print("<td class=smalltext>"+rs.getString("expert")+"</td>");
	out.print("<td class=smalltext>"+rs.getString("soln")+"</td>");
	out.print("</tr>");	
	}
	rs.close();
	stmt.close();
	con.close();
}catch(Exception e){
	System.out.print(e);
}  

%>
</table>
</tr>
</table>
<div align="center"><hr width="100" /><a href="bugsadmin.jsp">Back</a><hr width="100" /></div>
</div>
</div>
</div>
</div>
 <footer class="container-fluid text-center">
  <p>All Copyright © <br/> Bug E-Tracking System</p>
</footer>
</body>
</html>
