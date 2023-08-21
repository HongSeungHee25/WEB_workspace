<%@page import="org.iclass.dto.BookUser"%>
<%@page import="org.iclass.dao.BookUserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("UTF-8");	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		String password = request.getParameter("password");
		
		BookUserDao dao = new BookUserDao();
		BookUser vo = new BookUser(id,name,email,age,password);
		
		String url = request.getContextPath();
		String back = (String) session.getAttribute("back");
		
		int result = dao.join(vo);
		if (result == 1) {
			request.setAttribute("message", "회원가입이 완료되었습니다.");
			request.setAttribute("url", "login.jsp?id="+id+"&password="+password);
			pageContext.forward("alert.jsp");
		}
		if (back != null) {
			url = back;
			session.removeAttribute("back"); //back 이름의 애트리뷰트 삭제
		}
		response.sendRedirect(url);
%>