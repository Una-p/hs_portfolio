package edu.hexa.leejaehoon.persistence;

import java.util.List;

import edu.hexa.leejaehoon.domain.ReplyVO;

public interface ReplyDAO {

	public abstract int  insert(ReplyVO vo);
	public abstract List<ReplyVO> select(int bno);
	public abstract int update(ReplyVO vo);
	public abstract int delete(int rno);
	
	public abstract int selectBno(int bno);
	
} // end interface
