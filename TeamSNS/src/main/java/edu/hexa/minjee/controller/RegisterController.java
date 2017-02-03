package edu.hexa.minjee.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.minjee.domain.ManageProjectPartDTO;
import edu.hexa.minjee.service.ProjectRegisterService;
import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectLeaderVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;



@Controller
@RequestMapping("/register")
public class RegisterController {
	
	private static final Logger logger =
			LoggerFactory.getLogger(RegisterController.class);
	private static final String SESSION_ATTR_ID = "login_id";
	private SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	private String uid;
	
	@Autowired
	private ProjectRegisterService registerService;
	
	
	@RequestMapping(value = "project-register")
	public void registerGET(HttpServletRequest request, Model model) {
		uid = (String) request.getSession().getAttribute(SESSION_ATTR_ID);
		logger.info("registerGET: uid: " + uid);
		UserVO uvo = registerService.read(uid);
		model.addAttribute("userVO", uvo);
		
	}
	
	@RequestMapping(value="project-register", method=RequestMethod.POST)
	public String registerPOST(
			ProjectVO pvo, String pstart, String pend, 
			ManageProjectPartVO mvo, ManageProjectPartDTO mdto, 
			RequiredSkillVO rvo,
			String title, String rcstart, String rcend,
			RedirectAttributes attr) throws ParseException {
		
		logger.info("registerPOST() 호출.... ");
		
		// project insert
		pvo.setStart(format.parse(pstart));
		pvo.setEnd(format.parse(pend));
		int result_project = registerService.create(pvo);
		
		logger.info("projet 생성 : " + result_project); //hs 

		
		// part insert
		String[] parts = { mdto.getPart1(), mdto.getPart2(), mdto.getPart3(), 
				mdto.getPart4(), mdto.getPart5(), mdto.getPart6() };
		logger.info("Part1 : " + mdto.getPart1());
		
		for(String part : parts) {
			if(part == mdto.getPart1()) {
				mvo = new ManageProjectPartVO(pvo.getPid(), uid, part);
				logger.info("part 1 : " + part);
				logger.info("uid" + uid);
				
				int result1 = registerService.create(mvo);
				logger.info("팀장 파트 삽입 성공? : " + result1);
			} else if(part != null && part != "") {
				mvo = new ManageProjectPartVO(pvo.getPid(), null, part);
				logger.info("파트? : " + part);
				int result2 = registerService.create(mvo);
				logger.info("나머지 파트 데이터 삽입 성공?? : " + result2);
			}
		}
		
		
		
		// skill insert
		rvo.setPid(pvo.getPid());
		int result_skill = registerService.create(rvo);
		logger.info("skill 삽입 성공 : " + result_skill);
		
		// recruit insert
		RecruitProjectVO rcvo = new RecruitProjectVO(0, pvo.getPid(), title, 
						format.parse(rcstart), format.parse(rcend), 0, null);
		int result_recruit = registerService.create(rcvo);
		logger.info("recruit 삽입 : " + result_recruit);
		
		// leader insert
		ProjectLeaderVO lvo = new ProjectLeaderVO(pvo.getPid(), uid);
		registerService.create(lvo);
		
		return "redirect:../project/projectList";
		
	}
}
