<%@page import="java.io.LineNumberReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<%@page import="java.security.MessageDigest" %>
<%@ page import="org.apache.commons.fileupload.*, java.util.List, java.io.File, java.util.Iterator"%>
<%@ page import="org.apache.commons.io.*" %>
<%@page import="javax.crypto.SecretKeyFactory"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.spec.PBEParameterSpec"%>
<%@page import="javax.crypto.spec.PBEKeySpec"%>
<%@page import="java.util.Random"%>
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
  
<%@ include file="include/link_admin.jsp" %>
 <!--start content area-->
 <%
 String msg="";
String uname=(String)session.getAttribute("username");


Statement stmt2=Con.createStatement();
Statement stmt33=Con.createStatement();

ResultSet row=stmt2.executeQuery("select * from efi_register where empid='"+uname+"'");
row.next();

 
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
                    <h2>Chage Profile Photo</h2>
                  </h2>
                </div>
                <div class="card-block">
                  <p></p>
                  <form name="form1" method="post" enctype="multipart/form-data">
                   
					<div class="form-group">
                      <label>Photo</label>
                      <input type="file" name="file">
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
String fn ="";
String fileName="";
String ftype="";
 String modify_time="";
 double fsize1=0,fsize2=0;
 int fsize3=0;
			//if(fileContent != null){
            //String SFile = request.getParameter("SFile");
            String ImagePath = "";
            boolean isMultipart = FileUpload.isMultipartContent(request);

            // if not, send to message page with the error message
            if (!isMultipart) {
                request.getRequestDispatcher("edit_photo2.jsp").forward(request, response);
                return;
            }

            // now lets create a handler for the upload request.
            DiskFileUpload upload = new DiskFileUpload();

            // parse this request by the handler
            // this gives us a list of items from the request
            List items = upload.parseRequest(request);

            // now iterate over this list
            Iterator itr = items.iterator();

            while (itr.hasNext()) {

                FileItem item = (FileItem) itr.next();

                // check if the current item is a form field or an uploaded file
                if (item.isFormField()) {

                    // get the name of the field
                    String fieldName = item.getFieldName();


                } else {

                    // the item must be an uploaded file
                    // save it to disk
                    File f = new File(config.getServletContext().getRealPath("/") +"upload/");
                    if (f.exists() == false) {
                        f.mkdir();
                    }
                    File fullFile = new File(item.getName());
					fn=uname+".jpg";
                    File savedFile = new File(getServletContext().getRealPath("/") +"upload/", fn);
                    item.write(savedFile);
					fsize1=savedFile.length();					
					
                    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

	           modify_time=sdf.format(savedFile.lastModified());

                    fileName=fullFile.getName();
                    ////
                  File  fileType=new File(item.getContentType());
                  ftype=""+fileType;
                  //out.print(fileType);
                    ////
                   
                }
            }

    
	%>
	<script language="javascript">
	window.location.href="admin.jsp";
	</script>
	<%
	//}

}
catch(Exception e)
{
  // out.print(e.getMessage());
}
%>  


  <p>&nbsp;</p>
</body>
</html>