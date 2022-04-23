package kr.co.hoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hoon.DTO.User;
import kr.co.hoon.repository.UserRepository;

@Service
public class UserService implements IUserService{
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public List<User> getUserAll() {
		return userRepository.getUserAll();
	}
	
	@Override
	public int add(User user) {
		return userRepository.add(user);
	}

	@Override
	public User login(String id) {
		return userRepository.login(id);
	}
	
	
}
