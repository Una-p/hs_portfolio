package edu.hexa.leejaehoon.pageutill;

public class PaginationCriteria {

	private int page; // 현재 화면에 보여지는 페이지 번호
	private int perPage; // 현재 화면에 보여질 게시글 수
	
	public PaginationCriteria(){
		page = 1;
		perPage = 20;
	}
	
	public PaginationCriteria(int page,int perPage){
		this.page = page;
		this.perPage = perPage;
	}

	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public int getStart() {
		int start = (page - 1) * perPage + 1;
		return start;
	}
	public int getEnd() {
		int end = page * perPage;
		return end;
	}
	
	
	
	
} // end class
