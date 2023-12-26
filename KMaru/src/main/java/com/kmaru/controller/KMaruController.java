package com.kmaru.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class KMaruController {
	
	//http://localhost:8088/KMaru
	@RequestMapping("/KMaru")
	public String main() {
		
		return "KMaru";
	}
}
