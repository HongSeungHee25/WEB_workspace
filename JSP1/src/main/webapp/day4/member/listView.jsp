<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listView.jsp - 화면 출력 페이지</title>
<!-- 아래 href 의 주소는 애플리케이션이름(context) 를 기준으로 하는 절대 주소입니다. -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Index.css?v=3">
<!-- el로 표기할 때에는 현재 페이지의 request를 가져와야 합니다.(pageContext.request) -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/MemberList.css?v=3">
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
        <!-- list 애트리뷰트는 컬렉션이므로 하나씩 가져와서 member 에 저장 -->
        <c:forEach items="${list}" var="member">
            <!-- getter 대신에 EL 표기법으로 dto 컬럼 가져옴. -->
            <tr>
                <td><a href="../../hrd/MemberUpdate.jsp?custno=${member.custno}">${member.custno}</a></td>
                <td>${member.custname}</td>
                <td>${member.phone}</td>
                <td>${member.address}</td>
                <td>${member.joindate}</td>
                <td>
                    <!-- eq 는 같다는 뜻. 회원 등급이 VIP 라면 텍스트 색상을 빨간색으로 하라는 뜻 -->
                    <c:choose>
                        <c:when test="${member.grade eq 'VIP'}">
                            <span style='color:red;'>VIP</span>
                        </c:when>
                        <c:otherwise>
                            ${member.grade}
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>${member.city}</td>
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
