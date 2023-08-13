<%@page import="jdbc.Util.*"%>
<%@page import="sample.DTO.JCustomerDTO"%>
<%@page import="sample.DAO.JCustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinAction.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");	

	String userid = request.getParameter("userid");
	String username = request.getParameter("username");
	String useremail = request.getParameter("useremail");
	String temp = request.getParameter("userage");
	String password = request.getParameter("password");
	String hashedPassword = PasswordHashingUtil.hashPassword(password);
	/* 자바스크립트로 해시함수 해보기 */
	System.out.println(hashedPassword);
	
	JCustomerDAO dao = new JCustomerDAO();
	JCustomerDTO dto = null;
	int userage = 0;
	if(temp != null){
		userage = Integer.parseInt(temp);
			dto = new JCustomerDTO(userid,username,useremail,userage,null,hashedPassword);
	}
	dao.insert(dto);
	
	if(dto == null){
		session.setAttribute("user", dto);
	}
	
		 if (dto != null) 
	        out.print("<script>");
	        out.print("alert('회원가입에 성공했습니다.');");
	        out.print("location.href='index.jsp';");
	        out.print("</script>");
%>


</body>
</html>