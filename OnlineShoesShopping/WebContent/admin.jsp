<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"/><br>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Admin Page</title>
</head>
<body>
<center>
<div class="container" style="padding-top:10px;">
<div class="card" style="width: 30rem;">
  <div class="card-body">
    <h6 class="display-4 "><b>Admin</b></h6><br>
	
	<form action="ProductOperation" method="post">
		<p><input type="submit" name="action" style="width:10rem;" value="Add Product" class="btn btn-primary"> &nbsp;<b>To add a new product</b></p>
		<br>
		<p><input type="submit" name="action" style="width:10rem;" value="Add Category" class="btn btn-primary">&nbsp;&nbsp;<b>To add Category</b></p>
	</form>
	
	</div>
	</div>    
</div>
</center>

<jsp:include page="footer.jsp"/>

</body>
</html>