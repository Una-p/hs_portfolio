package edu.hexa.leejaehoon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.leejaehoon.domain.BoardVO;
import edu.hexa.leejaehoon.pageutill.PageMaker;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.leejaehoon.service.BoardService;

@Controller
@RequestMapping(value="board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
//	@RequestMapping(value="tipAndTech")
//	public void boardList(Model model){
//		
//		List<BoardVO> list = boardService.selectTip();
//		
//		logger.info("controller list = " + list);
//		model.addAttribute("tiplist", list);
//		
//	}
	
	
	@RequestMapping(value="ttRegister")
	public void tipRegister(HttpServletRequest request,Model model){
		
		
//		HttpSession session = request.getSession();
//		String loginId = (String) session.getAttribute("login_id");
//		logger.info("login id: " + loginId);
//		model.addAttribute("login_id", session);
		
		
	}
	@RequestMapping(value="ttDetail")
	public void tipDetail(int bno, @ModelAttribute("page") int page,Model model){
		logger.info("ttdetail======================");
		BoardVO vo = boardService.read(bno);
		model.addAttribute("boardVO", vo);
	}
	
	@RequestMapping(value="ttRegister",method=RequestMethod.POST)
	public String tipRegisterPOST(BoardVO vo, RedirectAttributes attr){
		
		int result = boardService.insertTip(vo);
		logger.info("controller result:" + result);
		if (result == 1) {
			attr.addFlashAttribute("insert_tt", "success");
		} else {
			attr.addFlashAttribute("insert_tt", "fail");
		}
		
		return "redirect:tipAndTech";
	}
	
	@RequestMapping(value="tipAndTech")
	public void listPage(Integer page, Model model,HttpServletRequest request){
		logger.info("listPage : " + page);
		
		HttpSession session = request.getSession();
		session.getAttribute("login_id");
		
		PaginationCriteria c = new PaginationCriteria();
		if(page != null){
			c.setPage(page);
		}
		logger.info("controller :" + c);
		
		List<BoardVO> list = boardService.read(c);
		model.addAttribute("tiplist", list);
		
		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(boardService.getNumOfRecords());
		maker.setPageData();
		model.addAttribute("pageMaker", maker);
	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String delete(int bno, int page, RedirectAttributes attr){
		logger.info("delete 할 번호 호츌(): bno= " + bno );
		logger.info("page 값:" + page);
		int result = boardService.delete(bno);
		
		if (result == 1) {
			attr.addFlashAttribute("delete_result", "success");
		} else {
			attr.addFlashAttribute("delete_result", "fail");
		}
		attr.addFlashAttribute("bno", bno);
		return "redirect:tipAndTech?page=" + page;
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	public String boardUpdate(BoardVO vo,int page, RedirectAttributes attr){
		logger.info("update 호출: page= " + page);
		int result = boardService.update(vo);
		if (result == 1) {
			attr.addFlashAttribute("update_result", "success");
		} else {
			attr.addFlashAttribute("update_result", "fail");
		}
		attr.addFlashAttribute("bno",vo.getBno());
		
		return "redirect:tipAndTech?page=" + page;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
} // end class
