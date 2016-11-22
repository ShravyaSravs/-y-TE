package com.niit.shoppingcart.controllers;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.DAO.CategoryDAO;
import com.niit.shoppingcart.DAO.ProductDAO;
import com.niit.shoppingcart.DAO.UserDAO;
import com.niit.shoppingcart.model.User;

@Controller
public class Registercontroller {

 @Autowired
 UserDAO userDAO;
 
 @Autowired
 CategoryDAO categoryDAO;
 
 @Autowired
 ProductDAO productDAO;
 

	@RequestMapping(value = "LOGIN")
	public String DisplayLogin(Model mv) {
		mv.addAttribute("user", new User());
		mv.addAttribute("UserClickedlogin", "true");
		mv.addAttribute("HideOthers","true");
		return "LOGIN";
	}
	
	@RequestMapping(value = "REGISTER")
	public String DisplayRegister(Model mv) {
		mv.addAttribute("user", new User());
		mv.addAttribute("allCategory", categoryDAO.list());
		mv.addAttribute("allProduct", productDAO.list());
		mv.addAttribute("UserClickedregister", "true");
		mv.addAttribute("HideOthers","true");
		return "HOME";
	}

	@RequestMapping(value = "adduser", method = RequestMethod.POST)
	public String UserRegister(@ModelAttribute("user") User user, ModelAndView mv) {
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		userDAO.saveOrUpdate(user);
		mv.addObject("message", "Registration Success");
		return "redirect:/";
	}

	
	@RequestMapping(value = "CONTACTUS")
	public String Displaycontact(Model mv) {
		mv.addAttribute("UserClickedContact", "true");
		return "CONTACTUS";
	}
	
	@RequestMapping(value = "ABOUTUS")
	public String Displayabout(Model mv) {
		mv.addAttribute("UserClickedAbout", "true");
		return "ABOUTUS";
	}
	
	 @SuppressWarnings("unchecked")
	  @RequestMapping(value = "/login_session_attributes")
	  public String login_session_attributes(HttpSession session) {
	   String username = SecurityContextHolder.getContext().getAuthentication().getName();
	   User user = userDAO.get(username);
	   session.setAttribute("userid", user.getUserid());
	   session.setAttribute("name", user.getUsername());
	   session.setAttribute("LoggedIn", "true");

	   Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
	   .getAuthentication().getAuthorities();
	   String role="ROLE_USER";
	   for (GrantedAuthority authority : authorities) 
	   {
	     
	        if (authority.getAuthority().equals(role)) 
	        {
	         session.setAttribute("UserLoggedIn", "true");
	         //session.setAttribute("cartsize",CartDAO.getcartsize((int) session.getAttribute("userid")));
	         return "redirect:/";
	        }
	        else 
	        {
	         session.setAttribute("Administrator", "true");
	     return "/Admin";
	        }
	  }
	   return "/HOME";
	  
	  }
}