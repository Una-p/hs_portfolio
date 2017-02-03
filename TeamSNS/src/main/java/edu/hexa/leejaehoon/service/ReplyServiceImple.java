package edu.hexa.leejaehoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.domain.ReplyVO;
import edu.hexa.leejaehoon.persistence.ReplyDAO;
@Service
public class ReplyServiceImple implements ReplyService {

	@Autowired
	private ReplyDAO replyDAO;
	
	@Override
	public int create(ReplyVO vo) {
		
		int result = replyDAO.insert(vo);
		
		return result;
	}

	@Override
	public List<ReplyVO> read(int bno) {
		// TODO Auto-generated method stub
		return replyDAO.select(bno);
	}

	@Override
	public int update(ReplyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int rno) {
		// TODO Auto-generated method stub
		return 0;
	}

}
