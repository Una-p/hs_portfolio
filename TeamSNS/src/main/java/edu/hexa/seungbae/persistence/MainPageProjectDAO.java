package edu.hexa.seungbae.persistence;

import java.util.List;
import edu.hexa.seungbae.domain.MainPageProjectDTO;

public interface MainPageProjectDAO {
	
	public abstract List<MainPageProjectDTO> select();

}
