package edu.hexa.minjee.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.teamsns.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	private static final String NAMESPACE = "edu.hexa.minjee.RegisterMapper";
	@Autowired
	private SqlSession sqlSession;
	@Override
	public UserVO select(String uid) {
		return sqlSession.selectOne(NAMESPACE + ".select_user", uid);
	}

}
