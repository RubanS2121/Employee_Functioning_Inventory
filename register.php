<?php
session_start();
include("include/dbconnect.php");
extract($_REQUEST);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><?php include("include/title.php"); ?></title>
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
    <?php include("include/link_home.php"); ?>
 <div class="panel panel-default">
  <div class="panel-heading" align="center"><span class="t1"><?php include("include/title.php"); ?></span></div>
  <div class="panel-body">
   <h3 align="center"></h3>
  </div>
</div>
 <!--start content area-->

<div class="row">
			<div class="col-lg-4">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
			 <?php
				if($_REQUEST['act']=="success")
				{
				?>
				<div class="alert alert-success">
				  <strong>Register Success!</strong> <a href="index.php">Login</a>
				</div>
				<?php
				}
				if($_REQUEST['act']=="wrong")
				{
				?>
				
				<div class="alert alert-warning">
				  <strong>Warning!</strong> This Student already exist!
				</div>
				<?php
				}
				?>
			
           
</div>			

 
 
<div class="row">
			<div class="col-lg-4">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
			
			
            <div class="col-lg-4">
              <div class="card">
                <div class="card-header d-flex align-items-center">
                  <h2 class="h5 display display">
                    <h2>Student Registration</h2>
                  </h2>
                </div>
                <div class="card-block">
                  <p></p>
                  <form name="form1" method="post" enctype="multipart/form-data">
                    
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
                      <input name="contact" type="text" maxlength="10"  class="form-control">
                    </div>
					
                    <div class="form-group">
                      <label>Email</label>
                      <input type="text" name="email" placeholder="Email Address" class="form-control">
                    </div>
                  
                    <div class="form-group">
                      <label>Rollno</label>
                      <input type="text" name="rollno" placeholder="Rollno" class="form-control">
                    </div>    
					<div class="form-group">
                      <label>Department</label>
                      <select name="dept" class="form-control">
					  <option>CSE</option>
					  <option>IT</option>
					  <option>ECE</option>
					  <option>EEE</option>
					  <option>Mech</option>
					  <option>Civil</option>
					  </select>
                    </div>    
					<div class="form-group">
                      <label>Year</label>
                      <select name="year" class="form-control">
					  <option>First</option>
					  <option>Second</option>
					  <option>Third</option>
					  <option>Final</option>
					  </select>
                    </div>   
					<div class="form-group">
                      <label>CGPA %</label>
                      <input type="text" name="cgpa" placeholder="CGPA" class="form-control">
                    </div>  
					<div class="form-group">
                      <label>10th Mark %</label>
                      <input type="text" name="mark1" placeholder="10th" class="form-control">
                    </div> 
					<div class="form-group">
                      <label>12th Mark %</label>
                      <input type="text" name="mark2" placeholder="12th" class="form-control">
                    </div> 
					
                   <div class="form-group">
						  <label>History of Arrear</label>
                      <input type="radio" name="history" value="Yes"> Yes
					  <input type="radio" name="history" value="No" /> No
                    </div>
					<div class="form-group">
                      <label>Current Arrear</label>
                      <input type="text" name="current" placeholder="Current Arrear" class="form-control">
                    </div> 
					<div class="form-group">
                      <label>Arrear Count</label>
                      <input type="text" name="acount" placeholder="Arrear Count" class="form-control">
                    </div> 
					<div class="form-group">
                      <label>Photo</label>
                      <input type="file" name="file" class="form-control">
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
<!-- row end -->

<div class="row">
	<div class="col-lg-4">
					
					<!-- A grey horizontal navbar that becomes vertical on small screens -->
	</div>
	<div class="col-lg-4">
			<div class="card">
					
					<div class="card-block" align="center">
					Have an account? <a href="index.php">Login</a>
					</div>
			</div>
	</div>
</div>			
 <?php
 $msg="";
	 	
	 if(isset($btn))
	 {
                                                      
$max_qry = mysql_query("select max(id) maxid from students");
$max_row = mysql_fetch_array($max_qry);
	$id=$max_row['maxid']+1;
	$rdate=date("d-m-Y");
	
	if($_FILES['file']['name']!="")
	{
	$photo="F".$id.".jpg";
	move_uploaded_file($_FILES['file']['tmp_name'],"upload/".$photo);
	}
	$idt=explode("-",$dob);
	$dob1=$idt[2]."-".$idt[1]."-".$idt[0];
	
	
		$q1="insert into students(id,name,gender,dob,address,contact,email,rollno,dept,year,cgpa,mark1,mark2,history,current,acount,photo,pass) values($id,'$name','$gender','$dob1','$address','$contact','$email','$rollno','$dept','$year','$cgpa','$mark1','$mark2','$history','$current','$acount','$photo','$pass')";
		$q2=mysql_query($q1);
 		if($q2)
		{
			
	 ?>
	 <script language="javascript">
	 window.location.href="register.php?act=success";
	 </script>
	 <?php
	 	}
		else
		{
		 ?>
	 <script language="javascript">
	 window.location.href="register.php?act=wrong";
	 </script>
	 <?php
		}
	
	
	 
	 
}
?>
<!--end content area-->
  <p align="center" class="msg"><?php
  if($msg!="")
  {
  echo $msg;
  }
  ?></p>
  <p>&nbsp;</p>
</body>
</html>