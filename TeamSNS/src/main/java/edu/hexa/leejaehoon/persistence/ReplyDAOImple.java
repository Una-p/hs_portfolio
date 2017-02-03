package edu.hexa.leejaehoon.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.leejaehoon.domain.ReplyVO;
@Repository
public class ReplyDAOImple implements ReplyDAO {

	public static final String NAMESPACE = "edu.hexa.leejaehoon.replyMapper";
	
	
	@Autowired
	SqlSession sqlsession;
	
	@Override
	public int insert(ReplyVO vo) {
		
		return sqlsession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public List<ReplyVO> select(int bno) {
		
		return sqlsession.selectList(NAMESPACE + ".select", bno);
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

	@Override
	public int selectBno(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

}
