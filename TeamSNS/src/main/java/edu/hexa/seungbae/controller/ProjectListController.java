package edu.hexa.seungbae.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.hexa.seungbae.domain.ProjectCardDTO;
import edu.hexa.seungbae.service.ProjectCardService;

@Controller
@RequestMapping(value="/project", method=RequestMethod.GET)
public class ProjectListController {
	
	@Autowired
	private ProjectCardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectListController.class);
	
	@RequestMapping(value="projectList", method=RequestMethod.GET)
	public void getTeamList(Model model){
		logger.info("TeamList 호출");
		List<ProjectCardDTO> projectCardList = service.read();
		model.addAttribute("projectCardList", projectCardList);	
	} // end teamCard()
	
/*	@RequestMapping(value="projectDetail", method=RequestMethod.GET)
	public void getTeamDetail() {
		
	}*/

}// end class TeamListController

