package com.niit.shoesshopping.controller;
import java.io.IOException;
 
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.niit.shoesshoppingbackend.config.ConnectionProvider;
import com.niit.shoesshoppingbackend.dao.CustomerRepository;
import com.niit.shoesshoppingbackend.dao.CustomerRepositoryImpl;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{
	private Connection con=null;
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;
    public LoginServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
	     con=ConnectionProvider.getConnection();
		 PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		CustomerRepository customer=new CustomerRepositoryImpl();
		if(email.equals("admin@gmail.com") && password.equals("admin"))
		{
			rd=request.getRequestDispatcher("admin.jsp");
			rd.forward(request, response);
		}
		else if(customer.validate(email,password))
		{
			
		
		//PreparedStatement statement=con.prepareStatement("select * from customer  where customerEmail=? and customerPassword=?");
		//ResultSet result=statement.executeQuery();
		//if(result.next())
		//{
		HttpSession session=request.getSession();	
		session.setAttribute("customer",email);
		session.setAttribute("customer",password);
		rd=request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	
	    }
		else
		{
			rd=request.getRequestDispatcher("/login.jsp");
			rd.include(request,response);
		}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}

