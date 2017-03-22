package com.sh.chat.controller.main;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sh.chat.utils.Constant;
import com.sh.chat.utils.StringUtils;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
		
	//根目录跳转到index.jsp界面
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String main(HttpServletRequest request,HttpServletResponse response,Model model){
		logger.info("Execute main");
		
		String username = (String)request.getSession().getAttribute(Constant.USERNAME);
		if(StringUtils.isNotBlank(username)){
			model.addAttribute(Constant.USERNAME, username);
		}
		model.addAttribute("date", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		
		return "index";
	}
	
	//验证完成后跳转到主页面
	@RequestMapping("toMain")
	public String toMain(HttpServletRequest request,HttpServletResponse response){
		logger.info("Execute toMain");
		
		return "main";
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