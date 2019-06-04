package com.campus.service;


import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.campus.dao.UserDAO;
import com.campus.model.USER;
@Service
public class UserServiceImpl implements UserService
{
	private UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	@Transactional
	public void addUser(USER u) {
		
		this.userDAO.addUser(u);
	}

	@Override
	@Transactional
	public void updateUser(USER u) {
		this.userDAO.updateUser(u);
		
	}

	@Override
	@Transactional
	public List<USER> listUser() {
		
		// TODO Auto-generated method stub
		return this.userDAO.listUser();
	}

	@Override
	@Transactional
	public USER getUserbyid(int id) {
		
		return this.userDAO.getUserById(id);
	}

	@Override
	@Transactional
	public void removeUser(int id) {
		this.userDAO.removeUser(id);
		
	}
	
	@Override
	@Transactional
	public boolean checkUser(USER u) {
		
		USER p=this.userDAO.getUserById(u.getUSER_ID());
		return BCrypt.checkpw(u.getPASSWORD(),p.getPASSWORD());
		
	}

	@Override
	@Transactional
	public boolean createUser(USER u) {
		boolean flag=true;
		try {
			String ran = String.valueOf(password.geek_Password(9));
			Mailer.send("ezdocsolutions02@gmail.com","iamtushar",u.getEMAIL_ID(),"hi your password is",""+ran);
			System.out.println(ran);
			u.setPASSWORD(BCrypt.hashpw(ran, BCrypt.gensalt()));
			u.setCREATED_DATE(new java.sql.Date(System.currentTimeMillis()));
			this.userDAO.addUser(u);
		} catch (Exception e) {
			flag=false;
		}
		return flag;
	}
	
	
	
	

}
