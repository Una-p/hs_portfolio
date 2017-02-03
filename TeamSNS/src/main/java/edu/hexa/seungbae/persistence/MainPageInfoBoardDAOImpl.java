package edu.hexa.seungbae.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.seungbae.domain.MainPageInfoBoardDTO;

@Repository
public class MainPageInfoBoardDAOImpl implements MainPageInfoBoardDAO {
	
	private static final String NAMESPACE = "edu.penta.seungbae.mainBaords";
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MainPageInfoBoardDTO> select() {
		return sqlSession.selectList(NAMESPACE + ".selectInfoBaord");
	}

}
