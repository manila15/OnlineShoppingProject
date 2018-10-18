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
<div class="container" style="padding-top:30px;">
<div class="card mx-auto" style="width:30rem;" >
  <div class="card-body">
    <h5 class="card-title text-center"style="color:darkblue;"><b>Category</b></h5>

	<form action="AddCategory" method="post">
		  		
		  		<div class="form-group">
   					<label for="categoryId"><b>Category ID</b></label>
    				<input type="text" class="form-control" name="categoryId" placeholder="Enter category Id">
			    </div>
		  		<div class="form-group">
   					<label for="categoryName"><b>Category Name</b></label>
    				<input type="text" class="form-control" name="categoryName" placeholder="Enter category name">
			    </div>
			    
			    <div class="form-group">
  					<label for="comment"><b>Category Description</b></label>
  					<textarea class="form-control" name="categoryDescription" rows="5" id="comment"></textarea>
				</div> 
			    
			<button type="submit" class="btn btn-primary">Add Category</button>
	</form>
	

  </div>
</div>
</div>

  
  <%@ include file="footer.jsp" %>
</body>
</html>