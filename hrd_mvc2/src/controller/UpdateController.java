package controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.MemberDao;
import vo.MemberVo;

public class UpdateController implements Controller
{ 
	//선택 
	private static final Logger logger = LoggerFactory.getLogger(UpdateController.class);
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{//handle 메소드: 회원 정보 수정을 위한 페이지(updateView.jsp)로 이동합니다.
		MemberDao dao = MemberDao.getMemberDao();
		//MemberDao를 이용하여 선택한 회원의 정보(vo)를 가져옵니다.
		MemberVo vo = null;
		int custno = 0;
		try {
			custno = Integer.parseInt(request.getParameter("custno"));
			//request의 setAttribute를 이용하여 vo를 JSP로 전달합니다.
			vo = dao.selectOne(custno);
		} catch (SQLException | NumberFormatException e) {
			//custno 가 숫자가 아닌 문자가 포하되면 parseInt() Exception 발생하므로 처리하기
			//2개 이상의 Exception 처리할때 or는 | 연산자 입니다.
			logger.error(e.getMessage());
		}
		
		request.setAttribute("vo", vo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("updateView.jsp");
		//RequestDispatcher를 사용하여 페이지를 포워딩합니다.
		dispatcher.forward(request, response);
	}	// method end
}	// Class end
