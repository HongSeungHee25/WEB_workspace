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
<!-- << SHA-256 >>
		● 'SHA-256'은 Secure Hash Algorithm 256-bit의 줄임말로, 암호학적 해시 함수 중 하나다.
		  해시 함수는 임의의 크기를 가진 데이터를 고정된 크기의 해시 값으로 변환하는 함수다.
		● SHA-256은 256비트(32바이트) 길이의 해시 값을 생성하며, 주로 데이터 무결성 검증, 메시디 인증 코드(MAC) 생성, 
		  비밀번호 저장 등 다양한 보안 관련 작업에 사용된다. SHA-256은 입력 데이터의 작은 변화에도 큰 차이를 만들어내기 
		  때문에 데이터의 무결성을 확인하는 데 유용하다. 
		● SHA-256은 일방향 해시 함수이므로, 해시 값을 통해 원래 데이터를 복원할 수는 없다.
		  따라서 주로 비밀번호의 안전한 저장과 비교, 파일의 무결성 검사 등에 활용된다.
-->
<%
	request.setCharacterEncoding("UTF-8");	

	String userid = request.getParameter("userid");
	String username = request.getParameter("username");
	String useremail = request.getParameter("useremail");
	String temp = request.getParameter("userage");
	String hashedPassword = request.getParameter("password");
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