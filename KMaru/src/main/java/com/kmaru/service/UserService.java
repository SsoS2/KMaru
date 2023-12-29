package com.kmaru.service;


import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.kmaru.domain.UsVO;
import com.kmaru.persistence.UserDAO;

@Service(value = "UserService")
public class UserService {
	
	
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Inject
	private UserDAO udao;
	
	@Inject
	private JavaMailSender mailSender;
	
	//회원가입
	public void userSignUp(UsVO vo) throws Exception{
		logger.debug("service : userSignUp()");
		udao.userSignUp(vo);
	}
	
	//회원가입 아이디 중복체크
	public String userIdCheck(String us_id) throws Exception{
		logger.debug("service : userIdCheck()");
		return udao.userIdCheck(us_id);
	}
	
	//로그인
	public UsVO userLogin(UsVO vo) throws Exception{
		logger.debug("service : userLogin()");
		UsVO resultVO = udao.userLogin(vo);
		return resultVO;
	}
	
	// 아이디 찾기
	public String userFindIdCompare(UsVO vo) throws Exception{
		logger.debug("service : userFindIdCompare()");
		return  udao.userFindIdCompare(vo);
	}
	
	// 비밀번호 찾기
	public String userFindPw(UsVO vo) throws Exception{
		logger.debug("service : userFindPw()"+vo);
		logger.debug("service : "+udao.userFindPw(vo));
		return udao.userFindPw(vo);
	}
	
	// 메일보내기
	@Async
	public void sendMail(String to,String subject,String content) throws Exception{
		logger.debug("service : sendMail() 시작");
		MimeMessage msg = mailSender.createMimeMessage();
		MimeMessageHelper msgHelper = new MimeMessageHelper(msg,true,"UTF-8");
		
		msgHelper.setTo(to);
		msgHelper.setSubject(subject);
		msgHelper.setText(content,true);
		
		mailSender.send(msg);
		logger.debug("service : sendMail() 끝");
	}
}
