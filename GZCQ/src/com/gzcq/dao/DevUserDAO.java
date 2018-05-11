package com.gzcq.dao;

import com.gzcq.entity.DevUser;

public interface DevUserDAO {
	//查询登陆对象
	public DevUser loginUser(String devCode);
}
