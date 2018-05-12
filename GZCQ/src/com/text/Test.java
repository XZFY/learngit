package com.text;

import java.util.List;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.gzcq.entity.DevUser;
import com.gzcq.service.DevUserService;

public class Test {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		DevUserService service =ac.getBean(DevUserService.class);
		List<DevUser> userlist =service.findAll();
		for(DevUser user: userlist)
		{
			System.out.println("姓名"+user.getId()+user.getDevName());
		}
		
	}

}
