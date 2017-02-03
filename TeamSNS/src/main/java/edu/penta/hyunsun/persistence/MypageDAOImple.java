package edu.penta.hyunsun.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.teamsns.domain.UserVO;
import edu.penta.hyunsun.domain.BoardVO;

@Repository
public class MypageDAOImple implements MypageDAO {
	private static final String MAPPER = "edu.penta.hyunsun.mypage-mapper";
	private static final Logger logger = LoggerFactory.getLogger(MypageDAOImple.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public UserVO user_mypage(String uid) {
		logger.info("마이페이지 SELECT");
		
		UserVO user = sqlSession.selectOne(MAPPER + ".mypage-select", uid);
		logger.info("uid = " + uid + ", kkoid = " + user.getKkoid());
		
		return user;
	} // end user_mypage
	
	@Override
	public int user_update(UserVO vo) {
		logger.info("회원정보 수정");
		
		int result = sqlSession.update(MAPPER + ".user-update", vo);
		logger.info("수정 성공 : " + result);
		
		return result;
	}
	
	@Override
	public int user_bye(String uid) {
		logger.info("탈퇴");
		int result = sqlSession.delete(MAPPER + ".user-bye", uid);
		logger.info("탈퇴 성공: " + result);
		
		return result;
	}
	
	public List<BoardVO> my_board(String uid) {
		logger.info("내가 쓴 글 리스트");
		List<BoardVO> vo = sqlSession.selectList(MAPPER + ".my-board", uid);
		return vo;
	}

} // end class MypageDAOImple
