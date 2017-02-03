package edu.penta.hyunsun.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;
import edu.penta.hyunsun.domain.ApplyProjectVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;

@Repository
public class RecruitDetailDAOImple implements RecruitDetailDAO {
	private static final Logger logger = LoggerFactory.getLogger(RecruitDetailDAOImple.class);
	private static final String MAPPER = "edu.penta.hyunsun.recruit-detail-mapper";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public RecruitDetailDTO select(int rbno) {
		logger.info("# 모집글 상세보기 DAO");
		
		RecruitProjectVO recruit = sqlSession.selectOne(MAPPER + ".select_recruit", rbno);
		ProjectVO project = sqlSession.selectOne(MAPPER + ".select_project", rbno);
		RequiredSkillVO skill = sqlSession.selectOne(MAPPER + ".select_skill", rbno);
		List<ManageProjectPartVO> parts = sqlSession.selectList(MAPPER + ".select_part", rbno);
		UserVO team_leader = sqlSession.selectOne(MAPPER + ".select_leader", rbno);
		
		RecruitDetailDTO dto = new RecruitDetailDTO(recruit, project, skill, parts, team_leader);
		logger.info(dto.getProject().getPname());
		
		int result = sqlSession.update(MAPPER + ".update_hits", rbno);
		logger.info("조회수↑" + result);
		return dto;
	} // end select()
	
	@Override
	public int overlapTest1(ApplyProjectVO vo) {
		logger.info("중복검사 DAO");
		int overlapResult = sqlSession.selectOne(MAPPER + ".overlap_test1", vo);
		logger.info("result : "+overlapResult);
		return overlapResult;
	}

	@Override
	public int insert_apply(ApplyProjectVO vo) {
		logger.info("지원하기 DAO");
		int result = sqlSession.insert(MAPPER + ".apply_project", vo);
		logger.info("지원 완료");
		return result;
	}
	
//	@Override
//	public int insert_apply(ApplyProjectVO vo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
	
}
