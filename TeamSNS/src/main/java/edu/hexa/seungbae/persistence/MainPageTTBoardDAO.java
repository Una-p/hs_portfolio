package edu.hexa.seungbae.persistence;

import java.util.List;

import edu.hexa.seungbae.domain.MainPageTTBoardDTO;

public interface MainPageTTBoardDAO {
	
	public abstract List<MainPageTTBoardDTO> select();

}
