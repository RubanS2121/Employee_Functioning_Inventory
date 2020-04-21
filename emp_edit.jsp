<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="include/dbconnect.jsp" %>
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
<script language="javascript">
function validate()
{

if(document.form1.name.value=="")
	{
	alert("Enter the Name");
	document.form1.name.focus();
	return false;
	}
	if(document.form1.address.value=="")
	{
	alert("Enter the Address");
	document.form1.address.focus();
	return false;
	}
	
	if(document.form1.mobile.value=="")
	{
	alert("Enter the Mobile Number");
	document.form1.mobile.focus();
	return false;
	}
	if(isNaN(document.form1.mobile.value))
	{
	alert("Invaalid Mobile Number!");
	document.form1.mobile.select();
	return false;
	}
	if(document.form1.mobile.value.length!=10)
	{
	alert("Mobile Number must be 10 digits");
	document.form1.mobile.select();
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
	
return true;
}

</script>	
</head>

<body>
  
<%@ include file="include/link_user.jsp" %>
 <!--start content area-->
 <%
 String msg="";
String uname=(String)session.getAttribute("username");


Statement stmt2=Con.createStatement();
Statement stmt33=Con.createStatement();

ResultSet row=stmt2.executeQuery("select * from efi_register where empid='"+uname+"'");
row.next();
String name1=row.getString("name");
String address1=row.getString("address");
String mobile1=row.getString("mobile");
String email1=row.getString("email");
 
 %>
  <div class="panel panel-default">
  <div class="panel-heading" align="center"><span class="t1"><%@ include file="include/title.jsp" %></span></div>
  <div class="panel-body">
   <h3 align="center"></h3>
  </div>
</div>
<div class="row">
			<div class="col-lg-3">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
 	
			
			
            <div class="col-lg-6">
              <div class="card">
                <div class="card-header d-flex align-items-center">
                  <h2 class="h5 display display">
                    <h2>Employee Information</h2>
                  </h2>
                </div>
                <div class="card-block">
                  <p></p>
                  <form name="form1" method="post">
                    <div class="form-group">
                      <label>Employee ID</label>
                      <%=uname%>
                    </div>
					<div class="form-group">
                      <label>Name</label>
                      <input type="text" name="name" class="form-control" value="<%=name1%>">
                    </div>
                    <div class="form-group">
                      <label>Address</label>
                      <input type="text" name="address" class="form-control" value="<%=address1%>">
                    </div>
               
					<div class="form-group">
                      <label>Mobile No.</label>
                      <input type="text" name="mobile" class="form-control" value="<%=mobile1%>">
                    </div>
                   <div class="form-group">
                      <label>E-mail</label>
                      <input type="text" name="email" class="form-control" value="<%=email1%>">
                    </div>
                    
					
                    <div class="form-group">       
                      <input type="submit" name="btn" value="Update" class="btn btn-primary" onclick="return validate()">
                    </div>
                  </form>
                </div>
              </div>
			  
</div>
<%
try
{
String btn=request.getParameter("btn");
	if(btn.equals("Update"))
	{
	
	String name=request.getParameter("name");
	String address=request.getParameter("address");
	String mobile=request.getParameter("mobile");
	String email=request.getParameter("email");
	


 String ins = "update efi_register set name='"+name+"',address='"+address+"',mobile='"+mobile+"',email='"+email+"' where empid='"+uname+"'";
                    //out.print(ins);
                    int n=stmt.executeUpdate(ins);
					if(n==1)
					{
					%>
					<script language="javascript">
					window.location.href="userhome.jsp";
					</script>
					<%
					}
					
	}	

}
catch(Exception e)
{
//out.print(e.getMessage());
}


%>


  <p>&nbsp;</p>
</body>
</html>