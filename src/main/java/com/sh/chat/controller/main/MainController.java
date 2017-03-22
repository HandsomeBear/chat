package com.sh.chat.controller.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
		
	//根目录跳转到index.jsp界面
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String main(HttpServletRequest request,HttpServletResponse response){
		logger.info("Execute main");
			
		return "index";
	}
	
	//跳转到注册页面
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String toRegister(HttpServletRequest request,HttpServletResponse response){
		logger.info("Execute toRegister");
		
		return "register";
	}
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String register(HttpServletRequest request,HttpServletResponse response){
		logger.info("Execute register");
		
		return "main";
	}
}