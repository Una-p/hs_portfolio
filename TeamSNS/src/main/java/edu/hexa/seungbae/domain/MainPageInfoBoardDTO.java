package edu.hexa.seungbae.domain;

import java.sql.Timestamp;

public class MainPageInfoBoardDTO {
	String title;
	Timestamp regdate;
	
	public MainPageInfoBoardDTO(String title, Timestamp regdate) {
		super();
		this.title = title;
		this.regdate = regdate;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	
}
