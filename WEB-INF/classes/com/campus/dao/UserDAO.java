package com.campus.dao;

import java.util.List;

import com.campus.model.USER;

public interface UserDAO {
	public void addUser(USER u);
	public void updateUser(USER u);
	public List<USER> listUser();
	public USER getUserById(int id);
	public void removeUser(int id);
	

}
