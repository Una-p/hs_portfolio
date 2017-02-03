package edu.hexa.seungbae.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.hexa.seungbae.domain.ProjectCardDTO;
import edu.hexa.seungbae.service.ProjectCardService;

@RestController
@RequestMapping(value="projects")
public class ProjectsRESTController {
	private static final Logger logger = LoggerFactory.getLogger(ProjectsRESTController.class);
	
	@Autowired
	private ProjectCardService service;
	
	// 지역선택을 하지 않은 null 값을 처리해 주는 controller
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ResponseEntity<List<ProjectCardDTO>> readAllProjects (){
		final String[] districts = null;
		//logger.info("readProjectsByDistricts, count: " + districts.length);
		List<ProjectCardDTO> list = service.read(districts);
		
		ResponseEntity<List<ProjectCardDTO>> entity = null;
		
		if (list != null) {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.OK);
		}else {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.BAD_REQUEST);
		}		
		return entity;	
	}
	
	@RequestMapping(value="{districts}", method=RequestMethod.GET)
	public ResponseEntity<List<ProjectCardDTO>> readProjects (@PathVariable("districts") String[] districts){
		logger.info("readProjectsByDistricts, count: " + districts.length);
		List<ProjectCardDTO> list = service.read(districts);
		
		ResponseEntity<List<ProjectCardDTO>> entity = null;
		
		if (list != null) {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.OK);
		}else {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.BAD_REQUEST);
		}		
		return entity;	
	}
	
	@RequestMapping(value="/infiniteDown/{rbno}", method=RequestMethod.GET)
	public ResponseEntity<List<ProjectCardDTO>> readProjectsInfiniteDown (@PathVariable("rbno") int rbno){
		List<ProjectCardDTO> list = service.readInfiniteDown(rbno);
		logger.info("마지막 카드번호: " + rbno);
		ResponseEntity<List<ProjectCardDTO>> entity = null;
		
		if (list != null) {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.OK);
		}else {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.BAD_REQUEST);
		}		
		return entity;	
	}
	
	@RequestMapping(value="/infiniteUp/{rbno}", method=RequestMethod.GET)
	public ResponseEntity<List<ProjectCardDTO>> readProjectInfiniteUp (@PathVariable("rbno") int rbno){
		List<ProjectCardDTO> list = service.readInfiniteUp(rbno);
		logger.info("시작 카드번호: " + rbno);
		ResponseEntity<List<ProjectCardDTO>> entity = null;
		
		if (list != null) {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.OK);
		}else {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.BAD_REQUEST);
		}		
		return entity;	
	}
	
	@RequestMapping(value="/maxRbno", method=RequestMethod.GET)
	public ResponseEntity<Integer> readMaxRbno(){
		int maxRbno = service.readMaxRbno();
		
		ResponseEntity<Integer> entity = null;
		
		if (maxRbno != 0) {
			entity = new ResponseEntity<Integer>(maxRbno, HttpStatus.OK);
			logger.info("프로젝트 개수: " + maxRbno + "," + entity.hashCode());
		}else {
			entity = new ResponseEntity<Integer>(maxRbno, HttpStatus.BAD_REQUEST);
		}		
		return entity;	
	}
	

}
