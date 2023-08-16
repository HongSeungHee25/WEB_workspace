package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.RequestMap;
//new RequestKeyValue("/logout.hrd", "GET")
public class LogoutController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//handle 메소드: 클라이언트의 요청이 들어오면 로그아웃 처리를 수행하는 메소드입니다.
	//HttpSession 객체를 사용하여 현재 세션을 무효화시킵니다. 이렇게 하면 기존 세션 정보와 데이터가 삭제됩니다.
		//로그 아웃
		HttpSession session = request.getSession();
		session.invalidate(); 			//세션 무효화:기존 세션ID 삭제 
		//session.invalidate()를 호출하여 세션을 무효화합니다.
	//	response.sendRedirect(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("logout.jsp");
		//RequestDispatcher를 사용하여 logout.jsp로 포워딩합니다.
		dispatcher.forward(request, response);
		//포워딩을 통해 로그아웃 페이지가 브라우저에 표시됩니다.
	}

}
