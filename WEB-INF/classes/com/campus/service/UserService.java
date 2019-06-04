package com.campus.service;

import java.util.List;

import com.campus.model.USER;

public interface UserService {
	public void addUser(USER u);
	public void updateUser(USER u);
	public List<USER> listUser();
	public USER getUserbyid(int id);
	public void removeUser(int id);
	public boolean checkUser(USER u);
	public boolean createUser(USER u);

}
