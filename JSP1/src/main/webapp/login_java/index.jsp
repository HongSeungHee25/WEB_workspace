<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<h3>메인 Main</h3>
<hr>
<c:if test="${user != null }">
	<h4><c:out value="${user.name }"/> 님 환영합니다.</h4>
	<button type="button" onclick="location.href='logout.jsp'">로그아웃</button>
</c:if>
<c:if test="${user == null }">
	<button type="button" onclick="location.href='loginView.jsp'">로그인</button>
</c:if>
<c:if test="${user == null }">
	<button type="button" onclick="location.href='joinView.jsp'">회원가입</button>
</c:if>
	<button type="button" onclick="location.href='#'">커뮤니티</button>
</body>
</html>