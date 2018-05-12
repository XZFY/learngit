package com.gzcq.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gzcq.dao.DevUserDAO;
import com.gzcq.entity.DevUser;
import com.gzcq.service.DevUserService;
@Service
public class DevUserServiceImpl implements DevUserService {
	@Autowired
	private DevUserDAO userDAO ; 
	public DevUserDAO getUserDAO() {
		return userDAO;
	}
	public void setUserDAO(DevUserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	//查询登陆对象
	@Override
	@Transactional(readOnly=true)
	public DevUser loginUser(String devCode,String devPassword) {
		DevUser user = userDAO.loginUser(devCode);
		if(user == null){
			return null;
		}else{
			if(devPassword.equals(user.getDevPassword())){
				return user;
			}else{
				return null;
			}
		}
	}
	
	//查看用户全部数据
	@Override
	public List<DevUser> findAll() {
		// TODO Auto-generated method stub
		return userDAO.findAll();
	}
	
	
	//添加用户数据
	@Override
	public int addUser(DevUser devuser) {
		// TODO Auto-generated method stub
		return userDAO.addUser(devuser);
	}

}


