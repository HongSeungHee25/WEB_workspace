<%@page import="sample.DTO.MemberDTO"%>
<%@page import="sample.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>홈쇼핑 회원 정보 수정</title>
	<link rel="stylesheet" href="../css/Index.css?v=3">
	<link rel="stylesheet" href="../css/MemberUpdate.css?v=3">
</head>
<body>
<!-- MemberList.jsp 에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value 에서 출력하기. -->
 <jsp:include page="../hrd/header.jsp" />
 <section>
 <h3>홈쇼핑 회원 정보 수정</h3>
 <!-- 이 예제는 ${} 를 사용해서 값을 출력하고자 일반변수 dto로는 할수 없으므로 
 	  자바빈을 만든 후에 자바빈 객체에 dto의 각 필드값을 전달한 것입니다.
 	  => 매우 비효율적. 그래서 새로운 forward 로 해결하기. -->
 <jsp:useBean id="member" class="sample.DTO.MemberDTO"></jsp:useBean>
<%
	String custno = request.getParameter("custno");
	MemberDAO dao = MemberDAO.getMemberDAO();
	MemberDTO dto = null;
	if(custno != null){
		dto = dao.selectOne(Integer.parseInt(custno));
		member.setCustname(dto.getCustname());
		member.setPhone(dto.getPhone());
		member.setAddress(dto.getAddress());
		member.setJoindate(dto.getJoindate());
		member.setGrade(dto.getGrade());
		member.setCity(dto.getCity());
	}
%>
 <form action="../hrd/MemberUpdateSave.jsp" method="post">
 <table>
 	<tr>
 		<td><label for="lblNo">회원번호</label></td>
 		<!-- param 은 getParameter() 동작의 EL 에서 사용하는 객체입니다. -->
 		<td>
 			<input type="number" name="cust" value="${param.custno }" disabled>
            <input type="hidden" name="custno" value="${param.custno }">
        </td>
 	</tr>
 	<tr>
 		<td><label for="lblname">회원성명</label></td>
 		<td><input type="text" id="lblname" name="name" value="${member.custname }"></td>
 	</tr>
 	<tr>
 		<td><label for="lblphone">회원전화</label></td>
 		<td><input type="text" id="lblphone" name="phone" value="${member.phone }"></td>
 	</tr>
 	<tr>
 		<td><label for="lbladdr">회원주소</label></td>
 		<td><input type="text" id="lbladdr" name="address" value="${member.address }"></td>
 	</tr>
 	<tr>
 		<td><label for="lblsign">가입일자</label></td>
 		<td><input type="text" id="lblsign" value="${member.joindate }" name="signupdate" disabled></td>
 	</tr>
 	<tr>
 		<td><label for="lblgrade">고객등급[A:VIP, B:일반, C:직원]</label></td>
 		<td><input type="text" id="lblgrade" name="grade"  value="${member.grade }">
 		</td>
 	</tr>
 	<tr>
 		<td><label for="lblcode">도시코드</label></td>
 		<td><input type="text" id="lblcode" name="citycode"  value="${member.city }">
			</td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<button>수정</button>
 				<button type="button" onclick="location.href='../hrd/MemberList.jsp'">조회</button>
 		</td>
 		</tr>
 </table>
 </form>
 </section>
 

  <jsp:include page="../hrd/footer.jsp" />
</body>
</html>