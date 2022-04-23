package kr.co.hoon.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.co.hoon.DTO.User;

@Repository
public class UserRepository implements IUserRepository{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<User> getUserAll() {
		return jdbcTemplate.query("SELECT * FROM user", new RowMapper<User>() {
			
			
			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				String id = rs.getString("id");
				String password = rs.getString("password");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				String phoneNumber = rs.getString("phoneNumber");
				User user = new User(id, password, name, email, gender, phoneNumber);
				return user;
			}
		});
	}

	@Override
	public int add(User user) {
		return jdbcTemplate.update("INSERT INTO user VALUES (?, ?, ?, ?, ?, ?)"
				, user.getId()
				, user.getPassword()
				, user.getName()
				, user.getEmail()
				, user.getGender()
				, user.getPhoneNumber()
				);

	}

	@Override
	public User login(String id) {
		try {
		return jdbcTemplate.queryForObject("SELECT * FROM user WHERE id = ?"
				, new BeanPropertyRowMapper<User>(User.class)
				, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
}
