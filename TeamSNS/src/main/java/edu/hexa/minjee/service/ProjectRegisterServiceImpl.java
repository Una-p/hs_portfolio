package edu.hexa.minjee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.minjee.persistence.ProjectRegisterDAO;
import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectLeaderVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;

@Service
public class ProjectRegisterServiceImpl implements ProjectRegisterService {

	@Autowired
	private ProjectRegisterDAO registerDAO;
	
	@Override
	public int create(ProjectVO pvo) {
		return registerDAO.insert(pvo);
	}

	@Override
	public int create(ManageProjectPartVO mvo) {
		return registerDAO.insert(mvo);
	}

	@Override
	public int create(RequiredSkillVO rvo) {
		return registerDAO.insert(rvo);
	}

	@Override
	public int create(RecruitProjectVO rpvo) {
		return registerDAO.insert(rpvo);
		
	}
	

	@Override
	public int create(ProjectLeaderVO lvo) {
		return registerDAO.insert(lvo);
	}

	@Override
	public UserVO read(String uid) {
		return registerDAO.select(uid);
	}


}
