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
    list = dao.getSalesByAmountDesc();
	
	%>
 <jsp:include page="header.jsp" />
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
  <jsp:include page="footer.jsp" />

</body>
</html>