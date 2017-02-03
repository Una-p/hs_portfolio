package edu.hexa.leejaehoon.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.hexa.leejaehoon.service.ProjectInfoService;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;
import edu.penta.hyunsun.service.RecruitDetailService;

@RestController
@RequestMapping(value="/project")
public class ProjectInfoREST {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectInfoREST.class);
	
	@Autowired
	private RecruitDetailService service;
	@Autowired
	private ProjectInfoService projectInfoService;
	
	@RequestMapping(value="/all/{no}", method=RequestMethod.GET)
	public ResponseEntity<RecruitDetailDTO> selectProject(@PathVariable("no") Integer rbno){
		
		RecruitDetailDTO dto = service.select(rbno);
		
		logger.info("RESTcontoroller dto : " + dto);
		ResponseEntity<RecruitDetailDTO> entity = null;
		if (dto != null) { // select 성공
			entity = new ResponseEntity<RecruitDetailDTO>(dto, HttpStatus.OK);
			
		} else { // select 실패
			entity = new ResponseEntity<RecruitDetailDTO>(dto, HttpStatus.BAD_REQUEST);
		}
		logger.info("date" + dto.getProject().getStart());
		return entity;
	}
	
	/*@RequestMapping(value="/projectUpdate/{rbno}", method=RequestMethod.PUT)
	public ResponseEntity<Integer> projectUpdate(@PathVariable("rbno") Integer rbno,@RequestBody RecruitProjectVO vo){
		
		ResponseEntity<Integer> entity = null;
		vo.setRbno(rbno);
		int result =projectInfoService.update(vo);
		logger.info("dvo 결과 ==" + vo);
		logger.info("result 값: " + result);
		if(result == 1){
			entity = new ResponseEntity<Integer>( 1, HttpStatus.OK);
		}
		
		return entity;
	}*/
	
	/*@RequestMapping(value="projectInfo", method=RequestMethod.POST)
	public ResponseEntity<Integer> projectInfoUpdate(@RequestBody RecruitDetailDTO dto){
			logger.info("controller dto값:" + dto.getRecruit().getTitle());
		ResponseEntity<Integer> entity = null;
		int result = projectInfoService.update(dto);
		logger.info("dto 결과 ==" + dto);
		logger.info("result 값: " + result);
		if(result == 1){
			entity = new ResponseEntity<Integer>( 1, HttpStatus.OK);
		}
		
		return entity;*/
	
	
} // end class
