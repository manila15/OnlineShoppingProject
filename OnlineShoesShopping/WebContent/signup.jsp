<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
</head>
<body>
 <div class="container" style="padding-top:10px; width:27rem;">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header"><b style="color:darkblue;">SignUp an Account</b></div>
        <div class="card-body">
          <form action="signup" method="post" >
                  <div class="form-label-group">
                  <label for="confirmPassword"><b>Name</b></label>
                    <input type="text" name="name" id="customerNmae" class="form-control" placeholder="Name" required="required">
                  </div>
          </br>
                  <div class="form-label-group">
                  <label for="EmailId"><b>Email</b></label>
                    <input type="text" name="email" id="customerEmail" class="form-control" placeholder="Email" required="required">
                  </div>  
          </br>
                  <div class="form-label-group">
                  <label for="Password"><b>Password</b></label>
                    <input type="password" name="password" id="customerPassword" class="form-control" placeholder="Password" required="required">
                  </div>  
          </br>
                   <label class="radio-inline">
                    <label for="customerGender"><b>Gender</b></label>
           </br>
                <input type="radio" name="gender" value="Male">Male
               </label>
               <label class="radio-inline">
               <input type="radio" name="gender" value="Female">Female
              </label>
           </br>    
              <div class="form-label-group">
              <label for="inputConatctno"><b>Contact No.</b></label>
             <input type="contact" name="contact" id="inputContactno" class="form-control" placeholder="+91" required="required">
              </div>
          
          </br>
          <div class="text-center">
         <input type="submit" class="btn btn-primary" value="Signup" >
      <a class="d-block small mt-3" href="login.jsp"><b>Login Page</b></a>
        </div>
        </div>
      </div>
    </div>
    </form>
<%@ include file="footer.jsp" %>
</body>
</html>