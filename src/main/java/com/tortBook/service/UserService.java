package com.tortBook.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tortBook.dto.ContactUs;
import com.tortBook.dto.Report;
import com.tortBook.dto.User;
import com.tortBook.repository.ContactRepository;
import com.tortBook.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private ContactRepository contactRepository;
	
	public List<User> list() {
		List<User> users = new ArrayList<User>();
		userRepository.findAll().forEach(users::add);
		return users;
	}
	
	public void addRecord(User user) {
		if(user.getImage().equals(null)||user.getImage().isEmpty()) {
			user.setImage("pp.png");
		}
		userRepository.save(user);
	}

	public void addRecord(ContactUs cuser) {

		contactRepository.save(cuser);
	}

	public boolean checkValidUser(String username, String password) 
	{

			for (User record : list()) {
				if (record.getUsername().equals(username) && record.getPassword().equals(password)) {
					record.setLu(true);
					userRepository.save(record);
					return true;
				}
			}

			return false;
		
	}

	public void logout() {
		for (User record : list()) {
			if (record.isLu()) {
				record.setLu(false);
				userRepository.save(record);
			}
		}

	}

	public User getValidUser() {
		for (User record : list()) {
			if (record.isLu()) {
				return record;
			}
		}
		return null;
	}

	public User getUserProfile(long u_id) {
		for (User record : list()) {
			if (record.getId()==u_id)
			{
				return record;
			}
		}
		return null;
	}

	
	
		

}
