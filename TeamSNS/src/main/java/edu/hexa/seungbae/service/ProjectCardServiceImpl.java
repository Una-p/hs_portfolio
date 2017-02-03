package edu.hexa.seungbae.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.seungbae.domain.ProjectCardDTO;
import edu.hexa.seungbae.persistence.ProjectCardDAO;

@Service
public class ProjectCardServiceImpl implements ProjectCardService{
	private Logger logger = LoggerFactory.getLogger(ProjectCardServiceImpl.class);
	
	@Autowired
	private ProjectCardDAO dao;

	@Override
	public List<ProjectCardDTO> read() {
		return dao.select();
	}
	
	@Override
	public List<ProjectCardDTO> read(String[] districts) {
		if (districts != null) logger.info("ProjectCardService: 지역검색 실행, 갯수: " + districts.length);
		return dao.select(districts);
	}

	@Override
	public List<ProjectCardDTO> readInfiniteDown(int rbno) {
		return dao.selectInfiniteDown(rbno);
	}

	@Override
	public List<ProjectCardDTO> readInfiniteUp(int rbno) {
		return dao.selectInfiniteUp(rbno);
	}

	@Override
	public int readMaxRbno() {
		return dao.selectMaxRbno();
	}
	
	
	
	


}
