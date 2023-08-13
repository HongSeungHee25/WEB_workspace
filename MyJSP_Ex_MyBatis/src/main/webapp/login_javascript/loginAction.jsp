<%@page import="jdbc.Util.PasswordHashingUtil"%>
<%@page import="sample.DTO.JCustomerDTO"%>
<%@page import="sample.DAO.JCustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginAction.jsp</title>
</head>
<body>

<%

	/* id와 패스워드 전달 받아서 dao login 메소드 실행 */
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	/* 해시함수는 단방향이기 때문에 자바를 사용해 구현해 놓은 PasswordHashingUtil 클래스를
	   불러와서 평문으로 입력해도 로그인할수 있게끔 구현 */
	String hashedPassword = PasswordHashingUtil.hashPassword(password);
	
	JCustomerDAO dao = new JCustomerDAO();
	JCustomerDTO dto = dao.login(userid, hashedPassword);
	if(dto != null){
		session.setAttribute("user", dto);
	}
	System.out.println(hashedPassword);
	
	out.print("<script>");
	if(dto != null){
		out.print("alert('로그인 성공했습니다.');");
		out.print("location.href='index.jsp';");
	}else{
		out.print("alert('로그인 실패 - 계정 정보가 올바르지 않습니다.');");
		out.print("location.href='loginView.jsp';");
	}
		out.print("</script>");
%>

</body>
</html>