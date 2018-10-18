package com.niit.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProductOperation")
public class ProductOperation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProductOperation() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");

		if("Add Product".equals(action))
		{
			request.getRequestDispatcher("/addproduct.jsp").forward(request, response);
		}
		
		else if("Add Category".equals(action))
		{
			request.getRequestDispatcher("/addcategory.jsp").forward(request, response);
		}
		

	}
}