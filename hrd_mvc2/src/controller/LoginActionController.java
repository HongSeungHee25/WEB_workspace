package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.RequestMap;
//new RequestKeyValue("/login.hrd", "POST")
public class LoginActionController implements Controller {
// POST 방식으로 /login.hrd 경로로 요청이 들어왔을 때 실행되는 컨트롤러 역할을 합니다. 
	@Override
	public void handle(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
	//handle 메소드: 클라이언트로부터 전달된 userid와 password를 확인하여 로그인 인증을 시도합니다.
		String id = request.getParameter("userid");
		//인증 성공 시 HttpSession에 userid를 저장하여 로그인 상태를 유지합니다.
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		//할일 : dao 로 id,password 확인하는 메소드 실행
		//id,password 모두 admin 일 때 인증 성공으로 하는 예시입니다.
		if(id.equals("admin") && password.equals("admin")) {
			//로그인 성공
			session.setAttribute("userid", id);  //핵심.
		}
		
		response.sendRedirect(request.getContextPath());		//메인페이지로 요청 redirect
		//response.sendRedirect(request.getContextPath())를 통해 메인 페이지로 리다이렉트합니다.
	}

}
