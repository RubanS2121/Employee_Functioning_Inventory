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
	
<script language="javascript">
function validate()
{
if(document.form1.name.value=="")
	{
	alert("Enter the Name");
	document.form1.name.focus();
	return false;
	}
	if(document.form1.gender[0].checked==false && document.form1.gender[1].checked==false)
	{
	alert("Select the Gender");
	return false;
	}
	if(document.form1.dob.value=="")
	{
	alert("Enter the Date of Birth");
	document.form1.dob.focus();
	return false;
	}
	if(document.form1.address.value=="")
	{
	alert("Enter the Address");
	document.form1.address.focus();
	return false;
	}
	
	if(document.form1.contact.value=="")
	{
	alert("Enter the Mobile Number");
	document.form1.contact.focus();
	return false;
	}
	if(isNaN(document.form1.contact.value))
	{
	alert("Invaalid Mobile Number!");
	document.form1.contact.select();
	return false;
	}
	if(document.form1.contact.value.length!=10)
	{
	alert("Mobile Number must be 10 digits");
	document.form1.contact.select();
	return false;
	}

	if(document.form1.email.value=="")
	{
	alert("Enter the E-mail");
	document.form1.email.focus();
	return false;
	}

	reEmail=/^[\w-|+|'|]+(\.[\w-|+|'|]+)*@([a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*?\.[a-zA-Z]{2,6}|(\d{1,3}\.){3}\d{1,3})(:\d{4})?$/
	if(!(reEmail.test(document.form1.email.value))){
     alert("E-Mail Invalid");
        return false;
	} 
	if(document.form1.pass.value=="")
	{
	alert("Enter the Password");
	document.form1.pass.focus();
	return false;
	}
	if(document.form1.repass.value=="")
	{
	alert("Enter the Re-type Password");
	document.form1.repass.focus();
	return false;
	}
	if(document.form1.repass.value!=document.form1.pwd.value)
	{
	alert("New Password & Re-type password not equal!");
	document.form1.repass.select();
	return false;
	}
	
	
return true;
}

</script>	
</head>

<body>
    <%@ include file="include/link_master.jsp" %>
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

 
 <%
 try
{
String act=request.getParameter("act");
String tid=request.getParameter("tid");
	if(act.equals("yes"))
	{
	
	stmt.executeUpdate("update efi_adjust set status=1 where id="+tid+"");
	}
	else if(act.equals("no"))
	{
	
	stmt.executeUpdate("update efi_adjust set status=2 where id="+tid+"");
	}
	
	%>
					<script language="javascript">
					window.location.href="master_adjust.jsp";
					</script>
					<%
	
}
catch(Exception e)
{
}

ResultSet rs=stmt.executeQuery("select * from efi_adjust where utype='HR'");
 %>


<h2 align="center"> View Adjustment </h2>
<form id="form2" name="form2" method="post" action="">
  <div align="center"></div>
</form>
<form id="form1" name="form1" method="post" action="">
  <table width="80%" border="1" align="center">
    <tr>
      <td width="4%" class="btn-primary">Sno</td>
      <td width="14%" class="btn-primary">Emp ID </td>
      <td width="20%" class="btn-primary">Description</td>
      <td width="22%" class="btn-primary">Start </td>
      <td width="24%" class="btn-primary">End </td>
      <td width="16%" class="btn-primary"> Action </td>
    </tr>
    <%
  int i=0;
  while(rs.next())
  {
  i++;
  %>
    <tr>
      <td><%=i%></td>
      <td><%=rs.getString("empid")%></td>
      <td><%=rs.getString("detail")%></td>
      <td><%=rs.getString("sdate")+" "+rs.getString("stime")%></td>
      <td><%=rs.getString("edate")+" "+rs.getString("etime")%></td>
      <td><%
	if(rs.getInt("status")==1)
	{
	out.print("Accepted");
	}
	else if(rs.getInt("status")==2)
	{
	out.print("Declined");
	}
	else
	{
	%>
          <a href="master_adjust.jsp?act=yes&amp;tid=<%=rs.getInt("id")%>">Accept</a> / <a href="master_adjust.jsp?act=no&amp;tid=<%=rs.getInt("id")%>">Decline</a>
          <%
	}
	%>
      </td>
    </tr>
    <%
  }
  %>
  </table>
  <p align="center">&nbsp;</p>
</form>
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
</body>
</html>