package edu.hexa.minjee.domain;

import java.util.List;

import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;

public class ProjectRegisterDTO {
	private ProjectVO project;
	private RecruitProjectVO recruit;
	private List<ManageProjectPartVO> parts;
	private RequiredSkillVO skill;
	private UserVO user;

	public ProjectRegisterDTO() {}
	
	public ProjectRegisterDTO(ProjectVO project, RecruitProjectVO recruit, List<ManageProjectPartVO> parts,
			RequiredSkillVO skill, UserVO user) {
		super();
		this.project = project;
		this.recruit = recruit;
		this.parts = parts;
		this.skill = skill;
		this.user = user;
	}

	public ProjectVO getProject() {
		return project;
	}

	public void setProject(ProjectVO project) {
		this.project = project;
	}

	public RecruitProjectVO getRecruit() {
		return recruit;
	}

	public void setRecruit(RecruitProjectVO recruit) {
		this.recruit = recruit;
	}

	public List<ManageProjectPartVO> getParts() {
		return parts;
	}

	public void setParts(List<ManageProjectPartVO> parts) {
		this.parts = parts;
	}

	public RequiredSkillVO getSkill() {
		return skill;
	}

	public void setSkill(RequiredSkillVO skill) {
		this.skill = skill;
	}

	public UserVO getUser() {
		return user;
	}

	public void setUser(UserVO user) {
		this.user = user;
	}

}
