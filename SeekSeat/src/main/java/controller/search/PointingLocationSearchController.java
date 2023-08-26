package controller.search;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;

//위치 지정 검색 (시,구,동) 컨트롤러
public class PointingLocationSearchController implements Controller {
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("");	//TODO 요청 전달할 주소 입력 ex) login.jsp
		dispatcher.forward(request, response);
	}
	
}
