package edu.hexa.leejaehoon.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import edu.hexa.leejaehoon.domain.SignUpVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	private static final String SESSION_ATTR_ID = "login_id";
	private static final String SESSION_ATTR_SUCCESS = "success";
		
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	
	//preHandle(): 컨트롤러 실행전 메소드
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
			logger.info("preHandle() 호출!!!!!!!!");
			
			// 세션에 기존 로그인 정보가 남아 있으면 삭제, 그렇지 않으면 그냥 리턴
			// 세션 객체를 얻어옴
			HttpSession session = request.getSession();
			logger.info("prehandle() 세션 : " + session.toString());
				
			Object id = session.getAttribute(SESSION_ATTR_ID);
			if(id != null){ // 세션에 기존정보가 남아있는 경우
				session.removeAttribute(SESSION_ATTR_ID);
				logger.info("기존 로그인 정보 삭제되었습니다.");
			}else{
				logger.info("기존 로그인 정보가 없습니다.");
			}

		
		return true;
	} // end preHandle()
	
	
	//브라우저로 정보가 가기전 컨트롤러 메소드 실행후 실행됨
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
			logger.info("postHandle() 호출!!!!!!!!");
			
			// 로그인 정보를 세션에 저장함
			HttpSession session = request.getSession();
			logger.info("postHandle() 세션: " + session);
			
			// 콘트롤러에서 SignUpVO 타입을 전달했기 때문에
			// ModelAndView에서 꺼낸 attribute를 SignUpVO로 형변화(casting)
			SignUpVO result = (SignUpVO) modelAndView.getModel().get("login_id");
			logger.info("postHandle() result : " + result);
			logger.info("postHandle(): request: " + request);
			logger.info("postHandle(): response: " + response);
			if(result != null){ // DB 안의 id/pw 정보가 일치
				logger.info(" 로그인 성공!");
				// 세션에 로그인 성공 아이디 저장
				session.setAttribute(SESSION_ATTR_ID, result.getUid());
				session.setAttribute(SESSION_ATTR_SUCCESS, "success");
				
				
				
				// 기존에 요청 주소가 있는 경우 해당페이지로 이동
				Object dest = session.getAttribute("dest");
				logger.info("dest 정보 :" + dest);
				if(dest != null){
					response.sendRedirect((String)dest);
				} else {
					response.sendRedirect("/teamsns/signup/main-page");
				}
				
				
			}else{ // DB 에 일치하는 회원 정보가 없을경우
				// 로그인실패 -> 세션에 저장하는 정보가 없음
				logger.info("로그인 실패");
				
				response.sendRedirect("/teamsns/signup/main-page");
			}
			
		
		
	
		
		
	} // end postHandle()
	
	
	
} // end class
