package edu.hexa.leejaehoon.service;

import java.util.List;


import edu.hexa.leejaehoon.domain.QaBoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

public interface QaBoardService {
	
public abstract List<QaBoardVO> selectTip();
	
	public abstract int insertQa(QaBoardVO vo);
	
	public abstract QaBoardVO read(int bno);
	
	public abstract int delete(int bno);
	
	public abstract int update(QaBoardVO vo);
	
	
	public abstract int getNumOfRecords();
	public abstract List<QaBoardVO> read(PaginationCriteria c);
}
