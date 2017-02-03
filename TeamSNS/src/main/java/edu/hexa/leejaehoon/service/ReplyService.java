package edu.hexa.leejaehoon.service;

import java.util.List;

import edu.hexa.leejaehoon.domain.ReplyVO;

public interface ReplyService {

	public abstract int create(ReplyVO vo);
	public abstract List<ReplyVO> read(int bno);
	public abstract int update(ReplyVO vo);
	public abstract int delete(int rno);	
} // end interface
