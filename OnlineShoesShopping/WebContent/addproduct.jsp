<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"/>
   <br>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
       <div class="container" style="padding-top:10px;">

<div class="card" style="width: 40rem;">
  <div class="card-body">
     
     
<div class="form-group">
    	<label for="name"><b>Product Id</b></label>
    	<input type="text" class="form-control" name="id" placeholder="Enter Product Id">
  	</div>
    
 <label for="name"><b>Product Category</b></label>
	<form action="AddProduct" method="post" enctype="multipart/form-data">

	<div class="input-group mb-3">
	  	  <div class="input-group-prepend">
    			
		  </div>
	  	  <select class="custom-select" id="inputGroupSelect01" name="categoryId">
	  	  			<option value="101">Men </option>
					<option value="102">Women </option>
					<option value="103">Kids </option>
		</select>
	</div>

  	<div class="form-group">
    	<label for="name"><b>Product Name</b></label>
    	<input type="text" class="form-control" name="name" placeholder="Enter Product Name">
  	</div>
  	<br>
  	<div class="input-group mb-3">
  		<div class="input-group-prepend">
    		<span class="input-group-text" name="image">Product Image</span>
  		</div>
  		
  		<div class="custom-file">
    		<input type="file" class="custom-file-input" name="image" aria-describedby="inputGroupFileAddon01">
    		<label class="custom-file-label" for="inputGroupFile01">Choose Product Image</label>
		</div>
	</div>  	
  	
  	<div class="form-group">
 	   <label for="productPrice"><b>Product Price</b></label>
 	   <input type="text" class="form-control" name="price" placeholder="Enter Product Price">
  	</div>
  	
  	<div class="form-group">
    	<label for="name"><b>Product Quantity</b></label>
    	<input type="text" class="form-control" name="quantity" placeholder="Enter Product Quantity">
  	</div>
  	
  	
  	<div class="form-group">
  		<label for="comment"><b>Product Description</b></label>
  		<textarea class="form-control" name="description" rows="2" id="comment"></textarea>
	</div>
  	
	<button type="submit" class="btn btn-primary">Add</button>
	</form>

  </div>
</div>
</div>
</center>
  <%@ include file="footer.jsp" %>
</body>
</html>