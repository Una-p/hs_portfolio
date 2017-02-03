package edu.hexa.leejaehoon.persistence;

import java.util.List;


import edu.hexa.leejaehoon.domain.QaBoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

public interface QaBoardDAO {

	public abstract List<QaBoardVO> select();
	
	public abstract int insert(QaBoardVO vo);
	
	public abstract QaBoardVO select(int bno);
	
	public abstract int delete(int bno);
	
	public abstract int update(QaBoardVO vo);
	
	public abstract int getNumOfRecords();
	public abstract List<QaBoardVO> select(PaginationCriteria c);
} // end interface
