<%@page import="sample.DTO.MemberDTO"%>
<%@page import="sample.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>홈쇼핑 회원 정보 수정</title>
	<link rel="stylesheet" href="./Index.css?v=3">
	<link rel="stylesheet" href="./MemberUpdate.css?v=3">
</head>
<body>
<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value 에서 출력하기. -->
<%
	String custno = request.getParameter("custno");
	MemberDAO dao = MemberDAO.getMemberDAO();
	MemberDTO dto = null;
	if(custno != null)
		dto = dao.selectOne(Integer.parseInt(custno));
%>
 <header> <!-- header -->
 	<h2>홈쇼핑 회원관리 ver1.0</h2>
 </header> 
 <nav> <!-- nav -->
 	<!-- 반응형 웹페이지를 위해 메뉴는 목록 태그를 주로 사용합니다. 반응형 페이지 스타일은 레이아웃을 flexbox 사용해야 합니다. -->
 	<ul>
 		<li><a href="./MemberRegister.jsp">회원등록</a></li> 
		<li><a href="./MemberList.jsp">회원목록조회/수정</a></li> 
		<li><a href="./MemberSales.jsp">회원매출조회</a></li> 
		<li><a href="./Index.jsp">홈으로.</a></li>  
 	</ul>
 </nav>
 <section>
 <h3>홈쇼핑 회원 정보 수정</h3>
 <!-- action 은 input 데이터를 전달받고 처리할 url 입니다.
 	MemberSave.jsp 를 만드세요. 그리고 전달받은 파라미터로 update 실행하도록 하세요. 
 		ㄴ> 이 파일에는 자바코드 만 작성하고 태그는 필요 없습니다.	
 	MemberUpdate.jsp 에서 보내는 파라미터 이름은 input 태그의 name 속성입니다. -->
 <form action="MemberUpdateSave.jsp" method="post">
 <table>
 	<tr>
 		<td><label for="lblNo">회원번호</label></td>
 		<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value 에서 출력하기. -->
 		<td style="text-align: left; font-size: 90%;">
 			<input type="number" name="cust" value="<%= custno %>" disabled>
            <input type="hidden" name="custno" value="<%= custno %>">
        </td>
 	</tr>
 	<tr>
 		<td><label for="lblname">회원성명</label></td>
 		<td><input type="text" id="lblname" name="name" value="<%= dto.getCustname() %>"></td>
 	</tr>
 	<tr>
 		<td><label for="lblphone">회원전화</label></td>
 		<td><input type="text" id="lblphone" name="phone" value="<%= dto.getPhone() %>"></td>
 	</tr>
 	<tr>
 		<td><label for="lbladdr">회원주소</label></td>
 		<td><input type="text" id="lbladdr" name="address" value="<%= dto.getAddress() %>"></td>
 	</tr>
 	<tr>
 		<td><label for="lblsign">가입일자</label></td>
 		<td><input type="text" id="lblsign" value="<%= dto.getJoindate() %>" name="signupdate" disabled></td>
 	</tr>
 	<tr>
 		<td><label for="lblgrade">고객등급[A:VIP, B:일반, C:직원]</label></td>
 		<td><input type="text" id="lblgrade" name="grade"  value="<%= dto.getGrade() %>">
 		</td>
 	</tr>
 	<tr>
 		<td><label for="lblcode">도시코드</label></td>
 		<td><input type="text" id="lblcode" name="citycode"  value="<%= dto.getCity() %>">
			</td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<button>수정</button>
 				<button type="button" onclick="location.href='MemberList.jsp'">조회</button>
 		</td>
 		</tr>
 </table>
 </form>
 </section>
 

 <footer> <!-- footer -->
 	<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service of Korea.</h4>
 </footer>
</body>
</html>