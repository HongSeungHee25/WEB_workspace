package controller.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import pwUtil.SHA256;

//일반 회원 로그인
public class UserLoginController implements Controller {

	@Override
	public void handle(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		HttpSession session = request.getSession();
		
		//암호화된 비밀번호를 저장할 변수
		String hashedPassword = SHA256.encodeSha256(password);

		if(id.equals("id") && hashedPassword.equals("pw")) {	//TODO 로그인 방식 암호화 생각 후 수정해야 함
			session.setAttribute("userid", id);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}

}