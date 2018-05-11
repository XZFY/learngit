package com.gzcq.service.impl;

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

}


