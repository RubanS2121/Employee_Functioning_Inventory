<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="include/dbconnect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><%@ include file="include/title.jsp" %></title>
<link rel="shortcut icon" href="img/icon.ico">
<style type="text/css">
<!--
.box {
	background-color: #F3F3F3;
	height: 270px;
	width: 270px;
	border: 1px solid #A8A8A8;
	padding:10px;
}
.box1 {
	background-color: #F3F3F3;
	height: 100px;
	width: 270px;
	border: 1px solid #A8A8A8;
	padding:10px;
}
.box2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	padding:10px;
}
.box3 {
padding:10px;
}
.t1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
	font-weight: bold;
	color: #0066CC;
	font-variant: small-caps;
	text-transform: none;
}
.msg {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #FF0000;
}
.box4
{
width:250px;
height:35px;
}
-->
</style>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<link rel="shortcut icon" href="favicon.ico">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Style -->
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<link rel="shortcut icon" href="img/icon.ico">
<style type="text/css">
<!--
.box {
	background-color: #F3F3F3;
	height: 270px;
	width: 270px;
	border: 1px solid #A8A8A8;
	padding:10px;
}
.box1 {
	background-color: #F3F3F3;
	height: 100px;
	width: 270px;
	border: 1px solid #A8A8A8;
	padding:10px;
}
.box2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	padding:10px;
}
.box3 {
padding:10px;
}
.t1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
	font-weight: bold;
	color: #0066CC;
	font-variant: small-caps;
	text-transform: none;
}
.msg {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #FF0000;
}
.box4
{
width:250px;
height:35px;
}
-->

</style>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<link rel="shortcut icon" href="favicon.ico">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Style -->
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
	
	
</head>

<body>
<%
String msg="";
String uname=(String)session.getAttribute("username");
Statement stmt2=Con.createStatement();
Statement stmt3=Con.createStatement();
%>
<form id="form1" name="form1" method="post" action="">
    <%@ include file="include/link_user.jsp" %>
 <div class="panel panel-default">
  <div class="panel-heading" align="center"><span class="t1"><%@ include file="include/title.jsp" %></span></div>
  <div class="panel-body">
   <h3 align="center"></h3>
  </div>
</div>
 <!--start content area-->

<div class="row">
			<div class="col-lg-4">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
			
			<!--	<div class="alert alert-success">
				  <strong>Register Success!</strong> <a href="index.php">Login</a>
				</div>
				
				
				<div class="alert alert-warning">
				  <strong>Warning!</strong> This Student already exist!
				</div>-->
				
			
           
</div>			

 
 

<h2 align="center"> Report </h2>

  <div align="center">Date
    <input type="date" name="rdate" />
    <input type="submit" name="btn" value="Submit" />
  </div>
</form>
<p align="center">&nbsp;</p>
<%
try
{
String btn=request.getParameter("btn");
	if(btn.equals("Submit"))
	{
	String rdate=request.getParameter("rdate");
	//String[] rd=rdate.split("-");
	//String rdd=rd[2]+"-"+rd[1]+"-"+rd[0];
	
	ResultSet rs=stmt.executeQuery("select * from efi_hours where rdate='"+rdate+"' && empid='"+uname+"'");
%>
  <table width="80%" border="1" align="center">
  <tr>
    <td width="43%" class="btn-primary">Sno</td>
    <td width="57%" class="btn-primary">Time</td>
    </tr>
  <%
  int i=0;
  while(rs.next())
  {
  i++;
  %>
  <tr>
    <td><%=i%></td>
    <td><%=rs.getString("thours")%></td>
    </tr>
  <%
  }
  %>
</table>
<%

}
}
catch(Exception e)
{
}
%>
 <p align="center">&nbsp;</p>

<p align="center">&nbsp;</p>
<p>&nbsp; </p>
<div class="row">
	<div class="col-lg-4">
					
					<!-- A grey horizontal navbar that becomes vertical on small screens -->
	</div>
	<div class="col-lg-4">
		
	</div>
</div>			

  <p>&nbsp;</p>
 </form>
</body>
</html>