package edu.hexa.leejaehoon.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.leejaehoon.persistence.SignUpDAO;
import edu.hexa.teamsns.domain.UserVO;

@Service
public class SignUpServieImple implements SignUpService {

	private static final Logger logger = LoggerFactory.getLogger(SignUpServieImple.class);
	
	@Autowired
	private SignUpDAO signUpDAO;
	
	
	@Override
	public int create_user(UserVO vo) {
		
		logger.info("service = " + vo);
		return signUpDAO.insert(vo);
	}


	@Override
	public SignUpVO login(SignUpVO vo) {
		logger.info("login = " + vo);
		return signUpDAO.login(vo);
	}
	
	@Override
	public int select(SignUpVO vo) {
		
		return signUpDAO.selectId(vo);
	}
	
	@Override
	public int selectNick(SignUpVO vo) {
		
		return signUpDAO.selectNick(vo);
	}
	@Override
	public int singUp(SignUpVO vo) {
		
		return signUpDAO.signUp(vo);
	}
}
