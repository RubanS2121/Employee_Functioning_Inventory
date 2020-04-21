<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Calendar"%>
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
    <%@ include file="include/link_user.jsp" %>
 <div class="panel panel-default">
  <div class="panel-heading" align="center">
    <h2 align="center">Hours </h2>
	<%
String msg="";

Statement stmt2=Con.createStatement();
Statement stmt3=Con.createStatement();
String uname=(String)session.getAttribute("username");

String mon1="";
String day1="";
java.util.Calendar calendar = java.util.Calendar.getInstance();

                    String day = String.valueOf(calendar.get(java.util.Calendar.DATE));
                    String month = String.valueOf(calendar.get(java.util.Calendar.MONTH) + 1);
                    String year = String.valueOf(calendar.get(java.util.Calendar.YEAR));
					String hour = String.valueOf(calendar.get(java.util.Calendar.HOUR));
					String minute = String.valueOf(calendar.get(java.util.Calendar.MINUTE));
					String sec = String.valueOf(calendar.get(java.util.Calendar.SECOND));
		String rdate = day + "-" + month + "-" + year;	
		
		int dy=Integer.parseInt(day);
		if(dy<10)
		{
		day1="0"+dy;
		}
		
		int mon=Integer.parseInt(month);
		if(mon<10)
		{
		mon1="0"+mon;
		}
		String rdate1=year+"-"+month+"-"+day;

String timeformat = "HH:mm";
        SimpleDateFormat obDateFormat = new SimpleDateFormat(timeformat);
        Calendar time = Calendar.getInstance();
        //out.println("Time in 24-hour format :"+ obDateFormat.format(time.getTime()));

String stime=obDateFormat.format(time.getTime());
//out.print(stime);
int x=0;
ResultSet rs1=stmt2.executeQuery("select * from efi_hours where empid='"+uname+"' && rdate='"+rdate1+"' && status=0");
while(rs1.next())
{
x++;
}
%>
    <p align="center">
      <%
if(x==0)
{
%>
      <a href="user_hours.jsp?act=cin"><img src="img/clockin.jpg" /></a>
      <%
}
else 
{
%>
      <a href="user_hours.jsp?act=cout"><img src="img/clockout.jpg" /></a>
      <%
}



try
{
String act=request.getParameter("act");

	if(act.equals("cin"))
	{
	String qry = "select max(id) as maxid from efi_hours";
                    ResultSet rs = stmt.executeQuery(qry);
                    rs.next();
                    int id1 = rs.getInt("maxid");
                    int id2 = id1 + 1;
	String ins="insert into efi_hours(id,utype,empid,rdate,stime,etime,thours,status) values("+id2+",'EMP','"+uname+"','"+rdate1+"','"+stime+"','','','0')";	
	int n=stmt.executeUpdate(ins);
        response.sendRedirect("user_hours.jsp");
	}
	else 
	{
	ResultSet rs3=stmt3.executeQuery("select * from efi_hours where empid='"+uname+"' && rdate='"+rdate1+"' && status=0");
	rs3.next();
		String time1 = rs3.getString("stime");
		String time2 = stime;
 
		SimpleDateFormat format = new SimpleDateFormat("HH:mm");
		Date date1 = format.parse(time1);
		Date date2 = format.parse(time2);
		long difference = date2.getTime() - date1.getTime();
		long sec1=difference/1000;
		//out.println(difference/1000);
		
		long seconds = sec1;
        long p1 = seconds % 60;
        long p2 = seconds / 60;
        long p3 = p2 % 60;
        p2 = p2 / 60;
		String thours = p2+":"+p3;
        //out.print( p2 + ":" + p3 + ":" + p1);
	String up="update efi_hours set status=1,etime='"+stime+"',thours='"+thours+"' where empid='"+uname+"' && rdate='"+rdate1+"' && status=0";
	int n=stmt.executeUpdate(up);
     response.sendRedirect("user_hours.jsp");
	}

}
catch(Exception e)
{
}




%>
    </p>
    <form id="form1" name="form1" method="post" action="">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td align="left">Date: <%=rdate%></td>
          <td align="right"><a href="user_adjust.jsp">Adjustment</a></td>
        </tr>
      </table>
      <p align="right">&nbsp;</p>
      <table width="80%" border="1" align="center">
        <tr>
          <td class="btn-primary">Start Time </td>
          <td class="btn-primary">End Time </td>
          <td class="btn-primary">Total Hours </td>
        </tr>
        <%
  ResultSet rs3=stmt3.executeQuery("select * from efi_hours where empid='"+uname+"' && rdate='"+rdate1+"'");
while(rs3.next())
 { 
  %>
        <tr>
          <td><%=rs3.getString("stime")%></td>
          <td><%
	
	if(rs3.getString("etime").equals(""))
	{
	%>
            Ongoing
            <%
	}
	else
	{
	out.print(rs3.getString("etime"));
	}
	%>
          </td>
          <td><%=rs3.getString("thours")%> </td>
        </tr>
        <%
  }
  %>
      </table>
    </form>
    <p align="center"></p>
   <span class="t1"><%@ include file="include/title.jsp" %></span></div>
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

 
 

<h2 align="center">&nbsp;</h2>
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