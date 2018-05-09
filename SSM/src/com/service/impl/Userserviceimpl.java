package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDAO;
import com.entity.User;
import com.service.Userservice;
@Service
public class Userserviceimpl implements Userservice {
	@Autowired
	private UserDAO userdao;
	
	public UserDAO getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}
	@Override
	public List<User> findAll() {
		return userdao.findAll();
	}
	
	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return userdao.updateUser(user);
	}
	@Override
	public int deleteUser(int id) {
		// TODO Auto-generated method stub
		return userdao.deleteUser(id);
	}
	@Override
	public User getUser(int id) {
		// TODO Auto-generated method stub
		return userdao.getUser(id);
	}
	@Override
	public int insertuser(User user) {
		return userdao.insertuser(user);
	}
	
	@Override
	public boolean loginUser(String username, String mobile) {
		User user =userdao.loginUser(username);
		if(user==null)//根据用户名无法查到用户
		{
			return false;//登录失败返回false
		}
		else
		{
			if(mobile.equals(user.getMobile()))
			{
				return true;//输入的密码与查询出的密码一致
			}
			else
			{
				return false;//输入的密码与查询出的密码不一致
			}
		}
		
	}

}
