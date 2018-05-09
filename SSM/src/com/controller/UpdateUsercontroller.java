package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.weaver.patterns.TypePatternQuestions.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.User;
import com.service.Userservice;

@Controller
public class UpdateUsercontroller {
	@Autowired
	private Userservice service;

	public void setService(Userservice service) {
		this.service = service;
	}
	
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String update(int id,HttpServletRequest request)
	{
		User  user = service.getUser(id);
		request.setAttribute("user", user);
		return "update";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(
			User user,
			@RequestParam("id") int id,
			@RequestParam("username") String username,
			HttpServletRequest request)
	{
		user.setId(id);
		user.setUsername(username);
		int count=service.updateUser(user);
		if(count>0)
		{
			System.out.println("修改成功");
			return "redirect:/jsp";
		}
		else
		{
			System.out.println("修改失败");
			return "/update";
		}
		
	}
}
