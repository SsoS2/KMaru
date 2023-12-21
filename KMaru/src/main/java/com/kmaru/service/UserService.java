package com.kmaru.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.kmaru.domain.UsVO;
import com.kmaru.persistence.UserDAO;

@Service(value = "UserService")
public class UserService {
	
	
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Inject
	private UserDAO udao;
	
	//회원가입
	public void userSignUp(UsVO vo) throws Exception{
		logger.debug("service : userSignUp(UsVO vo)");
		udao.userSignUp(vo);
	}
	
	//회원가입 아이디 중복체크
	public String userIdCheck(String us_id) throws Exception{
		logger.debug("service : userIdCheck(String us_id)");
		return udao.userIdCheck(us_id);
	}
	
	//로그인
	public UsVO userLogin(UsVO vo) throws Exception{
		logger.debug("service : userLogin(UsVO vo");
		UsVO resultVO = udao.userLogin(vo);
		
		return resultVO;
	}
}
