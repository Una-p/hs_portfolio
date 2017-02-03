package edu.hexa.seungbae.persistence;

import java.util.List;

import edu.hexa.seungbae.domain.MainPageQABoardDTO;

public interface MainPageQABoardDAO {
	
	public abstract List<MainPageQABoardDTO> select();

}
