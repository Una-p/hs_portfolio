package edu.hexa.leejaehoon.domain;

import java.util.Date;

public class MyApplyDTO {
	// SELECT pro.pid, app.part_pk, pro.pname, app.part, app.comment, app.state
	private String pid;
	private String part_pk;
	private String pname;
	private String part;
	private String comment;
	private Date apply_regdate;
	private int state;
	
	public MyApplyDTO() {}
	public MyApplyDTO(String pid, String part_pk, String pname, String part, String comment, Date apply_regdate,
			int state) {
		super();
		this.pid = pid;
		this.part_pk = part_pk;
		this.pname = pname;
		this.part = part;
		this.comment = comment;
		this.apply_regdate = apply_regdate;
		this.state = state;
	}
	
	
	public Date getApply_regdate() {
		return apply_regdate;
	}
	public void setApply_regdate(Date apply_regdate) {
		this.apply_regdate = apply_regdate;
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
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	
	

}
