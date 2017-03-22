package com.sh.chat.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	//跳转到登录页面
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String toLogin(HttpServletRequest request,HttpServletResponse response){
		logger.info("Execute toLogin");
		
		return "login";
	}
	
	//登录逻辑
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(HttpServletRequest request,HttpServletResponse response){
		logger.info("Execute login");
		
		return "main";
	}
}
