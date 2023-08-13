<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="./css.css?v=3">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>
<script type="text/javascript" src="./join.js"></script>
</head>
<body>
<!-- <h3>회원가입</h3> -->

<form action="joinAction.jsp" method="post">
<table>
<tr>
	<th colspan="2">회원가입</th>
</tr>
<tr>
	<td><label for="lblid">ID  </label></td>
	<td><input type="text" id="lblid" name="userid" placeholder="아이디를 입력하세요."></td>
</tr>
<tr>
	<td><label for="lblname">이름  </label></td>
	<td><input type="text" id="lblname" name="username" placeholder="이름을 입력하세요."></td>
</tr>
<tr>
	<td><label for="lblemail">이메일  </label></td>
	<td><input type="text" id="lblemail" name="useremail" placeholder="이메일을 입력하세요."></td>
</tr>
<tr>
	<td><label for="lblage">나이  </label></td>
	<td><input type="number" id="lblage" name="userage" placeholder="나이를 입력하세요."></td>
</tr>
<tr>
	<td><label for="lbldate">가입일자  </label></td>
	<td><input type="date" id="lbldate" name="joindate" value="" disabled></td>
</tr>
<tr>
	<td><label for="lblpw">P/W  </label></td>
	<td><input type="password" id="lblpw" name="password" placeholder="비밀번호를 입력하세요."></td>
</tr>
<tr>
	<td><label for="lblpw">P/W 확인  </label></td>
	<td><input type="password" id="lblpw2" name="password2" placeholder="비밀번호를 다시 입력하세요."></td>
</tr>
<tr>
	<td colspan="2"><button type="button" onclick="location.href='loginView.jsp'">로그인</button>
	<button onclick="func_join()" type="button">회원가입</button></td>
</tr>
</table>	
</form>
<script type="text/javascript">
//현재 시간
const today = new Date()

//0. yyyy-mm-dd 로 변환해주는 함수
function dateFormat(vdate){
	const year = vdate.getFullYear()
	const month = (vdate.getMonth()+1).toString().padStart(2,'0')
	const date = vdate.getDate().toString().padStart(2,'0')
	
	let result = [year,month,date].join('-')
	
	return result
}

//1. 가입일자 = 오늘 날짜
const joinDate = document.getElementById('lbldate')
joinDate.value = dateFormat(today)

</script>
</body>
</html>