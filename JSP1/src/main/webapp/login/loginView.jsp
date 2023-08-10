<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="./css.css?v=3">
</head>
<body>
<!-- 패스워드 인증 방법으로 로그인  id, password 입력 (제일단순/쉬운)
	패스워드 평문을 저장하면 정보보호법 위반.
	첫번째 방법) 평문을 서버가 받으면 해시함수 만들어서 db에 저장
	두번째 방법) '클라이언트(자바스크립트)에서 암호화 된 것'을 서버에 보내는 방법
										┗> 해시함수(단방향. 평문 ▶ 암호)
										┗> 공개키방식(양방향 암호화.평문 ▶ 암호 ▶ 평문)
 	* 패스워드 인증 vs 토큰 인증
 -->
<!-- <h3>로그인</h3> -->	<!-- post 는 검사에 들어가면 검사에 보임. method 에 아무것도 안쓰면 기본값은 get. get 은 url로 전달됨. -->
<form action="loginAction.jsp" method="post">
<table>
<tr>
	<th colspan="2">로그인</th>
</tr>
<tr>
	<td><label for="lblid">ID  </label></td>
	<td><input type="text" id="lblid" name="userid" placeholder="아이디를 입력하세요."></td>
</tr>
<tr>
	<td><label for="lblpw">P/W  </label></td>
	<td><input type="password" id="lblpw" name="password" placeholder="비밀번호를 입력하세요."></td>
</tr>
<tr>
	<td colspan="2"><button>로그인</button>
	<button type="button" onclick="location.href='joinView.jsp'">회원가입</button></td>
</tr>
</table>
</form>
</body>
</html>