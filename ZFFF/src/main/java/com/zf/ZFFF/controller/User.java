package com.zf.ZFFF.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zf.ZFFF.service.Userservice;

@Controller
public class User {
	@Autowired
	private Userservice service;
	
	
	@RequestMapping("/home")
	String home()
	{
		service.list();
		return "hellow spring boot";
	}
}
