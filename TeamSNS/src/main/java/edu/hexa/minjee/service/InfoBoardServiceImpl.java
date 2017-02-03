package edu.hexa.minjee.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.minjee.persistence.InfoBoardDAO;
import edu.hexa.teamsns.domain.InfoBoardVO;


@Service
public class InfoBoardServiceImpl implements InfoBoardService {
	
	private static final Logger logger =
			LoggerFactory.getLogger(InfoBoardServiceImpl.class);
	
	
	@Autowired
	private InfoBoardDAO infoDAO;
	@Override
	public int create(InfoBoardVO vo) {
		return infoDAO.insert(vo);
	}
	@Override
	public List<InfoBoardVO> read() {
		return infoDAO.select();
	}
	@Override
	public InfoBoardVO read(int bno) {
		return infoDAO.select(bno);
	}
	@Override
	public int update(InfoBoardVO vo) {
		return infoDAO.update(vo);
	}
	@Override
	public int delete(int bno) {
		return infoDAO.delete(bno);
	}
	@Override
	public int getNumOfRecords(String category) {
		return infoDAO.getNumOfRecords(category);
	}
	@Override
	public List<InfoBoardVO> read(PaginationCriteria c, InfoBoardVO vo) {
		logger.info("InfoBoardService: read(c, vo)호출....");
		logger.info("vo.getCategory: " + vo.getCategory());
		return infoDAO.select(c, vo);
	}

}
