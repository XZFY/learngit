package com.gzcq.service;

import java.util.List;

import com.gzcq.dao.DevUserDAO;
import com.gzcq.entity.DevUser;


public interface DevUserService {
	
	//查询登陆对象
	public DevUser loginUser(String devCode,String devPassword);
	
	//查看用户全部数据
    public List<DevUser> findAll();
    
    //添加用户数据
    public int addUser(DevUser devuser);
    
    //修改用户数据
  	public int updateUser(DevUser devuser);
  	
  //模糊查询查找对象
  	public DevUser getUser(int id);
  	
  //关联查询
  	public List<DevUser> finat();
}
