package edu.hexa.seungbae.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.seungbae.domain.MainPageProjectDTO;
import edu.hexa.seungbae.persistence.MainPageProjectDAO;

@Service
public class MainPageProjectServiceImpl implements MainPageProjectService {
	private static final Logger logger = LoggerFactory.getLogger(MainPageProjectServiceImpl.class);
	
	@Autowired
	private MainPageProjectDAO dao;
	
	
	@Override
	public List<MainPageProjectDTO> read() {
		logger.info("MainPageProjectService 실행");
		return dao.select();
	}

}
