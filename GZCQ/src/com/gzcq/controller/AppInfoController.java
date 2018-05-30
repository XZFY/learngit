package com.gzcq.controller;






import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gzcq.entity.DevUser;
import com.gzcq.service.DevUserService;



@Controller
public class AppInfoController {
	@Autowired
	private DevUserService uservice;
	
	//添加成功页面
	@RequestMapping(value="dev/yes")
	public String success()
	{
		return "yes";
	}
	
	
	
	//用户添加数据跳转
	@RequestMapping(value="dev/index",method=RequestMethod.GET)
	public String showgo()
	{
		return "Adddev";
	}
	
	//用户添加数据方法
	@RequestMapping(value="dev/index",method=RequestMethod.POST)
	public String showgo(DevUser user,
			@RequestParam("devCode") String devCode,
			@RequestParam("devName") String devName,
			@RequestParam("devPassword") String devPassword,
			@RequestParam("devEmail") String devEmail,
			HttpServletRequest request)
	{
		user.setDevCode(devCode);
		user.setDevName(devName);
		user.setDevPassword(devPassword);
		user.setDevEmail(devEmail);
		int count =uservice.addUser(user);
		if(count>0)
		{
			return "redirect:yes"; //添加成功
		}
		else
		{
			return "dev/index"; //添加失败
		}
	}
}
