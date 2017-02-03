package edu.penta.hyunsun.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.teamsns.domain.UserVO;
import edu.penta.hyunsun.domain.BoardVO;
import edu.penta.hyunsun.service.MypageService;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MypageService service;
	
	@RequestMapping(value="/user/mypage", method = RequestMethod.GET)
	public void mypage(Model model, HttpServletRequest request) {
		logger.info("마이페이지 ");
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("login_id");
		logger.info("user_id : " + user_id);
		
		// 내 정보
		UserVO user_vo = service.user_mypage(user_id);
		model.addAttribute("user", user_vo);
		
		// 내가 쓴글
		List<BoardVO> boardVO = service.my_board(user_id);
		model.addAttribute("boardVO", boardVO);
		
	} // end mypage
	
	@RequestMapping(value="/user/myinfo-update")
	public void mypage_update(Model model, HttpServletRequest request) {
		logger.info("내 정보 수정");
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("login_id");
		logger.info("userID : "+user_id);
		
		UserVO vo = service.user_mypage(user_id);
		model.addAttribute("user", vo);		
		
	}
	
	// 마이페이지 목록
/*	@RequestMapping(value="/user/mypage", method = RequestMethod.GET)
	public void mypageList(String uid, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		logger.info("마이페이지");
		uid = (String)session.getAttribute("login-id");
		logger.info("uid : "+uid);
		UserVO vo = service.user_mypage(uid);
		model.addAttribute("user", vo);
		
	}*/
	
/*	// 내 정보 보기 
	@RequestMapping(value = "/user/mypage", method = RequestMethod.GET)
	public void mypageView(String uid, Model model) {
		logger.info("마이페이지 : uid = " + uid);
		
		UserVO vo = service.user_mypage(uid);
		model.addAttribute("user", vo);
		
	} // end mypageView
*/	
	// 내 정보 수정 
	@RequestMapping(value = "/user/update", method = RequestMethod.POST)
	public String userUpdate(UserVO vo, RedirectAttributes attr) {
		logger.info("userUPdate 컨트롤러");
		int result = service.user_update(vo);
		logger.info("정보 수정: "+result);
		logger.info("주소" + vo.getAddress());
		if(result==1) {
			attr.addFlashAttribute("update_result", "success");
		} else { 
			attr.addFlashAttribute("update_result", "fail");
		}
		attr.addFlashAttribute("uid", vo.getUid());
		return "redirect:/user/mypage";
	}
	
	// TODO: 회원 탈퇴
	@RequestMapping(value="/user/delete")
	public String userDelete(String uid) {
		
		return "/";
	}
	
	@RequestMapping(value="/user/my-board", method=RequestMethod.GET)
	public void myBoardList(String uid, Model model) {

		logger.info("내가 쓴 글 리스트");
		List<BoardVO> vo = service.my_board(uid);
		logger.info(vo.get(0).getBk());
		model.addAttribute("board", vo);
	}
	
	@RequestMapping(value="/user/mypage-real")
	public void myPageReal(){
		
	}

} // end class MypageController
