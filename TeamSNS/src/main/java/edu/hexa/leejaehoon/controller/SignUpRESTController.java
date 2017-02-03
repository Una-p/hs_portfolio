package edu.hexa.leejaehoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.leejaehoon.service.SignUpService;


@RestController
@RequestMapping(value="/signup")
public class SignUpRESTController {

	
	@Autowired
	SignUpService signupservice;
	
	@RequestMapping(value="/selectId",method=RequestMethod.POST)
	public ResponseEntity<Integer>  selectId(@RequestBody SignUpVO vo){
		int result = signupservice.select(vo);
		
		ResponseEntity<Integer> entity = null;
		if (result == 1) { // select 성공
			entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
			
		} else { // select 실패
			entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		}
		
		
		return entity;
		
	}
	
	@RequestMapping(value="/selectNick", method=RequestMethod.POST)
	public ResponseEntity<Integer> selectNick(@RequestBody SignUpVO vo){
		
		int result = signupservice.selectNick(vo);
		ResponseEntity<Integer> entity = null;
		if (result == 1) { // select 성공
			entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
			
		} else { // select 실패
			entity = new ResponseEntity<Integer>(result, HttpStatus.OK);
		}
		
		return entity;
	}
	
	
	
	
	
	
	
	
	
	
} // end class
