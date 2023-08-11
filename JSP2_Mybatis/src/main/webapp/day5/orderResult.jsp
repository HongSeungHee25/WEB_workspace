<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderResult.jsp</title>
</head>
<body>
<!-- 문제9. orderConfirm.jsp를 아래와 같이 2개의 소스파일 `처리`와 `화면출력`으로
	분리하였습니다. orderConfirm.jsp 와 동일하게 실행되기 위해 필요한 코드는 무엇인가요?
	 답 : scope="request" 
-->
<jsp:useBean id="order" class="sample.DTO.OrderDTO" scope="request" />
<h3>주문 확인</h3>
<hr>
<ul>
<li>고객 이메일 : ${order.email}</li>
<li>상품코드 : ${order.pcode }</li>
<li>주문수량 : ${order.quantity }</li>
</ul>
<!-- 문제11. ${order.email} 를 설명하세요.
	 답 : orderConfirm2.jsp에서 request를 전달해서 받아온 '주문한 회원 email' 입니다.
-->
<hr>
<button onclick="#'">추가 주문</button>
<script type="text/javascript"> alert('주문완료 되었습니다.')</script>


</body>
</html>