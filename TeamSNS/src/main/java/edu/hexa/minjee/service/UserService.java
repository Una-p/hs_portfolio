package edu.hexa.minjee.service;

import edu.hexa.teamsns.domain.UserVO;

public interface UserService {
	public abstract UserVO read(String uid);
}
