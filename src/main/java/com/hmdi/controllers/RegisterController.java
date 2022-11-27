package com.hmdi.controllers;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hmdi.dao.StudentDAO;
import com.hmdi.dao.userDAO;
import com.hmdi.models.user;


@Controller
public class RegisterController {

	
	@Autowired
	private userDAO userDAO;
	
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new user() );
		return mav;
	}
	
	
	
	@RequestMapping(value = "/registerform", method = RequestMethod.POST)
	public ModelAndView add_Register_in_DB(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute("user") user uuser) {
		
		userDAO.register(uuser);
		userDAO.registerRole(uuser);
		return new ModelAndView("login","usernname",uuser.getUsername());
	}
	
	
	
	
	
	
	
	
	
	
	
}
