package com.kmaru.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value = "/class/*")
public class ClassController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClassController.class);
	


	
	
	// http://localhost:8088/class/res_introduce
	// 채팅GET - 미완성 
	@RequestMapping(value = "/res_introduce", method = RequestMethod.GET)
	public void introduceGET() throws Exception {
		logger.debug("introduceGET() 호출");
		
		logger.debug("연결된 뷰페이지(views/class/res_introduce.jsp)를 출력");
		
	}
	
	
	
	
}
