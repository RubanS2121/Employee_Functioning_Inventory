<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="include/dbconnect.jsp" %>
<%
String msg="";


try
{
String btn=request.getParameter("btn");
String un=request.getParameter("uname");
String pw=request.getParameter("pass");
	if(btn.equals("Sign In"))
	{
	String utype=request.getParameter("utype");
		if(utype.equals("HR"))
		{
	
		String qry="select * from efi_register where empid='"+un+"' && pass='"+pw+"' && utype='HR'";
		ResultSet rs=stmt.executeQuery(qry);
			if(rs.next())
			{
			session.setAttribute("username",un);
			
			response.sendRedirect("admin.jsp");
			}
			else
			{
			msg="Invalid User!";
			}
			
		}
		else
		{
		String qry="select * from efi_register where empid='"+un+"' && pass='"+pw+"' && utype='EMP'";
		ResultSet rs=stmt.executeQuery(qry);
			if(rs.next())
			{
			session.setAttribute("username",un);
			
			response.sendRedirect("userhome.jsp");
			}
			else
			{
			msg="Invalid User!";
			}
		}		
	}	

}
catch(Exception e)
{

}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><%@ include file="include/title.jsp" %></title>
<link rel="shortcut icon" href="img/icon.ico">

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

  <%@ include file="include/link_home.jsp" %>
 <div class="panel panel-default">
  <div class="panel-heading" align="center"><!--<img src="img/header.jpg" width="1060" height="276" />--></div>
  <div class="panel-body">
   <h3 align="center"></h3>
  </div>
</div>
 <!--start content area-->
		
<h3 align="center"><%@ include file="include/title.jsp" %></h3>
<div class="row">

			<div class="col-lg-1">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
			<div class="col-lg-4"><img src="img/campus.jpeg" width="585" height="357" />
			  <!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
			<div class="col-lg-2">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
            <div class="col-lg-4">
              <div class="card">
                <div class="card-header d-flex align-items-center">
                  <h2 class="h5 display display">
                    <h2>Employee Login</h2>
                  </h2>
                </div>
                <div class="card-block">
                  <p></p>
                  <form name="form1" method="post">
                   <div class="form-group">
                      <label>Type</label>
                      <select name="utype" class="form-control">
					  <option>HR</option>
					  <option>Employee</option>
					  </select>
					  
                    </div>
					<div class="form-group">
                      <label>Username</label>
                      <input type="text" name="uname" placeholder="Employee ID" class="form-control" required>
                    </div>
                    <div class="form-group">       
                      <label>Password</label>
                      <input type="password" name="pass" placeholder="Password" class="form-control" required>
                    </div>
                    <div class="form-group">       
                      <input type="submit" name="btn" value="Sign In" class="btn btn-primary">
                    </div>
					<div class="msg"><?php echo $msg; ?></div>
					<a href="register.jsp">Sign Up</a>
                  </form>
                </div>
              </div>
			</div>
			
			
			
</div>			
<!--end content area-->


  <p>&nbsp;</p>
</body>
</html>