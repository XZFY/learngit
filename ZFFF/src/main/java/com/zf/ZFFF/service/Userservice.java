package com.zf.ZFFF.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zf.ZFFF.entity.User;
import com.zf.ZFFF.mapper.UserMapper;
@Service
public class Userservice {
	@Autowired
	private UserMapper usermapper;
	
	public void list()
	{
		List<User> list =usermapper.find();
		for(User user : list)
		{
			System.out.println(user.getId()+user.getMobile()+user.getUsername());
			System.out.println(user.getId()+user.getMobile()+user.getUsername());
		}
	}
}
