package edu.hexa.teamsns.domain;

import java.util.Date;

public class InfoBoardVO {
	private int bno;
	private String category;
	private String title;
	private String url;
	private Date start;
	private Date end;
	private Date regdate;
	private String user_id;
	
	public InfoBoardVO() {}
	public InfoBoardVO(String category) {
		this.category = category;
	}
	
	public InfoBoardVO(int bno, String category, String title, String url, Date start, Date end, Date regdate,
			String user_id) {
		this.bno = bno;
		this.category = category;
		this.title = title;
		this.url = url;
		this.start = start;
		this.end = end;
		this.regdate = regdate;
		this.user_id = user_id;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
}
