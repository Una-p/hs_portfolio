package edu.hexa.leejaehoon.service;

import java.util.List;

import edu.hexa.leejaehoon.domain.MyApplyDTO;
import edu.hexa.leejaehoon.domain.MyCandidateDTO;
import edu.hexa.leejaehoon.domain.ProjectInfoVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;

public interface ProjectInfoService {

	public abstract List<ProjectInfoVO> select(String uid);
	
	public abstract int update(RecruitProjectVO vo);
	
	public abstract int update2(ProjectVO vo);
	
	public abstract int update3(RequiredSkillVO vo);
	
	// hshs : 지원프로젝트
	public abstract List<MyApplyDTO> select_myapply(String uid); // 지원관리
	public abstract List<MyCandidateDTO> select_mycandidate(String uid); // 지원자 관리
	public abstract int apply_reject(String part_pk, String user_id); // 거절하기
	public abstract int apply_accept(String part_pk, String user_id);
		
} // end interface
