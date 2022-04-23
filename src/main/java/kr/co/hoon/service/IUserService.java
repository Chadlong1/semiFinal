package kr.co.hoon.service;

import java.util.List;

import kr.co.hoon.DTO.User;

public interface IUserService {
	// User
	List<User> getUserAll();
	
	int add(User user);
	
	User login(String id);
	
	
}
