package com.niit.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.shoesshoppingbackend.dao.CategoryRepository;
import com.niit.shoesshoppingbackend.dao.CategoryRepositoryImpl;
import com.niit.shoesshoppingbackend.model.Category;

@WebServlet("/AddCategory")
public class AddCategory extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    
    public AddCategory() 
    {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		
		Category category=new Category();
		category.setCategoryId(categoryId);
		category.setCategoryName(categoryName);
		category.setCategoryDescription(categoryDescription);
		
		CategoryRepository dao=new CategoryRepositoryImpl();
		
		try 
		{
			if(dao.addCategory(category))
			{
				request.getRequestDispatcher("/admin.jsp").forward(request, response);
			}
			
			else
			{
				request.getRequestDispatcher("/addcategory.jsp").forward(request, response);
			}
		}
		
		catch (Exception e) 
		{
			System.out.println("---------------- EXCEPTION FROM ADD CATEGORY----------------");
			e.printStackTrace();
		}
	}
}