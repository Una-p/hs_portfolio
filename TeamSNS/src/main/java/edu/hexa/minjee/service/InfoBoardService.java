package edu.hexa.minjee.service;

import java.util.List;

import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.teamsns.domain.InfoBoardVO;

//CRUD
public interface InfoBoardService {
	public abstract int create(InfoBoardVO vo);
	public abstract List<InfoBoardVO> read();
	public abstract InfoBoardVO read(int bno);
	public abstract int update(InfoBoardVO vo);
	public abstract int delete(int bno);
	
	public abstract int getNumOfRecords(String category);
	public abstract List<InfoBoardVO> read(PaginationCriteria c, InfoBoardVO vo);
}
