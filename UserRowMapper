package com.HMS.rowMappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HMS.POJO.User;

public class UserRowMapper implements RowMapper<User> {

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setAddress(rs.getString("address"));
		user.setEmailID(rs.getString("emailid"));
		user.setfName(rs.getString("fname"));
		user.setlName(rs.getString("lname"));
		user.setMobileNumber(rs.getString("mobilenumber"));
		return user;
	}

}
