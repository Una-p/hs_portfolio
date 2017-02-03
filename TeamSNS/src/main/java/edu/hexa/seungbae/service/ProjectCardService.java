package edu.hexa.seungbae.service;

import java.util.List;

import edu.hexa.seungbae.domain.ProjectCardDTO;

public interface ProjectCardService {
	
	List<ProjectCardDTO>read();
	List<ProjectCardDTO>read(String[] districts);
	List<ProjectCardDTO>readInfiniteDown(int rbno);
	List<ProjectCardDTO>readInfiniteUp(int rbno);
	int readMaxRbno();
	
}
