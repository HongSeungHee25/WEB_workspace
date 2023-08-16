package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.MemberDao;

public class RegisterController implements Controller
{ 
	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{//handle 메소드: 클라이언트의 요청이 들어오면 회원 등록 페이지를 보여주는 역할을 수행합니다.
		MemberDao dao = MemberDao.getMemberDao();
		int custno = 0;
		try {custno = dao.nextSeq();} 
		catch (SQLException e) {logger.error("[MyInfo] - {}",e.getMessage());}
		
		request.setAttribute("custno", custno);
		//MemberDao를 이용하여 새로운 회원번호(custno)를 생성하고, 
		request.setAttribute("now", new Date());
		//현재 시간(now)을 설정한 후에 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("regView.jsp");
		//regView.jsp 페이지로 포워딩합니다.
		dispatcher.forward(request, response);
	}	// method end
}	// Class end
