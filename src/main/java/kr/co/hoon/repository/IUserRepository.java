package kr.co.hoon.repository;

import java.util.List;

import kr.co.hoon.DTO.User;

public interface IUserRepository {
	List<User> getUserAll();
	
	int add(User user);
	
	User login(String id);
}
