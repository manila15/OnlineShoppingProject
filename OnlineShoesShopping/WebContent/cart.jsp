<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        
    <center>
        <img src="images/cartjsp.png" alt="Your bag is empty" style="margin-top:  5%"/><br/>
        Your Cart is empty,<br/><a href="index.jsp"> Click here for shopping.</a>
    </center>
    <div style="margin-top: 20%">
    <a href="index.jsp"><img src="images/continueshopping.png" alt="continue shopping" style="width: 20%; float: left;"/></a>
    <img src="images/checkout.png" alt="checkout" style="width: 15%; float: right;"/>
    </div>
    <br>
    <jsp:include page="footer.jsp"/>
</body>
</html>