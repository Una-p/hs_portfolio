package edu.hexa.leejaehoon.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.domain.MyApplyDTO;
import edu.hexa.leejaehoon.domain.MyCandidateDTO;
import edu.hexa.leejaehoon.domain.ProjectInfoVO;
import edu.hexa.leejaehoon.persistence.ProjectInfoDAOImple;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;

@Service
public class ProjectInfoServiceImple implements ProjectInfoService {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectInfoServiceImple.class);
	
	@Autowired
	private ProjectInfoDAOImple dao;
	
	@Override
	public List<ProjectInfoVO> select(String uid) {
		// TODO Auto-generated method stub
		return dao.select(uid);
	}

	@Override
	public int update(RecruitProjectVO vo) {
		logger.info("service vo = " + vo); 
		return dao.update(vo);
	}
	@Override
	public int update2(ProjectVO vo) {
		logger.info("service vo = " + vo); 
		return dao.update2(vo);
	}
	
	@Override
	public int update3(RequiredSkillVO vo) {
		// TODO Auto-generated method stub
		return dao.update3(vo);
	}
	
	// hshs 
	// 지원
	@Override
	public List<MyApplyDTO> select_myapply(String uid) {
		return dao.select_myapply(uid);
	}
	
	// 지원자
	@Override
	public List<MyCandidateDTO> select_mycandidate(String uid) {
		return dao.select_candidate(uid);
	}
	
	@Override
	public int apply_reject(String part_pk, String user_id) {
		return dao.applyReject(part_pk, user_id);
	}
	
	@Override
	public int apply_accept(String part_pk, String user_id) {
		return dao.applyAccept(part_pk, user_id);
	}
	
}
