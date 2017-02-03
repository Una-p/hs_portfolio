package edu.hexa.leejaehoon.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.domain.BoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.leejaehoon.persistence.BoardDAO;

@Service
public class BoardServiceImple implements BoardService {

	
	
	@Autowired
	private BoardDAO boardDao;
	
	@Override
	public List<BoardVO> selectTip() {
		
		return boardDao.select();
	}

	@Override
	public int insertTip(BoardVO vo) {
		
		return boardDao.insert(vo);
	}

	@Override
	public BoardVO read(int bno) {
		
		return boardDao.select(bno);
	}

	@Override
	public int getNumOfRecords() {
		
		return boardDao.getNumOfRecords();
	}

	@Override
	public List<BoardVO> read(PaginationCriteria c) {
		// TODO Auto-generated method stub
		return boardDao.select(c);
	}

	@Override
	public int delete(int bno) {
		
		return boardDao.delete(bno);
	}

	@Override
	public int update(BoardVO vo) {
		// TODO Auto-generated method stub
		return boardDao.update(vo);
	}

}
