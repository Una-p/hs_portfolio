package edu.hexa.minjee.persistence;

import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectLeaderVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;

public interface ProjectRegisterDAO {
	public abstract int insert(ProjectVO pvo);
	public abstract int insert(ManageProjectPartVO mvo);
	public abstract int insert(RequiredSkillVO rvo);
	public abstract int insert(RecruitProjectVO rpvo);
	public abstract int insert(ProjectLeaderVO lvo); 
	
	public abstract UserVO select(String uid);
}
