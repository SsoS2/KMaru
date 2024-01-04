package com.kmaru.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/chat/*")
public class ChatController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChatController.class);
	
	// http://localhost:8088/chat/chat
	@RequestMapping(value="/chat")
	public void chat(HttpSession session) throws Exception{
		logger.debug("채팅방 연결");
		String us_id = (String)session.getAttribute("us_id");
		logger.debug("us_id : "+us_id);
	}
	
}
