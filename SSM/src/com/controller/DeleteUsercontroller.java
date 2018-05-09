package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.Userservice;

@Controller
public class DeleteUsercontroller {
	@Autowired
	private Userservice service;
	
	public void setService(Userservice service) {
		this.service = service;
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete()
	{
		return "MyJsp";
	}
	
	
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public String delete(
			@RequestParam("id") int id,
			HttpServletRequest request)
	{   
		int count=service.deleteUser(id);
		if(count>0)
		{
			System.out.println("É¾³ı³É¹¦");
			return "true";
		}
		else
		{
			System.out.println("É¾³ıÊ§°Ü");
			return "false";
		}
	}
}
