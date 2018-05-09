package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.User;
import com.service.Userservice;

@Controller
public class AddUsercontroller {
	@Autowired
	private Userservice uservice;

	public void setUservice(Userservice uservice) {
		this.uservice = uservice;
	}
	
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add()
	{
		return "adduser";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(
			User user,
			@RequestParam("username") String username,
			@RequestParam("mobile") String mobile,
			HttpServletRequest request)
	{
		user.setUsername(username);
		user.setMobile(mobile);
		int count= uservice.insertuser(user);
		if(count>0)
		{
			System.out.println("添加成功");
			return "redirect:/jsp";
		}
		else
		{
			System.out.println("添加失败");
			return "/add";
		}
		
	}
}
