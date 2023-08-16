package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.MemberDao;
import dao.SaleDao;
import vo.MemberVo;
import vo.SaleVo;
// servlet path :/list.hrd, method : GET
public class SaleController implements Controller
{
	private static final Logger logger = LoggerFactory.getLogger(SaleController.class);
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{//handle 메소드: 클라이언트의 요청에 따라 매출 정보를 조회하고, 관리자 로그인 여부에 따라 페이지를 보여주는 역할을 수행합니다.
		//관리자 로그인 후에 매출조회 보기 가능 - 세션의 상태를 애트리뷰트값으로 검사
		HttpSession session = request.getSession();
		//세션에서 userid를 확인하여 관리자인 경우에만 매출 정보를 조회합니다.
		Object userid = session.getAttribute("userid");
		String url=null;
		if(userid!=null && ((String)userid).equals("admin"))
		{
			SaleDao dao = SaleDao.getSaleDao();
			//SaleDao를 이용하여 매출 정보를 가져오고, 결과를 list에 저장합니다.
			List<SaleVo> list = null;
			
			try {
				list = dao.salesTotal();
			}catch (SQLException e) {
				logger.error("[MyInfo] - {}", e.getMessage());
			}
			
			request.setAttribute("list", list);
			//request의 setAttribute를 이용하여 list를 JSP로 전달합니다.
			url = "saleView.jsp";
		}else {
			url ="auth.jsp"	;	
			//만약 관리자가 아닌 경우, 인증 실패 페이지(auth.jsp)를 보여줍니다.
			//이 소스파일에 자바스크립트 코드는 saleView.jsp에 넣어도 됩니다.(실행은 userid애트리뷰트 null이거나 admin 아닐때)
			//결론 : alert 처리는 서버(서블릿)와 클라이언트(jsp,html) 양쪽에서 가능
		}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			//적절한 URL에 따라 RequestDispatcher를 사용하여 페이지를 포워딩합니다.
			dispatcher.forward(request, response);
	}	// method end
}	// Class end
/*
 * 인증 authentication: 아이디와 패스워드 일치확인(패스워드 인증) 또는 토큰 인증
 * 인가 authorization : 권한이 있을때만 사용할 수 있도록함.권한확인 후 입장 (예: 관리자 또는 적정한 레벨 사용자..)
 */



