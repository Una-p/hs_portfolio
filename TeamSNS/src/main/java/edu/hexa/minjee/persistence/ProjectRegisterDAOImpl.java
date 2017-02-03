package edu.hexa.minjee.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectLeaderVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;

@Repository
public class ProjectRegisterDAOImpl implements ProjectRegisterDAO {

	private static final String NAMESPACE = "edu.hexa.minjee.RegisterMapper";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(ProjectVO pvo) {
		return sqlSession.insert(NAMESPACE + ".insert_project", pvo);
	}
	@Override
	public int insert(ManageProjectPartVO mvo) {
		return sqlSession.insert(NAMESPACE + ".insert_part", mvo);
	}
	@Override
	public int insert(RequiredSkillVO rvo) {
		return sqlSession.insert(NAMESPACE + ".insert_skill", rvo);
	}
	@Override
	public int insert(RecruitProjectVO rpvo) {
		return sqlSession.insert(NAMESPACE + ".insert_recruit", rpvo);
	}
	@Override
	public int insert(ProjectLeaderVO lvo) {
		return sqlSession.insert(NAMESPACE + ".insert_leader", lvo);
	}
	@Override
	public UserVO select(String uid) {
		return sqlSession.selectOne(NAMESPACE + ".select_user", uid);
	}
}
