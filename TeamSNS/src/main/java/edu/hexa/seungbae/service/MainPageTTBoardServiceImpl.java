package edu.hexa.seungbae.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.seungbae.domain.MainPageTTBoardDTO;
import edu.hexa.seungbae.persistence.MainPageTTBoardDAO;

@Service
public class MainPageTTBoardServiceImpl implements MainPageTTBoardService {
	
	@Autowired
	private MainPageTTBoardDAO dao;
	

	@Override
	public List<MainPageTTBoardDTO> read() {
		return dao.select();
	}

}
