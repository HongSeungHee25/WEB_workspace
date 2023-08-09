<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13forward.jsp</title>
</head>
<body>
<jsp:useBean id="reqDto" class="sample.DTO.MyUser" scope="request" />
<jsp:setProperty property="*" name="reqDto"/>
<!-- A.jsp 가 받은 요청을 B.jsp 에게 전달해주는 동작을 forward 입니다. -->
<h3>요청 받아서 전달하기</h3>
<p>13forward.jsp 가 전달을 보내는 페이지 입니다.</p>
<jsp:forward page="14beanForward.jsp" />
</body>
</html>