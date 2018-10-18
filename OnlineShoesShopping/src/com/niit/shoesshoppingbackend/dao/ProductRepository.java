package com.niit.shoesshoppingbackend.dao;

import java.util.List;
import com.niit.shoesshoppingbackend.model.Product;

public interface ProductRepository 
{
	boolean addProduct(Product product);
	boolean updateProduct(Product product);
	boolean deleteProduct(Product product);
	List<Product> getProduct();
	Product getAllProductByProductName(String productId);
	Product getAllProductByProductCategory(String productCategory);
	}


