package edu.hexa.leejaehoon.domain;

public class ReplyVO {

	
	private int rno;
	private int tt_bno;
	private String replier_uid;
	private String content;
	private String regdate;
	
	public ReplyVO(){}

	public ReplyVO(int rno, int tt_bno, String replier_uid, String content, String regdate) {
		
		this.rno = rno;
		this.tt_bno = tt_bno;
		this.replier_uid = replier_uid;
		this.content = content;
		this.regdate = regdate;
	}
	
	
	
	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getTt_bno() {
		return tt_bno;
	}

	public void setTt_bno(int tt_bno) {
		this.tt_bno = tt_bno;
	}

	public String getReplier_uid() {
		return replier_uid;
	}

	public void setReplier_uid(String replier_uid) {
		this.replier_uid = replier_uid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	
	
} // end class
