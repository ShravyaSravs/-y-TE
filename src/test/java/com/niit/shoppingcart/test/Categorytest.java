/*package com.niit.shoppingcart.test;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.DAO.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class Categorytest {
	
	@Autowired
	AnnotationConfigApplicationContext context;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	@Before 
	public void init(){
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		category = (Category) context.getBean("category");
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		
	}
	
	@Test
	public void createCategorytest(){
		
		category.setId("mob1");
		category.setName("samsung");
		category.setDescription("mob");
		
		Assert.assertEquals("Create Category" , true, categoryDAO.saveOrUpdate(category));
	}
	
	@Test
	public void updateCategorytest(){
		
		category.setId("mob1");
		category.setName("mi");
		category.setDescription("mob");
		
		Assert.assertEquals("Update Category" , true, categoryDAO.saveOrUpdate(category));
	}
	
}*/