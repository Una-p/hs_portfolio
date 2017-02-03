package edu.hexa.seungbae.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.seungbae.domain.MainPageInfoBoardDTO;
import edu.hexa.seungbae.persistence.MainPageInfoBoardDAO;

@Service
public class MainPageInfoBoardServiceImpl implements MainPageInfoBoardService {
	private static final Logger logger = LoggerFactory.getLogger(MainPageInfoBoardServiceImpl.class);
	
	@Autowired
	private MainPageInfoBoardDAO dao;
	

	@Override
	public List<MainPageInfoBoardDTO> read() {
		logger.info("MainPageInfoBoardService 실행");
		return dao.select();
	}

}
