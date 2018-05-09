package com.dao;

import java.util.List;

import com.entity.User;

public interface UserDAO {
	//查看用户全部数据
	public List<User> findAll();
	
	//增加数据
	public int insertuser(User user);
	
	//修改数据
	public int updateUser(User user);
	
	//删除数据
	public int deleteUser(int id);
	
	//通过模糊查询查找对象
	public User getUser(int id);
	
	//用户登录
	public User loginUser(String username);
	
}
