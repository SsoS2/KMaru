package com.kmaru.service;

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
	
	public void userSignUp(UsVO vo) throws Exception{
		logger.debug("service : userSignUp(UsVO vo)");
		udao.userSignUp(vo);
	}
	
	public UsVO userLogin(UsVO vo) throws Exception{
		logger.debug("service : userLogin(UsVO vo");
		UsVO resultVO = udao.userLogin(vo);
		
		return resultVO;
	}
}
