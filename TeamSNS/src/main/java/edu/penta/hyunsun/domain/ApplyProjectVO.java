package edu.penta.hyunsun.domain;

public class ApplyProjectVO {
	private String part_pk;
	private String user_id;
	private String comment;
	private int state;
	private String pid;
	private String part;
	
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	
	
	public ApplyProjectVO() {}
//	public ApplyProjectVO(String part_pk, String user_id, String comment, int state) {
//		super();
//		this.part_pk = part_pk;
//		this.user_id = user_id;
//		this.comment = comment;
//		this.state = state;
//	}
	public ApplyProjectVO(String part_pk, String user_id, String comment, int state, String pid, String part) {
		super();
		this.part_pk = part_pk;
		this.user_id = user_id;
		this.comment = comment;
		this.state = state;
		this.pid = pid;
		this.part = part;
	}
	
	public String getPart_pk() {
		return part_pk;
	}

	public void setPart_pk(String part_pk) {
		this.part_pk = part_pk;
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
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}

} // end class ApplyProjectVO
