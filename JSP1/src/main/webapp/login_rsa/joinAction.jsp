<%@page import="java.util.Base64"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="java.security.interfaces.RSAPublicKey"%>
<%@page import="sample.DTO.JCustomerDTO"%>
<%@page import="sample.DAO.JCustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinAction.jsp</title>
<script type="text/javascript" src="jsencrypt.js"></script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");    

    String userid = request.getParameter("userid");
    String username = request.getParameter("username");
    String useremail = request.getParameter("useremail");
    String temp = request.getParameter("userage");
    String plainPassword = request.getParameter("password"); // 암호화된 비밀번호

 	// RSA 암호화
    RSAPublicKey publicKey = (RSAPublicKey) session.getAttribute("publicKey");
    Cipher cipher = Cipher.getInstance("RSA");
    cipher.init(Cipher.ENCRYPT_MODE, publicKey);
    byte[] encryptedPasswordBytes = cipher.doFinal(plainPassword.getBytes());
    String encryptedPassword = Base64.getEncoder().encodeToString(encryptedPasswordBytes);
    
        JCustomerDAO dao = new JCustomerDAO();
        JCustomerDTO dto = null;
        int userage = 0;
        if (temp != null) {
            userage = Integer.parseInt(temp);
            dto = new JCustomerDTO(userid, username, useremail, userage, null, encryptedPassword);
        }
        dao.insert(dto);

        if (dto == null) {
            session.setAttribute("user", dto);
        }
	try{
        out.print("<script>");
        out.print("alert('회원가입에 성공했습니다.');");
        out.print("location.href='index.jsp';");
        out.print("</script>");
    } catch (Exception e) {
        e.printStackTrace();
        out.print("<script>");
        out.print("alert('회원가입에 실패했습니다.');");
        out.print("location.href='joinView.jsp';");
        out.print("</script>");
    }
%>
</body>
</html>
