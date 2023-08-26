package controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;

//사장님 로그인
public class OwnerLoginController implements Controller {

	@Override
	public void handle(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		HttpSession session = request.getSession();

		if(id.equals("admin") && password.equals("admin")) {	//TODO 로그인 방식 암호화 생각 후 수정해야 함
			session.setAttribute("userid", id);
		}
		
		response.sendRedirect(request.getContextPath());	//TODO 메인페이지로 요청 redirect 설정해야 함
	}

}