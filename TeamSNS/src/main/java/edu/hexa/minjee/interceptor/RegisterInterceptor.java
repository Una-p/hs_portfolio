package edu.hexa.minjee.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class RegisterInterceptor extends HandlerInterceptorAdapter{
	private static final String SESSION_ATTR_ID = "login_id";
	private static final Logger logger =
			LoggerFactory.getLogger(RegisterInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object uid = session.getAttribute(SESSION_ATTR_ID);
		if(uid != null) { // 세션에 기본 정보가 남아 있는 경우
			logger.info("기존 로그인 아이디: " + uid.toString());
		}
		return true;
	}
}
