package edu.hexa.leejaehoon.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.hexa.leejaehoon.domain.ReplyVO;
import edu.hexa.leejaehoon.service.ReplyService;

@RestController
@RequestMapping(value="/replies")
public class ReplyController {

		private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
		
		@Autowired
		private ReplyService replyservice;
		
		@RequestMapping(method=RequestMethod.POST)
		public ResponseEntity<Integer> createReply(@RequestBody ReplyVO vo){
			
			logger.info("createReply() 호출...");
			logger.info("bno:" + vo.getTt_bno());
			logger.info("Replier:" + vo.getReplier_uid());
			
			ResponseEntity<Integer> entity = null;
			int result = replyservice.create(vo);
			if (result == 1) { // DB insert 성공
				entity = new ResponseEntity<Integer>(1, HttpStatus.OK);
			} else { // DB insert 실패
				entity = new ResponseEntity<Integer>(0, HttpStatus.BAD_REQUEST);
			}
			
			return entity;
		}
		
		@RequestMapping(value="/all/{no}", method=RequestMethod.GET)
		public ResponseEntity<List<ReplyVO>> readReplies(@PathVariable("no") Integer bno,Model model){
			
			List<ReplyVO> list = replyservice.read(bno);
			
			
			ResponseEntity<List<ReplyVO>> entity = null;
			if (list != null) { // select 성공
				entity = new ResponseEntity<>(list, HttpStatus.OK);
				
			} else { // select 실패
				entity = new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}
			
			int count = list.size();
			logger.info("count:" + count);
			model.addAttribute("count", count);
			return entity;
		}
	
	
	
} // end class
