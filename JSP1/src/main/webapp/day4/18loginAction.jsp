<%@page import="sample.DTO.JCustomerDTO"%>
<%@page import="sample.DAO.JCustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18loginAction.jsp</title>
</head>
<body>
<%
	/* id와 패스워드 전달 받아서 dao login 메소드 실행 */
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	JCustomerDAO dao = new JCustomerDAO();
	JCustomerDTO dto = dao.login(userid, password);
	out.print("<script>");
	if(dto != null)
		out.print("alert('로그인 성공했습니다.');");
	else
		out.print("alert('로그인 실패 - 계정 정보가 올바르지 않습니다.');");
	out.print("</script>");
%>


</body>
</html>