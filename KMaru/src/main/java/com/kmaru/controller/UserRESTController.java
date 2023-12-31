package com.kmaru.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kmaru.domain.UsVO;
import com.kmaru.service.UserService;

@RestController
@RequestMapping("/user")
public class UserRESTController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserRESTController.class);
	
	@Inject
	private UserService uService;
	
	@RequestMapping(value = "/userIdCheck")
	public int userIdCheck(String us_id) throws Exception{
		logger.debug("REST : userIdCheck()");
		String result = uService.userIdCheck(us_id);
			if(result.equals("0")) {
				return 1;
			}
		return 0;
	}
	
	@RequestMapping(value = "/userFindIdCompare")
	public String userFindIdCompare(UsVO vo) throws Exception{
		logger.debug("REST : userFindIdCompare()"+vo);
		String result = uService.userFindIdCompare(vo);
		logger.debug("result : "+result);
			if(result.equals("0")) {
				return result;
			}
		return result;
	}
}
