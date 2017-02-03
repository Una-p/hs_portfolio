package edu.hexa.leejaehoon.service;

import java.util.List;

import edu.hexa.leejaehoon.domain.BoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

public interface BoardService {
	
	public abstract List<BoardVO> selectTip();
	
	public abstract int insertTip(BoardVO vo);
	
	public abstract BoardVO read(int bno);
	
	public abstract int delete(int bno);
	
	public abstract int update(BoardVO vo);
	
	
	public abstract int getNumOfRecords();
	public abstract List<BoardVO> read(PaginationCriteria c);
}
