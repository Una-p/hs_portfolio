package edu.hexa.leejaehoon.persistence;

import java.util.List;

import edu.hexa.leejaehoon.domain.BoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

public interface BoardDAO {

	public abstract List<BoardVO> select();
	
	public abstract int insert(BoardVO vo);
	
	public abstract BoardVO select(int bno);
	
	public abstract int delete(int bno);
	
	public abstract int update(BoardVO vo);
	
	public abstract int getNumOfRecords();
	public abstract List<BoardVO> select(PaginationCriteria c);
} // end interface
