package edu.hexa.seungbae.domain;

public class MainPageQABoardDTO {
	String nickname;
	String title;
	
	public MainPageQABoardDTO(String nickname, String title) {
		super();
		this.nickname = nickname;
		this.title = title;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
