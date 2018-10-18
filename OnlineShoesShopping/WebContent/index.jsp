<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>WebSite</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="js/bootstrap.min.js">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.bundle.min.js"></script>
<style>
		img:hover{opacity:0.8;}
	</style>
   
</head>
<body>

            <!-- carousel -->
 
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"style="padding-top 5%" >
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner height:400px">
          <div class="carousel-item active">
              <!-- Use www.pixabay.com to download images -->
              <!-- Resize the image to 1920x655 resolution by visiting http://www.simpleimageresizer.com -->
            <img class="d-block w-100" src="images/corouselmen.png" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="images/corouselwomen.png" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="images/corouselkids.png" alt="Third slide"> 
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
        </div>
        
        <div class="container-fluid" style="padding-top: 5px;">
            <h1 class="display-4"  style="padding-bottom: 5px;" ></h1>

            <marquee behavior="alternate" scrollamount="15" direction="left"><h3 style="color:darkblue;font-family:Verdana, Geneva, sans-serif;font-size:36px">MEN FOOTWEAR</h3></marquee>
	
	
          <div class="row">
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/1.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Sports Shoes</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/2.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Formal Shoes </h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add<img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/33.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Casual Shoes </h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/4.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Casual Slippers</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/5.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Ethnic</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>

          </div>
        </div>


        <!--WOMEN FOOTWEAR -->
        <div class="container-fluid" style="padding-top: 5px;">
            <h1 class="display-4"  style="padding-bottom: 5px;" ></h1>
            <marquee behavior="alternate" scrollamount="15" direction="left"><h3 style="color:darkblue;font-family:Verdana, Geneva, sans-serif;font-size:36px">WOMEN FOOTWEAR</h3></marquee>
          <div class="row">
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/sandal.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Sandals</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add<img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/heel.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Heels</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/flats.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Flats</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/flipflop.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Flip-Flops</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/ethnic.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Ethnic</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" > </a>
                    </div>
                  </div>
            </div>

          </div>
        </div>
        <!--KIDS FOOTWEAR -->
        <div class="container-fluid" style="padding-top: 5px;">
            <h1 class="display-4"  style="padding-bottom: 5px;" ></h1>
            <marquee behavior="alternate" scrollamount="15" direction="left"><h3 style="color:darkblue;font-family:Verdana, Geneva, sans-serif;font-size:36px">KIDS FOOTWEAR</h3></marquee>
          <div class="row">
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/schoolshoes.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">School Shoes</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add<img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/slipper.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Casual Slippers</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/sneaker.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Sneakers</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/flipp.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Flip-Flops</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" ></a>
                    </div>
                  </div>
            </div>
            <div class="col-md">
                <div class="card" >
                    <img class="card-img-top" src="images/loafers.png" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Loafers</h5>
                      <a href="#" class="btn btn-primary">View<img src="images/eye.png" ></a>
                      <a href="cart.jsp" class="btn btn-primary">Add <img src="images/cart.png" > </a>
                    </div>
                  </div>
            </div>
                 </div>
        </div>
<%@ include file="footer.jsp" %>
        </body>
</html>