package edu.hexa.leejaehoon.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.domain.FreeBoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.leejaehoon.persistence.FreeBoardDAO;

@Service
public class FreeBoardServiceImple implements FreeBoardService {

	private static final Logger logger = LoggerFactory.getLogger(FreeBoardServiceImple.class);
	
	@Autowired
	FreeBoardDAO freeBoardDAO;
	
	@Override
	public List<FreeBoardVO> selectTip() {
		// TODO Auto-generated method stub
		return freeBoardDAO.select();
	}

	@Override
	public int insertFree(FreeBoardVO vo) {
		// TODO Auto-generated method stub
		return freeBoardDAO.insert(vo);
	}

	@Override
	public FreeBoardVO read(int bno) {
		logger.info("service: "  + bno);
		return freeBoardDAO.select(bno);
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return freeBoardDAO.delete(bno);
	}

	@Override
	public int update(FreeBoardVO vo) {
		// TODO Auto-generated method stub
		return freeBoardDAO.update(vo);
	}

	@Override
	public int getNumOfRecords() {
		// TODO Auto-generated method stub
		return freeBoardDAO.getNumOfRecords();
	}

	@Override
	public List<FreeBoardVO> read(PaginationCriteria c) {
		// TODO Auto-generated method stub
		return freeBoardDAO.select(c);
	}

}
