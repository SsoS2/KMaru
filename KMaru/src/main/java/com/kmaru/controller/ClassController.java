package com.kmaru.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kmaru.service.ClassService;



@Controller
@RequestMapping(value = "/class/*")
public class ClassController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClassController.class);
	
	
	/* @Inject private ClassService cService; */



	
	
	// http://localhost:8088/class/introduce
	// 사이트 소개
	@RequestMapping(value = "/introduce", method = RequestMethod.GET)
	public void introduceGET() throws Exception {
		logger.debug("introduceGET() 호출");
		
		logger.debug("연결된 뷰페이지(views/class/res_introduce.jsp)를 출력");
		
	}
	
	// http://localhost:8088/class/classNotice
	// 클래스 신청시 공지사항
	@RequestMapping(value = "/classNotice", method = RequestMethod.GET)
	public void classNoticeGET() throws Exception {
		logger.debug("classNoticeGET() 호출");
		
		logger.debug("연결된 뷰페이지(views/class/classNotice.jsp)를 출력");
		
	}
	
	// http://localhost:8088/class/class
	// 클래스 선택
	@RequestMapping(value = "/class", method = RequestMethod.GET)
	public void classGET() throws Exception {
		logger.debug("classGET() 호출");
		
		logger.debug("연결된 뷰페이지(views/class/class.jsp)를 출력");
		
	}
	
	
	// http://localhost:8088/class/booking
	// 클래스 신청 상세페이지
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public void bookingGET() throws Exception {
		logger.debug("classGET() 호출");
		
		logger.debug("연결된 뷰페이지(views/class/booking.jsp)를 출력");
		
	}
	
	
	
	
}
