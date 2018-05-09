package com.text;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.User;
import com.service.Userservice;

public class SSMIdSelect {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		Userservice service=ac.getBean(Userservice.class);
		User user = new User();
		int id=22;
		user=service.getUser(id);
		System.out.println(user.getUsername());
		
	}

}
