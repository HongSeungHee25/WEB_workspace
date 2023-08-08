<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean.jsp</title>
</head>
<body>

<%	 
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="dto" class="sample.DTO.MyUser"/>
<!-- 위에서 생성된 자바빈에 프로퍼티(클래스의 변수) 값을 저장
	setxxxx 와 getProperty 메소드를 실행합니다. -->
	 
<!-- name="dto" 는 useBean 태그의 id 값으로 정합니다.-->
<jsp:setProperty property="uname" name="dto" param="myname"/>
MyName 이름 : <jsp:getProperty property="uname" name="dto"/><br>
				<!-- getxxxx 메소드 역할 -->
<jsp:setProperty property="age" name="dto" param="myage"/>
MyAge 나이 : <jsp:getProperty property="age" name="dto"/><br>
<jsp:setProperty property="address" name="dto" param="myaddress"/>
MyAddress 주소 : <jsp:getProperty property="address" name="dto"/><br>

</body>
</html>