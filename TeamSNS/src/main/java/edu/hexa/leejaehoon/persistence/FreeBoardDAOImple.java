package edu.hexa.leejaehoon.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.leejaehoon.domain.FreeBoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

@Repository
public class FreeBoardDAOImple implements FreeBoardDAO {

	private static final Logger logger = LoggerFactory.getLogger(FreeBoardDAOImple.class);
	private static final String NAMESPACE = "edu.hexa.leejaehoon.freeboard";
	
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public List<FreeBoardVO> select() {
		List<FreeBoardVO> list = sqlSession.selectList(NAMESPACE + ".selectAll");
		return list;
	}

	@Override
	public int insert(FreeBoardVO vo) {
		int result = sqlSession.insert(NAMESPACE + ".insert", vo);
		return result;
	}

	@Override
	public FreeBoardVO select(int bno) {
		
		FreeBoardVO vo = sqlSession.selectOne(NAMESPACE + ".selectBno", bno);
		logger.info("dao bno select" + vo.getContent());
		
		int result = sqlSession.update(NAMESPACE + ".update_hits", bno);
		logger.info("조회수↑ : "+result);
		return vo;
	}

	@Override
	public int delete(int bno) {
		int result = sqlSession.delete(NAMESPACE + ".delete", bno);
		return result;
	}

	@Override
	public int update(FreeBoardVO vo) {
			int result = sqlSession.update(NAMESPACE + ".update", vo);
		return result;
	}

	@Override
	public int getNumOfRecords() {
		
		return sqlSession.selectOne(NAMESPACE + ".totalCount");
	}

	@Override
	public List<FreeBoardVO> select(PaginationCriteria c) {
		
		return sqlSession.selectList(NAMESPACE + ".listPage",c) ;
	}

}
