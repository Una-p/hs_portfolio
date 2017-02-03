package edu.penta.hyunsun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.teamsns.domain.UserVO;
import edu.penta.hyunsun.domain.BoardVO;
import edu.penta.hyunsun.persistence.MypageDAO;

@Service
public class MypageServiceImple implements MypageService {
	
	@Autowired
	private MypageDAO dao;

	@Override
	public UserVO user_mypage(String uid) {
		return dao.user_mypage(uid);
	}
	
	@Override
	public int user_update(UserVO vo) {
		return dao.user_update(vo);
	}
	
	@Override
	public int user_bye(String uid) {
		return dao.user_bye(uid);
	}
	
	@Override
	public List<BoardVO> my_board(String uid) {
		return dao.my_board(uid);
	}
}
