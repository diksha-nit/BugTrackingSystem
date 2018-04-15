<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitionasl//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{background-image: url("images/background.jpg");}
</style>
<title>Welcome - List of Bugs</title>

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
<div class="panel panel-success">
<div class="panel-heading">User Bug Reporting</div>
<div class="panel-body">
<a href="reportbug.jsp">Report A New Bug</a><br/><br/>
<a href="viewbugs.jsp">View Status</a><br/><br/>
<a href="logout.jsp">Logout</a><br/><br/>
</div>
</div>
</div>
<div class="col-sm-8">
<div class="panel panel-success">
<div class="panel-heading">Bug Status</div>
<div class="panel-body">
<table class="table">
<tr bgcolor="#0054A8" class="whitetext" align="center">  
<td>Bug ID</td>
<td>Product</td>
<td>Env.</td>
<td>Type</td>
<td>Synopsis</td>
<td>Status</td>
<td>&nbsp;</td>
</tr>
<%
try{
String u=(String)session.getAttribute("loginid");
System.out.println(u);
	Connection con=ConnectionProvider.getConnection();
	Statement stmt = con.createStatement();
	String query = "select * from bug where AUTHORID='"+u+"' order by bugid asc";
	ResultSet rs = stmt.executeQuery(query);
	int i=2;
	while(rs.next()){
	if(i%2==0)
	out.println("<tr bgcolor=#CEE7FF>");
	else
	out.println("<tr bgcolor=#E8F3FF >");
	i++;
	out.print("<td class=smalltext>"+rs.getString("bugid")+"</td>");
	out.print("<td class=smalltext>"+rs.getString("prodname")+"</td>");
	out.print("<td class=smalltext>"+rs.getString("env")+"</td>");
	out.print("<td class=smalltext>"+rs.getString("type")+"</td>");
	out.print("<td class=smalltext>");
	String des=rs.getString("description");
	if(des.length()>40)
	des=des.substring(0,40)+". . .";
	out.println(des);
	out.print("</td>");
	out.print("<td class=smalltext>"+rs.getString("status")+"</td>");
	out.print("<td class=smalltext><a href='bugdetails.jsp?bugid="+rs.getString("bugid")+"'>Detail</a></td>");	
	out.println("</tr>");		
	}
	
	out.print("<center><div align=left> Total Bugs: "+(i-2)+"</div></center>");
}catch(Exception e){
	System.out.print(e);
}  
%>
</table>
<div align="center"><hr width="100" /><a href="user.jsp">Back</a><hr width="100" /></div>
</div>
</div>
</div>
</div>
<footer class="container-fluid text-center">
  <p>All Copyright © <br/> Bug E-Tracking System</p>
</footer> 
</body>
</html>
