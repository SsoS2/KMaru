package com.kmaru.controller;


import java.io.File;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.util.Iterator;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kmaru.domain.UsVO;
import com.kmaru.service.UserService;

@Controller
@EnableAsync
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService uService;
	
	//http://localhost:8088/user/userSignUp
	@RequestMapping(value = "/userSignUp", method = RequestMethod.GET)
	public String userSignUpGET() {
		logger.debug("userSignUpGET()");
		return "/user/userSignUp";
	}
	
	@RequestMapping(value = "/userSignUp",method = RequestMethod.POST) 
	public String userSignUpPOST(UsVO vo, MultipartHttpServletRequest multiRequest, Model model) throws Exception {
		
		//회원가입
	 	logger.debug("/userSignUpPOST()");
	  	logger.debug("vo : "+vo);
	  	uService.userSignUp(vo);
	  	
//	  	//프로필사진 업로드
//		
//		String file = "";
//		Iterator<String> fileNames = multiRequest.getFileNames();
//		while (fileNames.hasNext()) {
//			String fileName = fileNames.next();
//			logger.debug("fileName : " + fileName);
//
//			MultipartFile mfile = multiRequest.getFile(fileName);
//			String oFileName = mfile.getOriginalFilename();
//			file = oFileName;
//
//			File profile = new File(multiRequest.getRealPath("\\upload\\") + fileName);
//			logger.debug("realPath : " + multiRequest.getRealPath("\\upload"));
//
//			if (mfile.getSize() != 0) {
//				if (!profile.exists()) {
//					if (profile.getParentFile().mkdirs()) {
//						profile.createNewFile();
//						profile.delete();
//					}
//				}
//				mfile.transferTo(new File(multiRequest.getRealPath("\\upload\\") + oFileName));
//				logger.debug("파일업로드 성공");
//			}
//		} // while 
//		logger.debug("file : "+file);
//
//		model.addAttribute("profile", file);
		 
	  	
	  	return "redirect:/user/userLogin"; 
	}
	
	//http://localhost:8088/user/userLogin
	@RequestMapping(value = "/userLogin",method = RequestMethod.GET)
	public String userLiginGET() {
		logger.debug("userLoginGET()");
		return "/user/userLogin";
	}
	
	@RequestMapping(value = "/userLogin", method = RequestMethod.POST)
	public String userLoginPost(UsVO vo, HttpSession session) throws Exception{
		logger.debug("userLoginPost()");
		
		UsVO resultVO = uService.userLogin(vo);
		logger.debug("resultVO : "+resultVO);
		
		if(resultVO == null) {
			return "redirect:/user/userLogin";
		}
		
		session.setAttribute("us_id", resultVO.getUs_id());
		
		return "redirect:/KMaru";
	}
	
	@RequestMapping(value = "/userFindId", method = RequestMethod.GET)
	public String userFindIdGET() {
		logger.debug("userFindIdGET()");
		return "/user/userFindId";
	}
	
	@RequestMapping(value = "/userFindPw", method = RequestMethod.GET)
	public String userFindGET() {
		logger.debug("userFindGET()");
		return "/user/userFindPw";
	}
	
	@RequestMapping(value = "/userFindPw", method = RequestMethod.POST)
	public String userFindPost(UsVO vo,Model model) throws Exception{
		logger.debug("userFindPost()");
		String us_pw = uService.userFindPw(vo);
		String us_email = vo.getUs_email();
		logger.debug("us_pw : "+us_pw);
		logger.debug("us_email : "+us_email);
		model.addAttribute("us_pw", us_pw);
		model.addAttribute("us_email", us_email);
		return "redirect:/user/sendMail";
	}
	
	@RequestMapping("/sendMail")
	public String sendMail(String us_pw,String us_email,HttpServletResponse response) throws Exception{
		logger.debug("sendMail()");
		
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				try {
					
					StringBuffer text = new StringBuffer();
					text.append("<html>");
					text.append("<head></head>");
					text.append("<body>");
					text.append("<h1>안녕하세요 KMaru 입니다.</h1>");
					text.append("<h1>고객님의 비밀번호는 ");
					text.append(us_pw);
					text.append(" 입니다.</h1>");
					text.append("<a href='http://localhost:8088/KMaru'> KMaru 홈페이지 </a>");
					text.append("</body>");
					text.append("</html>");
					uService.sendMail(us_email,"[KMaru] 비밀번호 안내 메일 입니다.",text.toString());
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}).start();
		
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('비밀번호가 메일로 발송되었습니다. \\n미발송시 입력한 내용 확인부탁드립니다.'); location.href='/user/userLogin';");
		out.println("</script>");
		
		out.flush();
		
		return "redirect:/user/userLogin";
	}
	
	@RequestMapping(value = "/userInfo",method = RequestMethod.GET)
	public String userInfoGET(HttpSession session,Model model) throws Exception {
		logger.debug("userInfoGET()");
		
		String us_id = (String)session.getAttribute("us_id");
		logger.debug("us_id"+us_id);
		
		UsVO vo = uService.userInfo(us_id);
		logger.debug("vo: "+vo);
		model.addAttribute("vo", vo);
		
		return "/user/userInfo";
	}
	
	@RequestMapping(value = "/userInfoUpdatePwCheck", method = RequestMethod.GET)
	public String userInfoUpdatePwCheckGET() throws Exception{
		logger.debug("userInfoUpdatePwCheckGET()");
		return "/user/userInfoUpdatePwCheck";
	}
	
	@RequestMapping(value = "/userInfoUpdatePwCheck", method = RequestMethod.POST)
	public String userInfoUpdatePwCheckPost(HttpSession session, String us_pw,HttpServletResponse response) throws Exception{
		logger.debug("userInfoUpdatePwCheckPost()");
		
		String us_id = (String)session.getAttribute("us_id");
		
		logger.debug("us_id :"+us_id);
		String pw = uService.userInfoUpdatePwCheck(us_id);
		
		logger.debug("us_pw :"+us_pw+"pw :"+pw);
		
		if(us_pw.equals(pw)) {
			return "redirect:/user/userInfoUpdate";
			
		}else {
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호를 다시입력해주세요'); location.href='/user/userInfoUpdatePwCheck';");
			out.println("</script>");
			
			out.flush();
		}
		
		return null;
	}
	
	@RequestMapping(value = "/userInfoUpdate", method = RequestMethod.GET)
	public String userInfoUpdateGET(HttpSession session,Model model) throws Exception{
		logger.debug("userInfoUpdateGET()");
		
		String us_id = (String)session.getAttribute("us_id");
		logger.debug("us_id"+us_id);
		
		UsVO vo = uService.userInfo(us_id);
		logger.debug("vo: "+vo);
		model.addAttribute("vo", vo);
		
		return "/user/userInfoUpdate";
	}
	
	@RequestMapping(value = "/userInfoUpdate",method = RequestMethod.POST)
	public String userInfoUpdatePost(UsVO vo) throws Exception{
		logger.debug("userInfoUpdatePost()");
		
		uService.userInfoUpdate(vo);
		
		return "redirect:/user/userInfo";
	}
	
	@RequestMapping("/userDelete")
	public String userDelete(HttpSession session) throws Exception{
		logger.debug("userDelete()");
		
		String us_id = (String)session.getAttribute("us_id");
		logger.debug("us_id"+us_id);
		
		uService.userDelete(us_id);
		
		return "redirect:/KMaru";
	}
	
	@RequestMapping("/userLogout")
	public String userLogout(HttpSession session) throws Exception{
		logger.debug("userLogout()");
		
		session.invalidate();
		
		return "redirect:/KMaru";
	}
	
}
