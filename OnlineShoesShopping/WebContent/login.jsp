<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Login</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <body>
<div class="container" style="padding-top:50px; padding-bottom :40px;" >
	<div class="card mx-auto " style="width: 25rem;">
  		<div class="card-body">
  			<h5 class="card-title text-center"style="color:darkblue;">LOGIN</h5>
    		
  <form name="login" action="LoginServlet" method="post" onsubmit="return validate()">
  <div class="form-group">
    <label for="exampleInputEmail1"><b>Email address</b></label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1"><b>Password</b></label>
    <input type="password" class="form-control" name="password" id="exampleInputPassword" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Login</button>
</form>
   </br> 		
    		<p>Don't have an account? <a href="signup.jsp" class="card-link"><b>Create a new account</b></a></p>
  		</div>
	</div>
</div>

    <%@ include file="footer.jsp" %>
</body>
</html>