<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/read.css?v=3">  
</head>
<body>
<div id="main">
    <ul class="row">
        <li>글번호</li>
        <li>${dto.idx}</li>
        <li>조회수</li>
        <li>${dto.readCount}</li>
    </ul>
    <ul class="row">
        <li>제목</li>
        <li>${dto.title}</li>
    </ul>
    <ul class="row">
        <li>작성자</li>
        <li>${dto.writer}</li>
        <li>작성일</li>
        <li>${dto.createdAt}</li>
    </ul>
    <%-- <ul class="content">
        <li>내용</li>
        <li>
            <pre>${dto.content}</pre>
        </li>
    </ul> --%>
    <div id="content">
       <pre>${dto.content}</pre>
    </div>
    <div class="crow">
        <ul>
            <li><a href="#">수정</a></li>
            <li><a href="#">삭제</a></li>
        </ul>
    </div>
</div>
</body>
</html>