package com.javaproject.nobrand.user.service;

import java.security.MessageDigest;

import org.springframework.beans.factory.annotation.Autowired;

import com.javaproject.nobrand.user.dao.UserDAO;
import com.javaproject.nobrand.user.domain.User;


public class UserService {
	@Autowired
	UserDAO userDAO;
	public void add(User user) {
		user.setPassword(cryptoPassword(user.getPassword()));
		userDAO.add(user);
	}
	private String cryptoPassword(String password) {
		try {
			MessageDigest md =MessageDigest.getInstance("SHA-256");
			md.update(password.getBytes());
			byte[] sha256Hash=md.digest();
			StringBuilder sb= new StringBuilder();
			for(byte b: sha256Hash) {
				sb.append(String.format("%02x", b));
			}
			return sb.toString();
	}catch(Exception e) {
		e.printStackTrace();
		return null;
		}

	}
	public User login(User user) {
		User tempUser = (userDAO.get(user.getId()));
		if(tempUser!=null&&tempUser.getPassword().equals(cryptoPassword(user.getPassword()))){
			return tempUser;	
		}
		else return null;
	}

}
