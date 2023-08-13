<%@page import="java.util.Base64"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="java.security.interfaces.RSAPublicKey"%>
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
<script type="text/javascript" src="jsencrypt.js"></script>
</head>
<body>

<%

		String userid = request.getParameter("userid");
		String plainPassword = request.getParameter("password"); // 사용자가 입력한 평문 비밀번호
		
		JCustomerDAO dao = new JCustomerDAO();
		JCustomerDTO dto = dao.login(userid, null); // 아이디로 로그인 시도
		
		if (dto != null) {
		    String storedEncryptedPassword = dto.getPassword();
		
		    // RSA 암호화
		    RSAPublicKey publicKey = (RSAPublicKey) session.getAttribute("publicKey");
		    Cipher cipher = Cipher.getInstance("RSA");
		    cipher.init(Cipher.ENCRYPT_MODE, publicKey);
		    byte[] encryptedPasswordBytes = cipher.doFinal(plainPassword.getBytes());
		    String encryptedPassword = Base64.getEncoder().encodeToString(encryptedPasswordBytes);
		
		    if (storedEncryptedPassword.equals(encryptedPassword)) {
		        // 로그인 성공
		        session.setAttribute("user", dto);
		        out.print("<script>");
		        out.print("alert('로그인 성공했습니다.');");
		        out.print("location.href='index.jsp';");
		        out.print("</script>");
		    } else {
		        // 로그인 실패 - 비밀번호 불일치
		        out.print("<script>");
		        out.print("alert('로그인 실패 - 계정 정보가 올바르지 않습니다.');");
		        out.print("location.href='loginView.jsp';");
		        out.print("</script>");
		    }
		} else {
		    // 로그인 실패 - 계정 정보 없음
		    out.print("<script>");
		    out.print("alert('로그인 실패 - 계정 정보가 올바르지 않습니다.');");
		    out.print("location.href='loginView.jsp';");
		    out.print("</script>");
		}
%>

</body>
</html>