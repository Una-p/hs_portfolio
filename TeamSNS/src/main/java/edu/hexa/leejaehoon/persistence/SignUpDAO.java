package edu.hexa.leejaehoon.persistence;

import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.teamsns.domain.UserVO;

public interface SignUpDAO {

	public abstract int insert(UserVO vo);
	
	public abstract SignUpVO login(SignUpVO vo);
	
	public abstract int selectId(SignUpVO vo);
	
	public abstract int selectNick(SignUpVO vo);
	
	public abstract int signUp(SignUpVO vo);
	
} // end interface
