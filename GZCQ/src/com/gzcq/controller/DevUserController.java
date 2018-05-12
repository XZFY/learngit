package com.gzcq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	//绑定转发路径
	@RequestMapping(value="/devLogin",method=RequestMethod.GET)
	public String devLogin(){
		return "devlogin";
	}
	
	
	//登陆方法
	@RequestMapping(value="/devLogin",method=RequestMethod.POST)
	public String devLogin(
		@RequestParam("devCode") String devCode,
		@RequestParam("devPassword") String devPassword,HttpServletRequest request){
		DevUser user = userService.loginUser(devCode, devPassword);
		if(user != null){//登录成功
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", user);
			return "redirect:dev/frame"; //登陆成功，跳转到主页
		}else{//登录失败
			request.setAttribute("errMsg", "用户名或密码不正确");
			return "devlogin";
		}
		
	
	}
	
	//跳转到主页
	@RequestMapping(value="/dev/frame")
	public String devFrame(){
		return "devframe";
	}
	
	
	//查看数据
	@RequestMapping(value="/dev/appinfoList")
	public String devapplist(Model mv){
		List<DevUser> user =userService.findAll();
		mv.addAttribute("user", user);
		return "devAppList";
	}
}
