package com.niit.shoesshopping.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.niit.shoesshoppingbackend.dao.ProductRepository;
import com.niit.shoesshoppingbackend.dao.ProductRepositoryImpl;
import com.niit.shoesshoppingbackend.model.Product;

@WebServlet("/AddProduct")
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
				 maxFileSize=1024*1024*50,      	// 50 MB
				 maxRequestSize=1024*1024*100)   	// 100 MB

public class AddProduct extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String productName=request.getParameter("name");
		double productPrice=Integer.parseInt(request.getParameter("price"));
		String productDescription=request.getParameter("description");
		
		Product product=new Product();
		product.setProductId(null);
		product.setProductName(productName);
		product.setProductPrice(productPrice);
		product.setProductDescription(productDescription);
		
		Part part=request.getPart("image");
		InputStream fis=part.getInputStream();
		byte[] bytes = IOUtils.toByteArray(fis);
		String path="E:\\NiitProject\\OnlineShoesShopping\\WebContent\\images";
		String fileName=path+File.separator+product.getProductId()+".png";
		System.out.println(fileName);
		FileOutputStream fos=new FileOutputStream(fileName);
		fos.write(bytes);
		fos.close();
		
		/*
		 create table product(id varchar2(20) primary key,name varchar2(100),price number,description varchar2(1500),category_id references category(categoryi d));
		  */
		
		ProductRepository dao=new ProductRepositoryImpl();
		
		try 
		{
			if(dao.addProduct(product))
			{
				request.getRequestDispatcher("/product.jsp").forward(request, response);
			}
			
			else
			{
				request.getRequestDispatcher("/admin.jsp").forward(request, response);
			}
			
		}
		
		catch (Exception e) 
		{
			System.out.println("--------- INSIDE ADDPRODUCT.JAVA CATCH -----");
			e.printStackTrace();
		}
		
	}

}
