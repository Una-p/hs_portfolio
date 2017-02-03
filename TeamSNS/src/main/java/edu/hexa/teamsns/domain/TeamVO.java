package edu.hexa.teamsns.domain;

import java.util.Date;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TeamVO {
	
	private String team_id;
	private String team_name;
	private String team_logo_img;
	private Date team_start;
	private String team_intro;
	private String team_area;
	private String user_id;
	
	private Logger logger = LoggerFactory.getLogger(TeamVO.class);
	
	public TeamVO(){
		team_id = "t" + UUID.randomUUID().toString();
	}

	public TeamVO(String team_name, String team_logo_img, Date team_start, String team_intro,
			String team_area, String user_id) {

		team_id = "t" + UUID.randomUUID().toString();
		this.team_name = team_name;
		this.team_logo_img = team_logo_img;
		this.team_start = team_start;
		this.team_intro = team_intro;
		this.team_area = team_area;
		this.user_id = user_id;
	}

	public String getTeam_id() {
		return team_id;
	}


	public String getTeam_name() {
		return team_name;
	}

	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}

	public String getTeam_logo_img() {
		return team_logo_img;
	}

	public void setTeam_logo_img(String team_logo_img) {
		this.team_logo_img = team_logo_img;
	}

	public Date getTeam_start() {
		return team_start;
	}

	public void setTeam_start(Date team_start) {
		this.team_start = team_start;
	}

	public String getTeam_intro() {
		return team_intro;
	}

	public void setTeam_intro(String team_intro) {
		this.team_intro = team_intro;
	}

	public String getTeam_area() {
		return team_area;
	}

	public void setTeam_area(String team_area) {
		this.team_area = team_area;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
}
