package edu.hexa.seungbae.persistence;

import java.util.List;

import edu.hexa.seungbae.domain.MainPageInfoBoardDTO;

public interface MainPageInfoBoardDAO {
	
	public abstract List<MainPageInfoBoardDTO> select();

}
