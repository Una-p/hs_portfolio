package edu.hexa.leejaehoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.domain.QaBoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.leejaehoon.persistence.QaBoardDAO;

@Service
public class QaBoardServiceimple implements QaBoardService {
	
	@Autowired
	QaBoardDAO qaBoardDAO;

	@Override
	public List<QaBoardVO> selectTip() {
		// TODO Auto-generated method stub
		return qaBoardDAO.select();
	}

	@Override
	public int insertQa(QaBoardVO vo) {
		// TODO Auto-generated method stub
		return qaBoardDAO.insert(vo);
	}

	@Override
	public QaBoardVO read(int bno) {
		// TODO Auto-generated method stub
		return qaBoardDAO.select(bno);
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return qaBoardDAO.delete(bno);
	}

	@Override
	public int update(QaBoardVO vo) {
		// TODO Auto-generated method stub
		return qaBoardDAO.update(vo);
	}

	@Override
	public int getNumOfRecords() {
		// TODO Auto-generated method stub
		return qaBoardDAO.getNumOfRecords();
	}

	@Override
	public List<QaBoardVO> read(PaginationCriteria c) {
		// TODO Auto-generated method stub
		return qaBoardDAO.select(c);
	}

}
