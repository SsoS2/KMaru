package com.kmaru.controller;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kmaru.service.UserService;

@RestController
@RequestMapping("/user")
public class UserRESTController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserRESTController.class);
	
	private UserService uService;
	
	@RequestMapping(value = "/userIdCheck")
	public int userIdCheck(String us_id) throws Exception{
		logger.debug("REST : userIdCheck()");
		if(us_id != null) {
			Optional<String> result = Optional.ofNullable(uService.userIdCheck(us_id));
			logger.debug("result"+result);
			if(!result.equals(us_id)) {
				return 1;
			}
			return 0;
		}
		return -1;
	}
}
