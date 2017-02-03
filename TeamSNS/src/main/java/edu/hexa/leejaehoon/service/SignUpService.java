package edu.hexa.leejaehoon.service;

import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.teamsns.domain.UserVO;

public interface SignUpService {

	public abstract int create_user(UserVO vo);
	
	public abstract SignUpVO login(SignUpVO vo);
	
	public abstract int select(SignUpVO vo);
	
	public abstract int selectNick(SignUpVO vo);
	
	public abstract int singUp(SignUpVO vo);
} // end interface
