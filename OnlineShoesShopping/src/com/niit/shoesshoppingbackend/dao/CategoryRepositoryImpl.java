package com.niit.shoesshoppingbackend.dao;

import com.niit.shoesshoppingbackend.config.ConnectionProvider;
import com.niit.shoesshoppingbackend.model.Category;

import java.sql.ResultSet;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class CategoryRepositoryImpl implements CategoryRepository
 {
	
	@Override
	public boolean addCategory(Category category) {
		
		try(Connection con = ConnectionProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement("insert into Category values(?,?,?)");) 
		{	
			pstmt.setInt(1,category.getCategoryId());  
			pstmt.setString(2,category.getCategoryName());
			pstmt.setString(3,category.getCategoryDescription());
			
			int result = pstmt.executeUpdate();
			
			if(result>0) {
				System.out.println("Category inserted successfuly!");
				return true;
			}	
		}catch(SQLException e) {
			System.out.println(e);
		}
		
		System.err.println("Category failed to insert!");
		return false;
	}

	@Override
	public boolean updateCategory(Category category) {
		
		try(Connection con = ConnectionProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement("update Category set name=?, desc=? where id=?");) 
		{
			pstmt.setString(1,category.getCategoryName());
			pstmt.setString(2,category.getCategoryDescription());
			pstmt.setInt(3,category.getCategoryId());
			
			int result = pstmt.executeUpdate();
			
			if(result>0) {
				System.out.println("Category updated successfuly!");
				return true;
			}
		}catch(SQLException e) {
			System.out.println(e);
		}
		
		System.err.println("Category failed to update!");
		return false;
	}

	@Override
	public boolean deleteCategory( Category category) {
		
		try (Connection con = ConnectionProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement("delete from Category where id=?");)
		{	
			pstmt.setInt(1,category.getCategoryId());
			
			int result = pstmt.executeUpdate();
			
			if(result>0) {
				System.out.println("Category deleted successfuly!");
				return true;
			}
		}catch(SQLException e) {
			System.out.println(e);
		}
		
		System.err.println("Category failed to delete!");
		return false;
	}

	@Override
	public List<Category> getAllCategories() {
		
		List<Category> list = new ArrayList<Category>();
		Category cat;
		
		try(Connection con = ConnectionProvider.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from Category");) 
		{
			System.out.println("------------------Categories-------------------\n\n");
			while(rs.next())
			{
				System.out.println("Id: " + rs.getInt(1) + "\nName: " + rs.getString(2) + "\nDescription: " + rs.getString(3));
				cat = new Category();
				cat.setCategoryId(rs.getInt(1));
				cat.setCategoryName(rs.getString(2));
				cat.setCategoryDescription(rs.getString(3));
				list.add(cat);
			}
			return list;
		}
		catch(SQLException e) {
			System.err.println("Category data could not be retrieved!");
			System.out.println(e);
		}
		
		return null;
	}

	@Override
	public Category getCategoryByCategoryId(int categoryId) {
		
		try (Connection con = ConnectionProvider.getConnection();
				PreparedStatement pstmt = con.prepareStatement("select * from Category where id=?");) 
		{	
			pstmt.setInt(1,categoryId);
			
			ResultSet rs = pstmt.executeQuery();
			
			System.out.println("-----------------Category Details------------------\n\n");
			if(rs.next())
			{
				System.out.println("Id: " + rs.getInt(1) + "\nName: " + rs.getString(2) + "\nDescription: " + rs.getString(3));
				Category cat = new Category();
				cat.setCategoryId(rs.getInt(1));
				cat.setCategoryName(rs.getString(2));
				cat.setCategoryDescription(rs.getString(3));
				return cat;
			}
		}catch(SQLException e) {
			System.err.println("Category data could not be retrieved!");
			System.out.println(e);
		}
		
		return null;
	}

}



