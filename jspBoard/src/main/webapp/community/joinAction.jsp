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
		BookUser vo = new BookUser(id,name,email,age,null,password);
		
		String url = request.getContextPath();
		String back = (String) session.getAttribute("back");
		
		int result = dao.insert(vo);
		if (result == 1) {
%>
<script type="text/javascript">
	alert('회원가입이 완료되었습니다.')
	location.href='login.jsp'
</script>
<% 
		}
%>
