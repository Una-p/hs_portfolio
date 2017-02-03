package edu.penta.hyunsun.domain;

import java.util.List;

import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;

public class RecruitDetailDTO {
	private RecruitProjectVO recruit;
	private ProjectVO project;
	private RequiredSkillVO skills;
	private List<ManageProjectPartVO> parts;
	private UserVO team_leader;
	
	public RecruitDetailDTO() {}
	public RecruitDetailDTO(RecruitProjectVO recruit, ProjectVO project, RequiredSkillVO skills,
			List<ManageProjectPartVO> parts, UserVO team_leader) {
		super();
		this.recruit = recruit;
		this.project = project;
		this.skills = skills;
		this.parts = parts;
		this.team_leader = team_leader;
	}
	
	
	public RecruitDetailDTO(RecruitProjectVO recruit) {
		
		this.recruit = recruit;
	}
	public RecruitProjectVO getRecruit() {
		return recruit;
	}
	public void setRecruit(RecruitProjectVO recruit) {
		this.recruit = recruit;
	}
	public ProjectVO getProject() {
		return project;
	}
	public void setProject(ProjectVO project) {
		this.project = project;
	}
	public RequiredSkillVO getSkills() {
		return skills;
	}
	public void setSkills(RequiredSkillVO skills) {
		this.skills = skills;
	}
	public List<ManageProjectPartVO> getParts() {
		return parts;
	}
	public void setParts(List<ManageProjectPartVO> parts) {
		this.parts = parts;
	}
	public UserVO getTeam_leader() {
		return team_leader;
	}
	public void setTeam_leader(UserVO team_leader) {
		this.team_leader = team_leader;
	}
	
	
} // end class RecruitDetailDTO
