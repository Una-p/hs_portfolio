package edu.hexa.leejaehoon.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.leejaehoon.domain.BoardVO;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;

@Repository
public class BoardDAOImple implements BoardDAO {
	
	private static final String NAMESPCAE = "edu.hexa.leejaehoon.board";
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOImple.class);
	@Autowired
	SqlSession sqlsession;
	
	@Override
	public List<BoardVO> select() {
		
		List<BoardVO> list = sqlsession.selectList(NAMESPCAE + ".selectAllTip");
		
		logger.info("dao list = " + list.size());
		return list;
	}

	@Override
	public int insert(BoardVO vo) {
		logger.info("insert(): title = " + vo.getTitle());	
		int result = sqlsession.insert(NAMESPCAE + ".insertTip", vo);
		return result;
	}

	@Override
	public BoardVO select(int bno) {
			BoardVO vo = sqlsession.selectOne(NAMESPCAE + ".selectBno", bno);
			logger.info("select() 호출: bno = " + bno);
			int result = sqlsession.update(NAMESPCAE + ".update_hits", bno);
			logger.info("조회수↑ : " + result);
		return vo;
	}

	@Override
	public int getNumOfRecords() {
		
		return sqlsession.selectOne(NAMESPCAE + ".totalCount");
	}

	@Override
	public List<BoardVO> select(PaginationCriteria c) {
			
		
		return sqlsession.selectList(NAMESPCAE + ".listPage", c);
	}

	@Override
	public int delete(int bno) {
		
		return sqlsession.delete(NAMESPCAE + ".delete", bno);
	}

	@Override
	public int update(BoardVO vo) {
		// TODO Auto-generated method stub
		return sqlsession.update(NAMESPCAE + ".update", vo);
	}

}
