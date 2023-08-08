<%@page import="sample.DTO.MemberDTO"%>
<%@page import="sample.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 등록</title>
	<link rel="stylesheet" href="./Index.css?v=3">
	<link rel="stylesheet" href="./MemberRegister.css?v=3">
</head>
<body>
<% 
	MemberDAO dao = MemberDAO.getMemberDAO();
%>
<jsp:include page="header.jsp" />
 <section>
 <h2>홈쇼핑 회원 등록</h2>
 <form action="MemberRegisterSave2.jsp" method="post">
 <table>
 	<tr>
 		<td><label for="lblNo">회원번호(자동생성)</label></td>
 		<td>
 		<input type="number" name="custno" value="<%= dao.nextCustno() %>" readonly>
        </td>
 	</tr>
 	<tr>
 		<td><label for="lblname">회원성명</label></td>
 		<td><input type="text" id="lblname" name="custname"></td>
 	</tr>
 	<tr>
 		<td><label for="lblphone">회원전화</label></td>
 		<td><input type="text" id="lblphone" name="phone"></td>
 	</tr>
 	<tr>
 		<td><label for="lbladdr">회원주소</label></td>
 		<td><input type="text" id="lbladdr" name="address"></td>
 	</tr>
 	<tr>
 		<td><label for="lblsign">가입일자</label></td>
 		<td><input type="text" id="lblsign" value="<%= dao.today() %>" name="signupdate" disabled></td>
 	</tr>
 	<tr>
 		<td><label for="lblgrade">고객등급[A:VIP, B:일반, C:직원]</label></td>
 		<td><input type="text" id="lblgrade" name="grade">
 		</td>
 	</tr>
 	<tr>
 		<td><label for="lblcode">도시코드</label></td>
 		<td><input type="text" id="lblcode" name="city">
			</td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<button>등록</button>
 				<button type="button" onclick="location.href='MemberList.jsp'">조회</button>
 </table>
 </form>
 </section>
 

  <jsp:include page="footer.jsp" />

</body>
</html>