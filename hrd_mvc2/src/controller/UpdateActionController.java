package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import vo.MemberVo;
// path : /register.hrd  , method:POST
public class UpdateActionController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//handle 메소드: 회원 정보 수정 액션을 처리합니다.
		request.setCharacterEncoding("UTF-8");
		
		//request에서 파라미터를 받아와 회원 정보를 업데이트합니다.
		int custno=0;
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String grade = request.getParameter("grade");
		
		MemberDao dao = MemberDao.getMemberDao();
		MemberVo vo = null;
		
		int result = 0;
		try {
			custno = Integer.parseInt(request.getParameter("custno"));
			vo = new MemberVo(custno, null, phone, address, null, grade, city);
			result = dao.update(vo);
			//MemberDao를 이용하여 회원 정보를 업데이트하고 결과를 result에 저장합니다.
		} catch (SQLException | NumberFormatException e) {
		}
		
		//response 에 출력할 객체 생성
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//response의 출력 스트림을 이용하여 결과에 따른 메시지와 
		
		request.setAttribute("result", result);
		
		//페이지 이동을 JavaScript로 출력합니다.
		out.print("<script>");
		if(result==1) {
			out.print("alert('회원 수정을 완료했습니다.');");
		}else {
			out.print("alert('회원 수정에 문제가 발생했습니다.');");
		}
		out.print("location.href='list.hrd'");
		out.print("</script>");

	}

}
