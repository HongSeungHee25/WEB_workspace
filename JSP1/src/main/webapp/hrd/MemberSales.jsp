<%@page import="sample.DTO.MoneyDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.DAO.MoneyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 매출 조회</title>
	<link rel="stylesheet" href="./Index.css?v=3">
	<link rel="stylesheet" href="./MemberSales.css?v=3">
</head>
<body>
	<%
	/* 스크립트릿 : 자바 코드가 들어갈 수 있는 기호. */	
	MoneyDAO dao = MoneyDAO.getMoneyDAO();
	List<MoneyDTO> list = null;
	//list를 태그에 출력하는 반복문은 향상for문 사용합니다.
	
	try {
        list = dao.getSalesByAmountDesc();
    } catch (Exception e) {
        out.println("에러 메시지: " + e.getMessage());
    }
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
 	<h2>회원 매출 조회</h2>
 <table>
	<tr>
	<th>회원번호</th> <th>회원성명</th> <th>고객등급</th> <th>매출</th>
	</tr>
	<%
        if (list != null && !list.isEmpty()) {
            for (MoneyDTO money : list) {
    %>
	<tr>
	<td><%= money.getCustno() %></td> 
	<td><%= money.getCustname() %></td>  
	<td><%= money.getGrade() %></td> 
	<td><%= money.getPrice() %></td> 
	</tr>
	<%
            }
        } else {
    %>
    <tr>
        <td colspan="3">회원이 없습니다.</td>
    </tr>
    <%
        }
    %>
	</table>
 </section>
 <footer> <!-- footer -->
 	<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service of Korea.</h4>
 </footer>

</body>
</html>