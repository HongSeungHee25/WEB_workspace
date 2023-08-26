package controller.reserve;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;

//예약 취소 (일반회원) 컨트롤러
public class CancelReservationController implements Controller {
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("");	//TODO 요청 전달할 주소 입력 ex) login.jsp
		dispatcher.forward(request, response);
	}
	
}
