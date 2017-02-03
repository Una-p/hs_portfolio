package edu.hexa.leejaehoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.penta.hyunsun.domain.RecruitDetailDTO;
import edu.penta.hyunsun.service.RecruitDetailService;

@RestController
@RequestMapping(value="/project")
public class ProjectDetailRESTController {

	@Autowired
	RecruitDetailService service;
	
	
	@RequestMapping(value="/projectInfo/{rbno}",method=RequestMethod.GET)
	public ResponseEntity<RecruitDetailDTO> projectDetail(@PathVariable("rbno") Integer rbno){
		
			RecruitDetailDTO dto = service.select(rbno);
			
			ResponseEntity<RecruitDetailDTO> entity  = null;
			if (dto != null) { // select 성공
				entity = new ResponseEntity<RecruitDetailDTO>(dto, HttpStatus.OK);
				
			} else { // select 실패
				entity = new ResponseEntity<RecruitDetailDTO>(dto, HttpStatus.BAD_REQUEST);
			}
		
		return entity;
	}
	
	
} // end class
