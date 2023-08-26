package controller.login;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dao.CustomerDAO;
import org.vo.Customer;

import controller.Controller;

//일반 회원 로그인
public class UserLoginActionController implements Controller {

	@Override
	public void handle(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		HttpSession session = request.getSession();

		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pw", password);
		CustomerDAO dao = CustomerDAO.getCustomerDAO();
		int result = dao.login(map);
		
		if(result == 1) {						//TODO 로그인 방식 암호화 생각 후 수정해야 함
			session.setAttribute("user",result);
		}
		
		response.sendRedirect(request.getContextPath());	//TODO 메인페이지로 요청 redirect 설정해야 함
	}

}