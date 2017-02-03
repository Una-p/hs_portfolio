package edu.hexa.seungbae.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.seungbae.domain.MainPageQABoardDTO;
import edu.hexa.seungbae.persistence.MainPageQABoardDAO;

@Service
public class MainPageQABoardServiceImpl implements MainPageQABoardService {
	
	@Autowired
	private MainPageQABoardDAO dao;

	@Override
	public List<MainPageQABoardDTO> read() {
		return dao.select();
	}

}
