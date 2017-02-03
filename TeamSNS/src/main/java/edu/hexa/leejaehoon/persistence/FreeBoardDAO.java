package edu.hexa.leejaehoon.persistence;

import java.util.List;

import edu.hexa.leejaehoon.domain.FreeBoardVO;

import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

public interface FreeBoardDAO {

	public abstract List<FreeBoardVO> select();
	
	public abstract int insert(FreeBoardVO vo);
	
	public abstract FreeBoardVO select(int bno);
	
	public abstract int delete(int bno);
	
	public abstract int update(FreeBoardVO vo);
	
	public abstract int getNumOfRecords();
	public abstract List<FreeBoardVO> select(PaginationCriteria c);
} // end interface
