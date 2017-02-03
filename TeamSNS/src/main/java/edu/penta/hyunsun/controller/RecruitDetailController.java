package edu.penta.hyunsun.controller;

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

import edu.penta.hyunsun.domain.ApplyProjectVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;
import edu.penta.hyunsun.service.RecruitDetailService;

@Controller
@RequestMapping(value="/project")
public class RecruitDetailController {
   private static final Logger logger = LoggerFactory.getLogger(RecruitDetailController.class);
   
   @Autowired
   private RecruitDetailService service;
   
   // /recruit_detail/detail-recruit-bno
   @RequestMapping(value="projectDetail", method=RequestMethod.GET)
   public void recruitDetailView(int rbno, String user_id, Model model, HttpServletRequest request) {
      logger.info("상세보기 controller");
      
      RecruitDetailDTO dto = service.select(rbno);
      model.addAttribute("dto", dto);
      
      HttpSession session = request.getSession();
      user_id = (String)session.getAttribute("login_id");
      model.addAttribute("user_id", user_id);
      logger.info("user_id : " + user_id);
      
      
   } // end detailView()
   

   @RequestMapping(value="apply-project", method=RequestMethod.POST)
   public String applyProject(ApplyProjectVO vo, String rbno, RedirectAttributes attr) {
      logger.info("지원하기 컨트롤러:3c");
      logger.info("아이디: " + vo.getUser_id());
      logger.info("코멘트 : " + vo.getComment());
      int overLapResult = service.overLapTest(vo);
      logger.info("중복검사 : " + overLapResult);
      if(overLapResult == 0) {
         int applyResult = service.create(vo);
         logger.info("지원하기 : " + applyResult);
         if(applyResult == 1) {
            attr.addFlashAttribute("apply_project", "success");
         } else {
            attr.addFlashAttribute("apply_project", "fail");
         }
      } else if (overLapResult >0) {
         attr.addFlashAttribute("apply_project", "over_fail");
      }
      
      /*int result = service.create(vo);
      logger.info("reuslt : "+result);
      if(result == 1) {
         attr.addFlashAttribute("apply_project", "success");
      } else {
         attr.addFlashAttribute("apply_project", "fail");
      }*/
      /* 현선이 안된다해서 주석넣음 */
      /*return "redirect:/project/projectDetail?rbno="+rbno;*/
      return "redirect:/project/projectList";
   } // end applyProject()
   

} // end class RecruitDetailController