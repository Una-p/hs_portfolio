package edu.hexa.leejaehoon.persistence;

import java.util.List;

import edu.hexa.leejaehoon.domain.MyApplyDTO;
import edu.hexa.leejaehoon.domain.MyCandidateDTO;
import edu.hexa.leejaehoon.domain.ProjectInfoVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;

public interface ProjectInfoDAO {

	public abstract List<ProjectInfoVO> select(String uid);
	
	public abstract int update(RecruitProjectVO vo);
	
	public abstract int update2(ProjectVO vo);
	
	public abstract int update3(RequiredSkillVO vo);
	
	
	// hshs -----------
	public abstract List<MyApplyDTO> select_myapply(String uid); // 지원한 프로젝트 관리
	public abstract List<MyCandidateDTO> select_candidate(String uid); // 지원자 관리
	
	public abstract int applyReject(String part_pk, String user_id); // 지원자 거절
	public abstract int applyAccept(String part_pk, String user_id);
	
} // end interface
