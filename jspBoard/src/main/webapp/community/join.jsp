<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>우리 북카페</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
  	.width30{
  		width:30%;
  	}
  	h2{
  		margin: 5rem 0;
  	}
  	#incorrect {
  		display: none;
  		color: red;
  		font-weight: 1.2rem;
  	}
  </style>
</head>
<body>
<%
String temp=request.getParameter("back");
if(temp!=null && temp.equals("w")) 
	session .setAttribute("back","community/login.jsp");
%>
<div class="container mt-3 width30">
  <h2>회원가입</h2>
  <form action="joinAction.jsp" method="post">
    <div class="mb-3 mt-3">
      <label for="userid">아이디:</label>
      <input class="form-control" id="userid" placeholder="Enter id" 
      		name="id" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="username">이름:</label>
      <input class="form-control" id="username" placeholder="Enter name" 
      		name="name" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="useremail">이메일:</label>
      <input class="form-control" id="useremail" placeholder="Enter email" 
      		name="email" required>
    </div>
    <div class="mb-3 mt-3">
      <label for="userage">나이:</label>
      <input type="number" class="form-control" id="userage" placeholder="Enter age" 
      		name="age" required>
    </div>
    <div class="mb-3">
      <label for="pwd">패스워드:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" 
      		name="password" required>
    </div>
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="button" class="btn btn-primary" onclick="location.href='login.jsp'">로그인</button>
    <button type="submit" class="btn btn-primary">회원가입</button>
    <button type="button" class="btn btn-primary" 
    		onclick="location.href='${pageContext.request.contextPath}'">HOME</button>
  </form>
</div>
</body>
</html>
    