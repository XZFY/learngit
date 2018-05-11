package com.gzcq.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gzcq.entity.DevUser;
import com.gzcq.service.DevUserService;

@Controller
public class DevUserController {
	@Autowired
	private DevUserService userService;
	
	public void setUserService(DevUserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value="/devLogin",method=RequestMethod.GET)
	public String devLogin(){
		return "devlogin";
	}
	
	@RequestMapping(value="/devLogin",method=RequestMethod.POST)
	public String devLogin(
		@RequestParam("devCode") String devCode,
		@RequestParam("devPassword") String devPassword,HttpServletRequest request){
		DevUser user = userService.loginUser(devCode, devPassword);
		if(user != null){//登录成功
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", user);
			return "redirect:dev/frame";
		}else{//登录失败
			request.setAttribute("errMsg", "用户名或密码不正确");
			return "devlogin";
		}
		
	
	}
	@RequestMapping(value="/dev/frame")
	public String devFrame(){
		return "devframe";
	}
	
	
	
	
	
	
}
