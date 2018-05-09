package com.dao;

import java.util.List;

import com.entity.User;

public interface UserDAO {
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
	public User loginUser(String username);
	
}
