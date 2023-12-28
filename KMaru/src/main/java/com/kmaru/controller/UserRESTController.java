package com.kmaru.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kmaru.domain.UsVO;
import com.kmaru.service.UserService;

@RestController
@EnableAsync
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
				return "불일치";
			}
			
			StringBuffer text = new StringBuffer();
			text.append("<html>");
			text.append("<head></head>");
			text.append("<body>");
			text.append("<h1>안녕하세요 KMaru 입니다.</h1>");
			text.append("<h1>고객님의 아이디는 ");
			text.append(result);
			text.append(" 입니다.</h1>");
			text.append("</body>");
			text.append("</html>");
			uService.sendMail(/*"vo.getUs_email()"*/"wndnjs9326@naver.com","[KMaru] 아이디 안내 메일 입니다.","내용");
			
		return "일치";
	}
}
