package com.niit.shoesshoppingbackend.dao;

import java.util.List;

import com.niit.shoesshoppingbackend.model.Customer;

public interface CustomerRepository 
{
	public boolean addCustomer(Customer customer);
	public boolean updateCustomer(Customer customer);
	public boolean deleteCustomer(Customer customer);
	public List <Customer> getAllCustomer();
	public Customer getCustomerById(String customerId);
	public Customer getCustomerByCustomerName(String customerEmail);
	public boolean validate(String customerEmail,String customerPassword);

}

