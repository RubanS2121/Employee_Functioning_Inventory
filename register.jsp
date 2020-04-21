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

if(document.form1.empid.value=="")
	{
	alert("Enter the Employee ID");
	document.form1.empid.focus();
	return false;
	}

var s1=document.form1.empid.value;
var res=s1.substring(0,2);
var res2=s1.substring(0,3);
	if(document.form1.utype.value=="HR" && res!="HR")
	{
	alert("Employee ID must start with HR");
	document.form1.empid.focus();
	return false;
	}
	if(document.form1.utype.value=="EMP" && res2!="EMP")
	{
	alert("Employee ID must start with EMP");
	document.form1.empid.focus();
	return false;
	}
if(document.form1.utype.value=="EMP" && document.form1.empid.value.length!=9)
	{
	alert("Employee ID must 6 characters after EMP");
	document.form1.empid.focus();
	return false;
	}
	if(document.form1.utype.value=="HR" && document.form1.empid.value.length!=8)
	{
	alert("Employee ID must 6 characters after HR");
	document.form1.empid.focus();
	return false;
	}
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
	if(document.form1.pass.value=="")
	{
	alert("Enter the Password");
	document.form1.pass.focus();
	return false;
	}
	if(document.form1.pass.value.length<6)
	{
	alert("Password length must be minimum 6 characters");
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
    <%@ include file="include/link_home.jsp" %>
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

 
 
<div class="row">
			<div class="col-lg-4">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
			
			
            <div class="col-lg-4">
              <div class="card">
                <div class="card-header d-flex align-items-center">
                  <h2 class="h5 display display">
                    <h2>Employee Registration</h2>
                  </h2>
                </div>
                <div class="card-block">
                  <p></p>
                  <form name="form1" method="post">
                    <div class="form-group">
                      <label>Type</label>
                      <select name="utype" class="form-control">
					  <option>HR</option>
					  <option>EMP</option>
					  </select>
					  
                    </div>
					<div class="form-group">
                      <label>Employee ID</label>
                      <input type="text" name="empid" placeholder="Employee ID" class="form-control">
                    </div>
					
					<div class="form-group">
                      <label>Name</label>
                      <input type="text" name="name" placeholder="Name" class="form-control">
                    </div>
                    <div class="form-group">
                      <label>Gender</label>
                      <input name="gender" type="radio" value="Male" />
            Male 
            <input name="gender" type="radio" value="Female" />
            Female 
            
                    </div>
               
					<div class="form-group">
                      <label>Date of Birth</label>
                      <input type="date" name="dob" placeholder="D.O.B" class="form-control">
                    </div>
                    <div class="form-group">
                      <label>Address</label>
                      <input type="text" name="address" placeholder="Address" class="form-control">
                    </div>   
					                                
                    <div class="form-group">
                      <label>Mobile No.</label>
                      <input name="mobile" type="text" maxlength="10"  class="form-control">
                    </div>
					
                    <div class="form-group">
                      <label>Email</label>
                      <input type="text" name="email" placeholder="Email Address" class="form-control">
                    </div>
                  
                   
					<div class="form-group">
                      <label>Password</label>
                      <input type="password" name="pass" placeholder="Password" class="form-control">
                    </div> 
					<div class="form-group">
                      <label>Re-type Password</label>
                      <input type="password" name="repass" placeholder="Re-type Password" class="form-control">
                    </div>
					
				
					
                        
                    <div class="form-group">       
                      <input type="submit" name="btn" value="Register" class="btn btn-primary" onclick="return validate()">
                    </div>
                  </form>
                </div>
              </div>

</div>

</div>

<%
String msg="";

Statement stmt2=Con.createStatement();
Statement stmt3=Con.createStatement();



java.util.Calendar calendar = java.util.Calendar.getInstance();

                    String day = String.valueOf(calendar.get(java.util.Calendar.DATE));
                    String month = String.valueOf(calendar.get(java.util.Calendar.MONTH) + 1);
                    String year = String.valueOf(calendar.get(java.util.Calendar.YEAR));
		String rdate = day + "-" + month + "-" + year;	
try
{
String btn=request.getParameter("btn");
	if(btn.equals("Register"))
	{
            String utype=request.getParameter("utype");
	String empid=request.getParameter("empid");
	String name=request.getParameter("name");
	String gender=request.getParameter("gender");
	String dob=request.getParameter("dob");
	String address=request.getParameter("address");
	String mobile=request.getParameter("mobile");
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	
	int x=0;
	ResultSet rs2=stmt2.executeQuery("select * from efi_register where empid='"+empid+"'");
	while(rs2.next())
	{
	x++;
	}
	if(x==0)
	{
		/*String qry = "select max(id) as maxid from efi_register";
                    ResultSet rs = stmt.executeQuery(qry);
                    rs.next();
                    int id1 = rs.getInt("maxid");
                    int id2 = id1 + 1;*/

 String ins = "insert into efi_register(empid,utype,name,gender,dob,address,mobile,email,pass) values('" + empid + "','"+utype+"','"+name+"','"+gender+"','"+dob+"','"+address+"','"+mobile+"','"+email+"','"+pass+"')";
                    //out.print(ins);
                    int n=stmt.executeUpdate(ins);
					if(n==1)
					{
					%>
					<script language="javascript">
					alert("Registered Successfully");
					window.location.href="index.jsp?act=success";
					</script>
					<%
					}
					else
					{
					%>
					<script language="javascript">
					window.location.href="register.jsp?act=wrong";
					</script>
					<%
					}
					
	}
	else
	{
	%>
	<script language="javascript">
	alert("This Employee ID has already exist!");
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

<!-- row end -->

<div class="row">
	<div class="col-lg-4">
					
					<!-- A grey horizontal navbar that becomes vertical on small screens -->
	</div>
	<div class="col-lg-4">
			<div class="card">
					
					<div class="card-block" align="center">
					Have an account? <a href="index.jsp">Login</a>
					</div>
			</div>
	</div>
</div>			

  <p>&nbsp;</p>
</body>
</html>