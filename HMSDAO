package com.HMS.DAO;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.HMS.POJO.Staters;
import com.HMS.POJO.User;
@Transactional
public interface HMSDAO {
	
	public void createUser(User user);
	public int checkForEmail(String emailId);
	public boolean validateUser(String emailId,String password);
	public User getUserWithEmailId(String emailId);
	public List<Staters> getAlloStaters();
}
