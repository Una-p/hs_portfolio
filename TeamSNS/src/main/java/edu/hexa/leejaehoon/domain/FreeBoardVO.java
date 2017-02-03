package edu.hexa.leejaehoon.domain;

import java.util.Date;

public class FreeBoardVO {

	private int bno;
	private String title;
	private String content;
	private String writer_uid;
	private Date regdate;
	private int hits;
	
	public FreeBoardVO(){}

	public FreeBoardVO(int bno, String title, String content, String writer_uid, Date regdate, int hits) {
		
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer_uid = writer_uid;
		this.regdate = regdate;
		this.hits = hits;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter_uid() {
		return writer_uid;
	}

	public void setWriter_uid(String writer_uid) {
		this.writer_uid = writer_uid;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}
	
	
	
	
	
} // end class
