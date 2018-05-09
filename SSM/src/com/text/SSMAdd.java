package com.text;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.User;
import com.service.Userservice;

public class SSMAdd {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		Userservice service=ac.getBean(Userservice.class);
		User user = new User();
		user.setUsername("ZFFF");
		user.setMobile("ZFFFFF");
		int count =service.insertuser(user);
		if(count>0)
		{
			System.out.println("添加成功");
		}
		else
		{
			System.out.println("添加失败");
		}
	}

}
