<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10scopeTest</title>
</head>
<body>
<h3>SCOPE 테스트</h3>
<hr>
<h4>application</h4>
<!-- applicationScope 에 저장된 appDto 자바빈을 가져오기 -->
<jsp:useBean id="appDto" class="sample.DTO.MyUser" scope="application"/>
<% out.println(appDto); %>
<hr>
<ul>
	<li>${appDto.uname }</li>		<!-- getter 대신에 필드 이름만 작성. -->
	<li>${appDto.age }</li>
	<li>${appDto.address }</li>
</ul>
<h4>session</h4>
<!-- sessionScope 에 저장된 appDto 자바빈을 가져오기 -->
<jsp:useBean id="sessionDto" class="sample.DTO.MyUser" scope="session"/>
<% out.println(sessionDto); %>
<hr>
<ul>
	<li>${sessionDto.uname }</li>
	<li>${sessionDto.age }</li>
	<li>${sessionDto.address }</li>
</ul>
<h4>???????</h4>
<p>jsp:useBean의 기본 scope="page" 입니다. <br>
여기서 page는 psgeContext 입니다. <br>
자바빈 id dto는 12useBean.jsp 에서만 사용할 수 있습니다.</p>
<jsp:useBean id="dto" class="sample.DTO.MyUser" />
<% out.println(dto); %>
</body>
</html>