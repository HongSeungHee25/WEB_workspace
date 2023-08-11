<%@page import="sample.DAO.OrderDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderConfirm2.jsp</title>
</head>
<body>
<!-- 문제9. orderConfirm.jsp를 아래와 같이 2개의 소스파일 `처리`와 `화면출력`으로
	분리하였습니다. orderConfirm.jsp 와 동일하게 실행되기 위해 필요한 코드는 무엇인가요?
	 답 : scope="request" 
-->
<jsp:useBean id="order" class="sample.DTO.OrderDTO" scope="request" />
<jsp:setProperty property="*" name="order"/>
<%
OrderDAO dao = OrderDAO.getOrderDAO();
if(dao.insert(order)==1){
%>
<jsp:forward page="orderResult.jsp"/>
<!-- 문제10. <jsp:forward page="orderResult.jsp"/> 를 설명하세요
	 답 : orderConfirm2.jsp 에서 request를 전달하고 orderResult.jsp가 전달을 받습니다.
	 	브라우저의 URL은 변경되지 않으며,전달된 orderResult.jsp의 결과가 원래 요청에 
	 	반환됩니다.
-->
<%
}
%>



</body>
</html>