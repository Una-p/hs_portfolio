package edu.hexa.minjee.persistence;

import java.util.List;

import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.teamsns.domain.InfoBoardVO;

public interface InfoBoardDAO {
	public abstract int insert(InfoBoardVO vo);
	public abstract List<InfoBoardVO> select();
	public abstract InfoBoardVO select(int bno);
	public abstract int update(InfoBoardVO vo);
	public abstract int delete(int bno);
	
	// 페이징 처리
	public abstract int getNumOfRecords(String category);
	public abstract List<InfoBoardVO> select(PaginationCriteria c, InfoBoardVO vo);
}
