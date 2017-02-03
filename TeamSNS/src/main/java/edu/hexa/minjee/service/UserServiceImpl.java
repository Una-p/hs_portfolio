package edu.hexa.minjee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.minjee.persistence.UserDAO;
import edu.hexa.teamsns.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public UserVO read(String uid) {
		return userDAO.select(uid);
	}

}
