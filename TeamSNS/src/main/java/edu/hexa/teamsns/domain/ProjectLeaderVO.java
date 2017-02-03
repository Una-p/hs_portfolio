package edu.hexa.teamsns.domain;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProjectLeaderVO {

	private String pid;
	private String leader_uid;
	
	private Logger logger = LoggerFactory.getLogger(ProjectLeaderVO.class);
	
	public ProjectLeaderVO(){
		logger.info("ProjectLeaderVO 생성");
	}

	public ProjectLeaderVO(String pid, String leader_uid) {
		logger.info("ProjectLeaderVO 생성 with parameter");
		this.pid = pid;
		this.leader_uid = leader_uid;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getLeader_uid() {
		return leader_uid;
	}

	public void setLeader_uid(String leader_uid) {
		this.leader_uid = leader_uid;
	}

}
