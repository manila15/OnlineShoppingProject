package com.niit.shoesshopping.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.shoesshoppingbackend.config.ConnectionProvider;
import com.niit.shoesshoppingbackend.dao.CustomerRepository;
import com.niit.shoesshoppingbackend.dao.CustomerRepositoryImpl;
import com.niit.shoesshoppingbackend.model.Customer;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    RequestDispatcher rd;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("----------- INSIDE POST --------");
		 Connection con=ConnectionProvider.getConnection();
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		Long contact=Long.parseLong(request.getParameter("contact"));
        String gender=request.getParameter("gender");
        Customer customer=new Customer();
        customer.setCustomerName(name);
        customer.setCustomerPassword(password);
        customer.setCustomerEmail(email);
        customer.setCustomerContact(contact);
        customer.setCustomerGender(gender);
        CustomerRepository dao=new CustomerRepositoryImpl();
         if(dao.addCustomer(customer))
         {
        	 rd=request.getRequestDispatcher("/login.jsp");
        	 rd.forward(request,response);
         }
         else
         {
        	 out.println("there is some error pleasse fill form again");
        	 rd=request.getRequestDispatcher("/signup.jsp");
        	 rd.include(request,response);
         }
        
	}

}
