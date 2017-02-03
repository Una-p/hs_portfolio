package edu.hexa.leejaehoon.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.leejaehoon.domain.QaBoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

@Repository
public class QaBoardDAOImple implements QaBoardDAO {

	private static final Logger logger = LoggerFactory.getLogger(QaBoardDAOImple.class);
	private static final String NAMESPACE = "edu.hexa.leejaehoon.qaboard";
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<QaBoardVO> select() {
		
		List<QaBoardVO> list = sqlSession.selectList(NAMESPACE + ".selectAllQa");
		logger.info("dao list: " + list.size());
		
		return list;
	}

	@Override
	public int insert(QaBoardVO vo) {
		int result = sqlSession.insert(NAMESPACE + ".insertQa", vo);
		return result;
	}

	@Override
	public QaBoardVO select(int bno) {
		QaBoardVO vo = sqlSession.selectOne(NAMESPACE + ".selectBno", bno);
		
		int result = sqlSession.update(NAMESPACE + ".update_hits", bno);
		logger.info("조회수 ↑ : " + result);
		
		return vo;
	}

	@Override
	public int delete(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".delete",bno);
	}

	@Override
	public int update(QaBoardVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int getNumOfRecords() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".totalCount");
	}

	@Override
	public List<QaBoardVO> select(PaginationCriteria c) {
		
		return sqlSession.selectList(NAMESPACE + ".listPage", c);
	}

}
