package com.text;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.User;
import com.service.Userservice;

public class SSMDelete {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		Userservice service =ac.getBean(Userservice.class);
		int id =3;
		int count =service.deleteUser(id);
		if(count>0)
		{
			System.out.println("É¾³ý³É¹¦");
		}
		else
		{
			System.out.println("É¾³ýÊ§°Ü");
		}
	}

}
