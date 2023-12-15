package com.kmaru.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmaru.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService uService;
	
	//http://localhost:8088/user/userSingUp
	@RequestMapping("/userSingUp")
	public String userSignUp() {
		logger.debug("userSignUp()");
		return "/user/userSignUp";
	}
	
	/*
	 * @RequestMapping(value = "userSignUp",method = RequestMethod.POST) public
	 * String userSignUp() { logger.debug("");
	 * 
	 * return "redirect:/user/userLogin"; }
	 */
}
