package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.RequestMap;
// new RequestKeyValue("/login.hrd", "GET") 
public class LoginViewController implements Controller {
// GET 방식으로 /login.hrd 경로로 요청이 들어왔을 때 실행되는 컨트롤러 역할을 합니다. 
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//handle 메소드: 클라이언트의 요청이 들어오면 
	//View 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		//request.getRequestDispatcher("login.jsp")를 통해 login.jsp로 포워딩하여 뷰를 보여줍니다.

	}

}
