<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listView.jsp - 화면 출력 페이지</title>
<link rel="stylesheet" href="../../hrd/Index.css?v=3">
<link rel="stylesheet" href="../../hrd/MemberList.css?v=3">
</head>
<body>
<!-- request.getAttribute("list") 실행 + List<MemberDTO> 타입변환 + 출력 -->
<!-- 출력을 반복해서 테이블 tr 태그에 넣기 : jstl . 애트리뷰트(자바빈)은 자바 for로는 못함. -->
<jsp:include page="../../hrd/header.jsp" />
<section>
    <h2>회원목록조회/수정</h2>
    <table>
        <tr>
            <th>회원번호</th>
            <th>회원성명</th>
            <th>전화번호</th>
            <th>주소</th>
            <th>가입일자</th>
            <th>고객등급</th>
            <th>거주지역</th>
        </tr>
        <!-- 기존에 들어가 있던 향상 for문이 forEach 문으로 변경 -->
        <c:forEach items="${list}" var="member">
            <!-- getter 대신에 EL 표기법으로 dto 컬럼 가져옴. -->
            <tr>
                <td><a href="../../hrd/MemberUpdate.jsp?custno=${member.custno}"><c:out value="${member.custno}" /></a></td>
                <td><c:out value="${member.custname}" /></td>
                <td><c:out value="${member.phone}" /></td>
                <td><c:out value="${member.address}" /></td>
                <td><c:out value="${member.joindate}" /></td>
                <td>
                    <!-- eq 는 같다는 뜻. 회원 등급이 VIP 라면 텍스트 색상을 빨간색으로 하라는 뜻 -->
                    <c:choose>
                        <c:when test="${member.grade eq 'VIP'}">
                            <span style='color:red;'>VIP</span>
                        </c:when>
                        <c:otherwise>
                            <c:out value="${member.grade}" />
                        </c:otherwise>
                    </c:choose>
                    
                </td>
                <td><c:out value="${member.city}" /></td>
            </tr>
        </c:forEach>
        <!-- list 가 비어 있으면 true 를 반환하고, 비어있지 않으면 false 를 반환 -->
        <c:if test="${empty list}">
            <tr>
                <td colspan="7">회원이 없습니다.</td>
            </tr>
        </c:if>
    </table>
</section>
<jsp:include page="../../hrd/footer.jsp" />

</body>
</html>
