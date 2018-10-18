package com.niit.shoesshoppingbackend.dao;

import java.util.List;

import com.niit.shoesshoppingbackend.model.Category;

public interface CategoryRepository 
{
public boolean addCategory(Category category);
public boolean updateCategory(Category category);
public boolean deleteCategory(Category category);
List<Category> getAllCategories();
Category getCategoryByCategoryId(int categoryId);
}



