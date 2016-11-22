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
public class Suppliercontroller {
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	 @RequestMapping(value = "/suppliergson",method=RequestMethod.GET )
	 @ResponseBody
	 public String SupplierGson() {
	  List<Supplier> list = supplierDAO.list();
	  Gson gson = new Gson();
	  String data = gson.toJson(list);
	  return data;
	 }
	
/*	@RequestMapping(value="/",method = RequestMethod.GET)
	public String landPage(@ModelAttribute("supplier")Supplier supplier,BindingResult result,Model model)
	{
		
		model.addAttribute("allSupplier",supplierDAO.list());
		return "Supplier";
		
	}
	 
	@RequestMapping(value="/allSupplier")
	public String getAllData(@ModelAttribute("supplier")Supplier supplier,BindingResult result,Model model)
	{
	
		model.addAttribute("allSupplier",supplierDAO.list());
		return "Supplier";
	}
	
	@RequestMapping(value="/addItem",method = RequestMethod.POST)
	public String addItem(@ModelAttribute("supplier") Supplier s){
		
		this.supplierDAO.saveOrUpdate(s);
		return "redirect:allSupplier";
		
	}
*/	
	

	@RequestMapping(value="/Supplier",method = RequestMethod.GET)
	public ModelAndView landPage(@ModelAttribute("supplier")Supplier supplier,BindingResult result,Model model)
	{
		ModelAndView mv=new ModelAndView("/Supplier");
		mv.addObject("userclickedsupplier", "true");
		mv.addObject("allSupplier",supplierDAO.list());
		return mv;
		
	}
	 
	
@RequestMapping(value="/addSupplier")
public String addItem(@ModelAttribute("supplier") Supplier s){
		
		supplierDAO.saveOrUpdate(s);
		return "redirect:/Supplier";
		
	}
	@RequestMapping(value="/SupplierEditById/{id}",method = RequestMethod.GET)
	public String editItem(@PathVariable("id") int id,RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("supplier", supplierDAO.get(id));
		return "redirect:/Supplier";
		
}
	@RequestMapping(value="/SupplierDeleteById/{id}",method = RequestMethod.GET)
	public String deleteItem(@PathVariable("id") int id,Supplier supplier)
	{
		supplierDAO.delete(supplier);
		return "redirect:/Supplier";
		
}
}
