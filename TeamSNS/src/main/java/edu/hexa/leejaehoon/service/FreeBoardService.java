package edu.hexa.leejaehoon.service;

import java.util.List;

import edu.hexa.leejaehoon.domain.FreeBoardVO;

import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

public interface FreeBoardService {
	
public abstract List<FreeBoardVO> selectTip();
	
	public abstract int insertFree(FreeBoardVO vo);
	
	public abstract FreeBoardVO read(int bno);
	
	public abstract int delete(int bno);
	
	public abstract int update(FreeBoardVO vo);
	
	
	public abstract int getNumOfRecords();
	public abstract List<FreeBoardVO> read(PaginationCriteria c);
}
