<?php
session_start();
include("include/dbconnect.php");
extract($_REQUEST);
if(isset($btn))
{
			$qry = "select * from admin where username='$uname' && password='$pass'";
			$exe=mysql_query($qry);
			$num=mysql_num_rows($exe);
			if($num==1)
			{
				$_SESSION['uname']=$uname;
				
				header("location:admin.php");
			}
			else
			{
			$msg="Username or Password wrong!";
			}
}
	
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><?php include("include/title.php"); ?></title>
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
   <?php include("include/link_home.php"); ?>
 <div class="panel panel-default">
  <div class="panel-heading" align="center"><!--<img src="img/header.jpg" width="1060" height="276" />--></div>
  <div class="panel-body">
   <h3 align="center"></h3>
  </div>
</div>
 <!--start content area-->
  
<div class="row">
			<div class="col-lg-4">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
			
			
			
            <div class="col-lg-4">
              <div class="card">
                <div class="card-header d-flex align-items-center">
                  <h2 class="h5 display display">
                    <h2>Admin </h2>
                  </h2>
                </div>
                <div class="card-block">
                  <p></p>
                  <form name="name" method="post">
                   
					<div class="form-group">
                      <label>Username</label>
                      <input type="text" name="uname" placeholder="Username" class="form-control">
                    </div>
                    <div class="form-group">       
                      <label>Password</label>
                      <input type="password" name="pass" placeholder="Password" class="form-control">
                    </div>
                    <div class="form-group">       
                      <input type="submit" name="btn" value="Sign In" class="btn btn-primary">
                    </div>
					<div class="msg"><?php echo $msg; ?></div>
                  </form>
                </div>
              </div>
			</div>
			
			
			<div class="col-lg-4">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
</div>			
<!--end content area-->


<div class="row">
<div class="col-lg-4">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>
<div class="col-lg-4">
			  	<div class="card">
                
			</div>
			</div>
<div class="col-lg-4">
				
				<!-- A grey horizontal navbar that becomes vertical on small screens -->
			</div>

</div>
 
  <p>&nbsp;</p>
</body>
</html>