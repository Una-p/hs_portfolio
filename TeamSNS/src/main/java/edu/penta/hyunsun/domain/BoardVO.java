package edu.penta.hyunsun.domain;


public class BoardVO {

	private int bno;
	private String title;
	private String content;
	private String writer_uid;
	private String regdate;
	private String recommend;
	private String hits;
	private String bk;
	
	public BoardVO(){}
	
	public BoardVO(int bno, String title, String content, String writer_uid, String regdate, String recommend,
			String hits) {
		
		this.title = title;
		this.content = content;
		this.writer_uid = writer_uid;
		this.regdate = regdate;
		this.recommend = recommend;
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

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	public String getHits() {
		return hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getBk() {
		return bk;
	}

	public void setBk(String bk) {
		this.bk = bk;
	}
	
	
	
	
} // end class
