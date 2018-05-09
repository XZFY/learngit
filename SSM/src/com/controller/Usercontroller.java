package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.User;
import com.service.Userservice;
@Controller
public class Usercontroller {
	@Autowired
	private Userservice userservice;

	public void setUserservice(Userservice userservice) {
		this.userservice = userservice;
	}
	
	
	//跳转到JSP页面
	@RequestMapping(value="/jsp")
	public String user(Model mv)
	{
		List<User> user =userservice.findAll();
		mv.addAttribute("user",user);
		return "MyJsp";
	}
	
	
	
	
	//用户登录跳转
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login()
	{
		return "login";
	}
	//用户登录方法
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(
			@RequestParam("username") String username,
			@RequestParam("mobile") String mobile,
			HttpServletRequest request)
	{
		boolean result =userservice.loginUser(username, mobile);
		if(result)//登录成功
		{
			HttpSession session =request.getSession();
			session.setAttribute("username", username);
			return "redirect:/jsp";
		}
		else//登录失败
		{
			request.setAttribute("errMsg", "用户名或者密码不正确");
			return "login";
		}
		
	}
}
