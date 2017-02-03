package edu.hexa.minjee.persistence;

import edu.hexa.teamsns.domain.UserVO;

public interface UserDAO {
	public abstract UserVO select(String uid);
}
