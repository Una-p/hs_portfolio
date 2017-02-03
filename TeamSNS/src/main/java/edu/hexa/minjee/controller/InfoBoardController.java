package edu.hexa.minjee.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.leejaehoon.pageutill.PageMaker;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.minjee.service.InfoBoardService;
import edu.hexa.teamsns.domain.InfoBoardVO;

@Controller
@RequestMapping(value="/info_board")
public class InfoBoardController {
	
	private static final Logger logger =
			LoggerFactory.getLogger(InfoBoardController.class);
	
	private SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	
	
	@Autowired
	private InfoBoardService infoService;
	
	@RequestMapping(value="edu", method=RequestMethod.GET)
	public void eduList(Integer page, Model model) {
		
		PaginationCriteria c = new PaginationCriteria();
		// page 세팅 
		if(page == null) {
			page = 1;
		} else if (page != null) {
			c.setPage(page);
		}
//		logger.info("listPage(): page = " + page);
		
		// 해당 페이지에 보여줄 list만 검색
		// TODO: "창업교육" category만 보여줌
		
		InfoBoardVO vo = new InfoBoardVO("창업교육");
		List<InfoBoardVO> list = infoService.read(c, vo);
		model.addAttribute("eduList", list);
		
		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(infoService.getNumOfRecords(vo.getCategory()));
		maker.setPageData();
		model.addAttribute("pageMaker", maker);
	}
	
	@RequestMapping(value="edu", method=RequestMethod.POST)
	public String registerEdu(InfoBoardVO ivo, String iend,
			RedirectAttributes attr) throws ParseException {
		
		ivo.setEnd(format.parse(iend));
		int insert_result = infoService.create(ivo);
		
		if(insert_result == 1) {
			attr.addAttribute("insert_result", "success");
		} else {
			attr.addAttribute("insert_result", "fail");
		}
		return "redirect:edu";
	}
	
	
	@RequestMapping(value="mentor", method=RequestMethod.GET)
	public void mentorList(Integer page, Model model) {
		
		
		PaginationCriteria c = new PaginationCriteria();
		// page 세팅 
		if(page == null) {
			page = 1;
		} else if (page != null) {
			c.setPage(page);
		}
		
		// category = "멘토링"만 검사 
		InfoBoardVO vo = new InfoBoardVO("멘토링");
		List<InfoBoardVO> list = infoService.read(c, vo);
		model.addAttribute("mentorList", list);
		
		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(infoService.getNumOfRecords(vo.getCategory()));
		maker.setPageData();
		model.addAttribute("pageMaker", maker); // view에 pageMaker 전달
	}
	
	@RequestMapping(value="mentor", method=RequestMethod.POST) 
	public String registerMentor(InfoBoardVO vo,
			String iend, RedirectAttributes attr) throws ParseException {
		
		vo.setEnd(format.parse(iend));
		int insert_result = infoService.create(vo);
		
		if(insert_result == 1) {
			attr.addAttribute("insert_result", "success");
		} else {
			attr.addAttribute("insert_result", "fail");
		}
		
		
		return "redirect:mentor";
	}
	
	
	
	@RequestMapping(value="event")
	public void eventList(Integer page, Model model) {
		
		PaginationCriteria c = new PaginationCriteria();
		// page 세팅 
		if(page == null) {
			page = 1;
		} else if (page != null) {
			c.setPage(page);
		}
		
		// category = "행사"만 검사 
		InfoBoardVO vo = new InfoBoardVO("행사");
		List<InfoBoardVO> list = infoService.read(c, vo);
		model.addAttribute("eventList", list);
		
		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(infoService.getNumOfRecords(vo.getCategory()));
		maker.setPageData();
		model.addAttribute("pageMaker", maker); // view에 pageMaker 전달
		
	}
	
	@RequestMapping(value="event", method=RequestMethod.POST)
	public String registerEvent(InfoBoardVO ivo, String iend,
			RedirectAttributes attr) throws ParseException {
		
		ivo.setEnd(format.parse(iend));
		int insert_result = infoService.create(ivo);
		
		if(insert_result == 1) {
			attr.addAttribute("insert_result", "success");
		} else {
			attr.addAttribute("insert_result", "fail");
		}
		return "redirect:event";
	}
	
	@RequestMapping(value="edu2")
	public void registerEdu2(){
		
	}
	
	@RequestMapping(value="test")
	public void registerTest(){
		
	}
}
