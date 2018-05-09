package com.text;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.User;
import com.service.Userservice;

public class SSMListSelect {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		Userservice service = ac.getBean(Userservice.class);
		List<User> userlist =service.findAll();
		for(User user: userlist)
		{
			System.out.println("ÐÕÃû"+user.getUsername());
		}
	}

}
