package com.gzcq.dao;

import java.util.List;

import com.gzcq.entity.DevUser;

public interface DevUserDAO {
	//查询登陆对象
	public DevUser loginUser(String devCode);
	
	//查看用户全部数据
	public List<DevUser> findAll();
	
	//添加用户数据
	public int addUser(DevUser devuser);
}
