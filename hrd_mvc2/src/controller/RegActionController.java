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
public class RegActionController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//handle 메소드: 클라이언트로부터 받은 회원 정보를 데이터베이스에 등록하고 결과에 따라 메시지와 함께 페이지를 리다이렉트합니다.
		request.setCharacterEncoding("UTF-8");
		//MemberVo 객체를 생성하여 회원 정보를 담고, MemberDao를 이용하여 데이터베이스에 등록을 시도합니다.
		MemberVo vo = new MemberVo(Integer.parseInt(request.getParameter("custno")),
							request.getParameter("custname"),
							request.getParameter("phone"),
							request.getParameter("address"),
							null,
							request.getParameter("grade"),
							request.getParameter("city"));
		MemberDao dao = MemberDao.getMemberDao();
		int result=0;
		try {
			result = dao.insert(vo);
		} catch (SQLException e) {
		}
		
		//response 에 출력할 객체 생성
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.print("<script>");
		if(result==1) {
			out.print("alert('회원 등록을 완료했습니다.');");
		}else {
			out.print("alert('회원 등록 문제가 발생했습니다.');");
		}
		out.print("location.href='list.hrd'");
		out.print("</script>");
		//등록 결과에 따라 알림창을 띄우고 list.hrd로 페이지를 리다이렉트합니다.

	}

}
