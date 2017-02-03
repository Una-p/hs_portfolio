package edu.penta.hyunsun.persistence;

import java.util.List;

import edu.hexa.teamsns.domain.UserVO;
import edu.penta.hyunsun.domain.BoardVO;

public interface MypageDAO {
	public abstract UserVO user_mypage(String uid);
	public abstract int user_update(UserVO vo);
	public abstract int user_bye(String uid);
	public abstract List<BoardVO> my_board(String uid);
}
