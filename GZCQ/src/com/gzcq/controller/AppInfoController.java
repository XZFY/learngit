package com.gzcq.controller;



import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class AppInfoController {
	
	@RequestMapping(value="dev/appinfoList",method=RequestMethod.GET)
	public String showAppList(HttpServletRequest request){
		return "devAppList";
	}
	
	
	@RequestMapping(value="dev/index")
	public String showgo()
	{
		return "index";
	}
}
