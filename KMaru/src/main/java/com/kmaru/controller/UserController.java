package com.kmaru.controller;


import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jca.cci.core.InteractionCallback;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kmaru.domain.UsVo;
import com.kmaru.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService uService;
	
	//http://localhost:8088/user/userSingUp
	@RequestMapping(value = "/userSingUp", method = RequestMethod.GET)
	public String userSignUpGET() {
		logger.debug("userSignUpGET()");
		return "/user/userSignUp";
	}
	
	@RequestMapping(value = "/userSignUp",method = RequestMethod.POST) 
	public String userSignUpPOST(UsVo vo, MultipartHttpServletRequest multiRequest,Model model) throws Exception {
		
		//회원가입
	 	logger.debug("userSignUpPOST()");
	  	logger.debug("vo : "+vo);
	  	uService.userSignUp(vo);
	  	
	  	//프로필사진 업로드
	  	String file = "";
	  	Iterator<String> fileNames = multiRequest.getFileNames();
	  	while(fileNames.hasNext()) {
	  		String fileName = fileNames.next();
	  		logger.debug("fileName : "+fileName);
	  		
	  		MultipartFile mfile = multiRequest.getFile(fileName);
	  		String oFileName = mfile.getOriginalFilename();
	  		file = oFileName;
	  		
	  		
	  		File profile = new File(multiRequest.getRealPath("\\upload\\")+fileName);
	  		logger.debug("realPath : "+multiRequest.getRealPath("\\upload"));
	  		
	  		if(mfile.getSize() != 0) {
	  			if(!profile.exists()) {
	  		  		if(profile.getParentFile().mkdirs()) {
	  		  			profile.createNewFile();
	  		  			profile.delete();
	  		  		}
	  		  	}
	  			mfile.transferTo(new File(multiRequest.getRealPath("\\upload\\")+oFileName));
	  			logger.debug("파일업로드 성공");
	  		}
	  	}//while
	  	logger.debug("file : "+file);
	  	
	  	model.addAttribute("profile", file);
	  	
	  	return "redirect:/user/userLogin"; 
	}
	
}
