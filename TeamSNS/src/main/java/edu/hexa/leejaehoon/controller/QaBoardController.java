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
import edu.hexa.leejaehoon.domain.QaBoardVO;
import edu.hexa.leejaehoon.pageutill.PageMaker;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.leejaehoon.service.BoardService;
import edu.hexa.leejaehoon.service.QaBoardService;

@Controller
@RequestMapping(value="qaboard")
public class QaBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(QaBoardController.class);
	
	@Autowired
	private QaBoardService qaBoardService;
	
//	@RequestMapping(value="tipAndTech")
//	public void boardList(Model model){
//		
//		List<BoardVO> list = boardService.selectTip();
//		
//		logger.info("controller list = " + list);
//		model.addAttribute("tiplist", list);
//		
//	}
	
	
	@RequestMapping(value="qaRegister")
	public void tipRegister(HttpServletRequest request,Model model){
		
		
//		HttpSession session = request.getSession();
//		String loginId = (String) session.getAttribute("login_id");
//		logger.info("login id: " + loginId);
//		model.addAttribute("login_id", session);
		
		
	}
	@RequestMapping(value="qaDetail")
	public void tipDetail(int bno, @ModelAttribute("page") int page,Model model){
		logger.info("ttdetail======================");
		QaBoardVO vo = qaBoardService.read(bno);
		model.addAttribute("qaboardVO", vo);
	}
	
	@RequestMapping(value="qaRegister",method=RequestMethod.POST)
	public String tipRegisterPOST(QaBoardVO vo, RedirectAttributes attr){
		
		int result = qaBoardService.insertQa(vo);
		logger.info("controller result:" + result);
		if (result == 1) {
			attr.addFlashAttribute("insert_qa", "success");
		} else {
			attr.addFlashAttribute("insert_qa", "fail");
		}
		
		return "redirect:qaBoard";
	}
	
	@RequestMapping(value="qaBoard")
	public void listPage(Integer page, Model model,HttpServletRequest request){
		logger.info("listPage : " + page);
		
		HttpSession session = request.getSession();
		session.getAttribute("login_id");
		
		PaginationCriteria c = new PaginationCriteria();
		if(page != null){
			c.setPage(page);
		}
		logger.info("controller :" + c);
		
		List<QaBoardVO> list = qaBoardService.read(c);
		model.addAttribute("qalist", list);
		
		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(qaBoardService.getNumOfRecords());
		maker.setPageData();
		model.addAttribute("pageMaker", maker);
	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String delete(int bno, int page, RedirectAttributes attr){
		logger.info("delete 할 번호 호츌(): bno= " + bno );
		logger.info("page 값:" + page);
		int result = qaBoardService.delete(bno);
		
		if (result == 1) {
			attr.addFlashAttribute("delete_result", "success");
		} else {
			attr.addFlashAttribute("delete_result", "fail");
		}
		attr.addFlashAttribute("bno", bno);
		return "redirect:qaBoard?page=" + page;
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	public String boardUpdate(QaBoardVO vo,int page, RedirectAttributes attr){
		logger.info("update 호출: page= " + page);
		int result = qaBoardService.update(vo);
		if (result == 1) {
			attr.addFlashAttribute("update_result", "success");
		} else {
			attr.addFlashAttribute("update_result", "fail");
		}
		attr.addFlashAttribute("bno",vo.getBno());
		
		return "redirect:qaBoard?page=" + page;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
} // end class
