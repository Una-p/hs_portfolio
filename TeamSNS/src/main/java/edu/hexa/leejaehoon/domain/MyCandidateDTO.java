package edu.hexa.leejaehoon.domain;

import java.util.Date;

public class MyCandidateDTO {
	//프로젝트 아이디, 파트PK, 프로젝트 이름, 파트, 지원자 아이디, 지원멘트, 지원날짜, 상태
	// pid, part_pk, pname, part, user_id, comment, apply_regdate, state
	private String pid;
	private String part_pk;
	private String pname;
	private String part;
	private String user_id; 
	private String comment;
	private Date apply_regdate;
	private int state;
	
	public MyCandidateDTO() {}
	public MyCandidateDTO(String pid, String part_pk, String pname, String part, String user_id, String comment,
			Date apply_regdate, int state) {
		super();
		this.pid = pid;
		this.part_pk = part_pk;
		this.pname = pname;
		this.part = part;
		this.user_id = user_id;
		this.comment = comment;
		this.apply_regdate = apply_regdate;
		this.state = state;
	}
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPart_pk() {
		return part_pk;
	}
	public void setPart_pk(String part_pk) {
		this.part_pk = part_pk;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getApply_regdate() {
		return apply_regdate;
	}
	public void setApply_regdate(Date apply_regdate) {
		this.apply_regdate = apply_regdate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}

	
}
