package edu.hexa.seungbae.persistence;

import java.util.List;

import edu.hexa.seungbae.domain.ProjectCardDTO;


public interface ProjectCardDAO {
	
	public abstract List<ProjectCardDTO> select();
	public abstract List<ProjectCardDTO> select(String[] districts);
	public abstract List<ProjectCardDTO> selectInfiniteDown(int rbno);
	public abstract List<ProjectCardDTO> selectInfiniteUp(int rbno);
	public abstract int selectMaxRbno();
}
