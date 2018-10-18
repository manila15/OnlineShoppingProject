package com.niit.shoesshoppingbackend.dao;

import com.niit.shoesshoppingbackend.config.ConnectionProvider;
import com.niit.shoesshoppingbackend.model.Customer;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository
{
    private Connection con=null;
    
	@Override
	public boolean addCustomer(Customer customer) {
	    try
	    {
	    	System.out.println(customer);
	      con=ConnectionProvider.getConnection();
	      System.out.println("connection ");
	      PreparedStatement pstmt=con.prepareStatement("insert into customer values(?,?,?,?,?,?)");
	      pstmt.setString(1,customer.getCustomerId());
	      pstmt.setString(2,customer.getCustomerName());
	      pstmt.setString(3,customer.getCustomerPassword());
	      pstmt.setString(4,customer.getCustomerEmail());
	      pstmt.setLong(5,customer.getCustomerContact());
	      pstmt.setString(6,customer.getCustomerGender());
	      
	      int result=pstmt.executeUpdate();
	      
	       if(result>0)
	    	  {
	    	   System.out.println(customer.getCustomerName() + " You Registered Successfully.");
	    	   return true;
	    	  }
	      
	    }catch(SQLException e)
	    {       
	    	    System.out.println("Customer could not be registered due to some exception!");
	         	System.out.println(e);
	    	return true;
	    }
	    return false;
	}

	@Override
	public boolean updateCustomer(Customer customer) {
		try
		{
			con=ConnectionProvider.getConnection();
			PreparedStatement pstmt=con.prepareStatement("update customer set customerName=? , customerEmail=? , customerPassword=? , customerContact=? , customerGender=? where CustomerId=?");
			pstmt.setString(1,customer.getCustomerName());
			pstmt.setString(2,customer.getCustomerEmail());
			pstmt.setString(3,customer.getCustomerPassword());
			pstmt.setLong(4,customer.getCustomerContact());
			pstmt.setString(5,customer.getCustomerGender());
			pstmt.setString(6,customer.getCustomerId());
			
			int result=pstmt.executeUpdate();
			
			if(result>0)
			{
				System.out.println(customer.getCustomerName() + ",your details is successfully updated!");
				return true;
			}
		}catch(SQLException ex)
		{
				System.out.println("Customer detail could not be updated");
				System.out.println(ex);
		}
		System.out.println("Customer detail could not be updated");
		return false;
		
	}

	@Override
	public boolean deleteCustomer(Customer customer) {
		try
		{
			con=ConnectionProvider.getConnection();
			PreparedStatement pstmt=con.prepareStatement("delete from customer where customerId=?");
			pstmt.setString(1,customer.getCustomerId());
			int result=pstmt.executeUpdate();
			if(result>0)
			{
				System.out.println(customer.getCustomerName() + "Your data is successfully deleted.");
				return true;
			}
		}catch(SQLException ee)
		{
			System.out.println("Could not be deleted due to any exception");
			System.out.println(ee);
		}
		System.out.println("could not be deleted");
		return false;
	}

	@Override
	public List<Customer> getAllCustomer() {
		try
		{
			
			List <Customer> list=new ArrayList<Customer>();
			con=ConnectionProvider.getConnection();
			Statement pstmt=con.createStatement();
		    ResultSet result=pstmt.executeQuery("select * from customer");
		    System.out.println("#---------Customer Details---------#");
		    while(result.next())
		    {
		    	System.out.println("Id:-" +result.getString(1)+ "\nName:-" +result.getString(2)+ "\nPassword:-" +result.getString(3)+ "\nEmail:-" +result.getString(4)+ "\nContact:-" +result.getLong(5)+ "\nGender:-" +result.getString(6));
		    	Customer customer=new Customer();
		    	customer.setCustomerId(result.getString(1));
		    	customer.setCustomerName(result.getString(2));
		    	customer.setCustomerPassword(result.getString(3));
		    	customer.setCustomerEmail(result.getString(4));
		    	customer.setCustomerContact(result.getLong(5));
		    	customer.setCustomerGender(result.getString(6));
		    	list.add(customer);
		    }
		    return list;
		}catch(SQLException ed)
		{
			System.out.println("Sorry Data could not be retreieved");
			System.out.println(ed);
		}
		System.out.println("Sorry! Data could not be retreieved");
		return null;
	}

	@Override
	public Customer getCustomerByCustomerName(String customerEmail) {
		try
		{
			con=ConnectionProvider.getConnection();
			PreparedStatement pstmt=con.prepareStatement("select * from customer where customerEmail=?");
			ResultSet result=pstmt.executeQuery();
			if(result.next())
			{
	System.out.println("Id:-" +result.getString(1)+ "Name:-" +result.getString(2)+ "Password:-" +result.getString(3)+ "Email:-" +result.getString(4)+ "Contact:-" +result.getLong(5)+ "Gender:-" +result.getString(6));
	Customer customer=new Customer();
	customer.setCustomerId(result.getString(1));
	customer.setCustomerName(result.getString(2));
	customer.setCustomerPassword(result.getString(3));
	customer.setCustomerEmail(result.getString(4));
	customer.setCustomerContact(result.getLong(5));
	customer.setCustomerGender(result.getString(6));
	return customer;
			}
		}catch(SQLException ew)
		{
			System.out.println("Sorry Customer data could not be retreived.");
			System.out.println(ew);
			
		}
		return null;
	}
	
	public Customer getCustomerById(String customerId)
	{
		try
		{
			con=ConnectionProvider.getConnection();
			PreparedStatement pstmt=con.prepareStatement("select * from customer where customerId=?");
			ResultSet result=pstmt.executeQuery();
			if(result.next())
			{
	System.out.println("Id:-" +result.getString(1)+ "\nName:-" +result.getString(2)+ "\nPassword:-" +result.getString(3)+ "\nEmail:-" +result.getString(4)+ "\nContact:-" +result.getLong(5)+ "\nGender:-" +result.getString(6));
	Customer customer=new Customer();
	customer.setCustomerId(result.getString(1));
	customer.setCustomerName(result.getString(2));
	customer.setCustomerPassword(result.getString(3));
	customer.setCustomerEmail(result.getString(4));
	customer.setCustomerContact(result.getLong(5));
	customer.setCustomerGender(result.getString(6));
	return customer;
			}
		}catch(SQLException se)
		{
			System.out.println("Sorry invalid customerId.");
			System.out.println(se);
		}
		return null;
	}

	
	@Override
	public boolean validate(String customerEmail, String customerPassword) {
		try
		{
			con=ConnectionProvider.getConnection();
			PreparedStatement pstmt=con.prepareStatement("select * from customer where customerEmail=? and customerPassword=?");
			ResultSet result=pstmt.executeQuery();
			Customer customer=new Customer();
		    if(result.next())
			{
		    customer.setCustomerEmail(result.getString(1));
		    customer.setCustomerPassword(result.getString(2));
			System.out.println("");	
			}
		}catch(SQLException se)
		{
			
			System.out.println(se);
		}
		return false;

	}

	

}

