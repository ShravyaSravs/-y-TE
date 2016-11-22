package com.niit.shoppingcart.controllers;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.shoppingcart.DAO.*;
import com.niit.shoppingcart.model.*;

@Controller
public class Categorycontroller {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value="/categorygson")
	@ResponseBody
	public String CategoryGson()
	{
		List<Category> list=categoryDAO.list();
		Gson gson=new Gson();
		String data=gson.toJson(list);
		return data;
	}
	
	/*@RequestMapping(value="/",method = RequestMethod.GET)
	public String landPage(@ModelAttribute("category")Category item,BindingResult result,Model model)
	{
		
		model.addAttribute("allCategory",categoryDAO.list());
		return "Category";
		
	}
	 
	@RequestMapping(value="/allCategory")
	public String getAllData(@ModelAttribute("category")Category item,BindingResult result,Model model)
	{
	
		model.addAttribute("allCategory",categoryDAO.list());
		return "Category";
	}
	@RequestMapping(value="/addItem",method = RequestMethod.POST)
public String addItem(@ModelAttribute("category") Category c){
		
		this.categoryDAO.saveOrUpdate(c);
		return "redirect:allCategory";
		
	}*/
	

	@RequestMapping(value="/Category",method = RequestMethod.GET)
	public ModelAndView landPage(@ModelAttribute("category")Category category,BindingResult result,Model model)
	{
		ModelAndView mv=new ModelAndView("/Category");
		mv.addObject("userclickedcategory", "true");
		mv.addObject("allCategory",categoryDAO.list());
		return mv;
		
	}
	 
	
@RequestMapping(value="/addCategory")
public String addItem(@ModelAttribute("category") Category c){
		
		categoryDAO.saveOrUpdate(c);
		return "redirect:/Category";
		
	}
	@RequestMapping(value="/CategoryEditById/{id}",method = RequestMethod.GET)
	public String editItem(@PathVariable("id") int id,RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("category", categoryDAO.get(id));
		return "redirect:/Category";
		
		
}
	@RequestMapping(value="/CategoryDeleteById/{id}",method = RequestMethod.GET)
	public String deleteItem(@PathVariable("id") int id,Category category)
	{
		categoryDAO.delete(category);
		return "redirect:/Category";
		
}
}

