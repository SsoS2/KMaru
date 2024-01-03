package com.kmaru.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Spliterator;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kmaru.domain.BookVO;
import com.kmaru.domain.UsVO;
import com.kmaru.service.ClassService;



@Controller
@RequestMapping(value = "/class/*")
public class ClassController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClassController.class);
	
	
	@Inject
	private ClassService cService;



	
	
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
	public void classGET(Locale locale, Model model) throws Exception {
		logger.debug("classGET() 호출");
		
		// 현재 시간
		logger.debug("Welcome! The client locale is {}.", locale);
		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale); 
		DateFormat dateFormat = DateFormat.getDateTimeInstance();
		String formattedDate = dateFormat.format(date);
		logger.debug("Date : "+ formattedDate);
		String nowTime;
		int dayTime = 0;
		int day = formattedDate.indexOf("오전");
		if(day != -1) { // 오전이라면
			nowTime = formattedDate.substring(formattedDate.indexOf("오전")+3, formattedDate.indexOf(":"));
		}
		else { // 오후라면
			nowTime = formattedDate.substring(formattedDate.indexOf("오후")+3, formattedDate.indexOf(":"));
			dayTime = 12;
		}
		logger.debug("substring" + nowTime);
		
		model.addAttribute("nowTime", nowTime );
		model.addAttribute("dayTime", dayTime );
		
		logger.debug("연결된 뷰페이지(views/class/class.jsp)를 출력");
		
	}
	
	
	// http://localhost:8088/class/booking
	// 클래스 신청 상세페이지
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public void bookingGET(@RequestParam (required = false) String b_class,
							@RequestParam (required = false) String b_date,
							@RequestParam (required = false) String b_time,
							Model model, HttpSession session) throws Exception {
		logger.debug("bookingGET() 호출");
		
		// 세션 아이디
		String us_id = (String)session.getAttribute("us_id");
		
		// 예약 클래스 정보
		model.addAttribute("b_class", b_class);
		model.addAttribute("b_date", b_date);
		model.addAttribute("b_time", b_time);
		
		// 회원 정보 조회
		UsVO usVO = cService.info(us_id);
		model.addAttribute("us_info", usVO);
		
		logger.debug("연결된 뷰페이지(views/class/booking.jsp)를 출력");
		
	}
	
	// 클래스 예약하기
	@RequestMapping(value = "/classRev", method = RequestMethod.POST)
	public void classRevPOST(BookVO bookVO, Model model, HttpSession session) throws Exception {
		logger.debug("classRevPOST() 호출");
	
		// 예약 내역 저장
		cService.classRev(bookVO);
		
	}
	
	

		
	
	
}
