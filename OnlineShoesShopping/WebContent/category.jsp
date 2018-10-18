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
     
     
  <div style="margin-top: 10%; margin-left: 40%; margin-right: 0%;">
  <form style="border: 5px;">
 
    <table style="margin-bottom: 10%; margin-top: 10%">
    
    <tr>
    <td style="padding: 10px">
    <a href="addproduct.jsp"><input type="button" value="Add Product" style="background: #b3d1ff; width: 150px"/></a>
    </td>
    <td style="padding: 10px">
    <b>To add a new Product.</b>
    </td>
    </tr>
    <tr>
    <td style="padding: 10px">
    <a href="delete.jsp"><input type="button" value="Delete Product" style="background: #b3d1ff; width: 150px"/></a>
    </td>
    <td style="padding: 10px">
    <b>To delete Product.</b>
    </td>
    </tr>
    <tr>
    <td style="padding: 10px">
    <input type="button" value="Update Product" style="background: #b3d1ff; width: 150px"/>
    </td>
    <td style="padding: 10px">
    <b>To update Product.</b>
    </td>
    </tr>
    <tr>
    <td style="padding: 10px">
    <input type="button" value="Get Product" style="background: #b3d1ff; width: 150px"/>
    </td>
    <td style="padding: 10px">
    <b>To get any Product.</b>
    </td>
    </tr>
   
    </table>
 
    </form>
    </div>
    
    <jsp:include page="footer.jsp"/> 
</body>
</html>