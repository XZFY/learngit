package com.text;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.gzcq.entity.DevUser;
import com.gzcq.service.DevUserService;

public class update {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		DevUserService service =ac.getBean(DevUserService.class);
		DevUser user =new DevUser();
		user.setId(1);
		user.setDevPassword("789456");
		int count =service.updateUser(user);
		if(count>0)
		{
			System.out.println("成功");
		}
		else
		{
			System.out.println("失败");
		}
	}

}
