package com.text;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.User;
import com.service.Userservice;

public class SSMUpdate {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		Userservice service =ac.getBean(Userservice.class);
		User user = new User();
		user.setUsername("л���");
		user.setId(22);
		int count =service.updateUser(user);
		if(count>0)
		{
			System.out.println("�޸ĳɹ�");
		}
		else
		{
			System.out.println("�޸�ʧ��");
		}
	}

}
