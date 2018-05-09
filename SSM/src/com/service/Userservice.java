package com.service;

import java.util.List;

import com.entity.User;

public interface Userservice {
	    //�鿴�û�ȫ������
		public List<User> findAll();
		
		//��������
		public int insertuser(User user);
		
		//�޸�����
		public int updateUser(User user);
		
		//ɾ������
		public int deleteUser(int id);
		
		//ͨ��ģ����ѯ���Ҷ���
		public User getUser(int id);
		
		//�û���¼
		public boolean loginUser(String username,String mobile);
}
