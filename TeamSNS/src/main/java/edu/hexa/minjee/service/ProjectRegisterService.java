package edu.hexa.minjee.service;

import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectLeaderVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;

// CRUD
public interface ProjectRegisterService {
	public abstract int create(ProjectVO pvo);
	public abstract int create(ManageProjectPartVO mvo);
	public abstract int create(RequiredSkillVO rvo);
	public abstract int create(RecruitProjectVO rpvo);
	public abstract int create(ProjectLeaderVO lvo);
	
	public abstract UserVO read(String uid);
}
