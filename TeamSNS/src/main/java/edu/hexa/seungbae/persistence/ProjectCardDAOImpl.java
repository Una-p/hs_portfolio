package edu.hexa.seungbae.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.seungbae.domain.ProjectCardDTO;

@Repository
public class ProjectCardDAOImpl implements ProjectCardDAO {

	private static final String NAMESPACE = "edu.penta.seungbae.projectcard";
	private Logger logger = LoggerFactory.getLogger(ProjectCardDAOImpl.class);

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ProjectCardDTO> select() {
		return sqlSession.selectList(NAMESPACE + ".selectAll");
	}

	@Override
	public List<ProjectCardDTO> select(String[] districts) {
		ArrayList<String> list = new ArrayList<>();
		if (districts != null) {
			logger.info("ProjectCardDAO: 지역검색 실행, 갯수: " + districts.length);
			for (String d : districts) {
				list.add(d);
			}
		} else {
			list = null;
		}
		// MyBatis에는 String배열을 넘길 수 없음.
		return sqlSession.selectList(NAMESPACE + ".selectByDistricts", list);
	}

	@Override
	public List<ProjectCardDTO> selectInfiniteDown(int rbno) {
		return sqlSession.selectList(NAMESPACE + ".selectInfiniteDown", rbno);
	}
	
	@Override
	public List<ProjectCardDTO> selectInfiniteUp(int rbno) {
		return sqlSession.selectList(NAMESPACE + ".selectInfiniteUp", rbno);
	}

	@Override
	public int selectMaxRbno() {
		return sqlSession.selectOne(NAMESPACE +".selectMaxRbno");
	}
	
	

}
