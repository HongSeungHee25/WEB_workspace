<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 북카페</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/community.css?v=3">
</head>
<body>
<!-- view 에서는 전달 받은 값 출력하고 수정할 내용 입력 받기 -->
<main id="write">
	<h3>북챗 :: 커뮤니티</h3>
	<p>오늘 무슨 책을 읽으셨나요? </p>
	<hr style="color: white;">
	<form name="frm1" method="post" action="updateAction.jsp">		<!-- onsubmit="return isValid()" 방법도 있음. -->
	<input type="hidden" name="idx" value="${vo.idx }">
	<input type="hidden" name="page" value="${page }">
	<!-- 현재페이지 번호 전달 - 순서5) post 로 전달해야 하므로 hidden type 으로 저장 -->
	<table>
		<tr>
			<th>제목</th>
		<td>
		<!-- 수정된 글은 제목 앞에 '[수정]' 문자열을 넣어줍니다. -->
			<c:choose>	
				<c:when test="${fn:contains(vo.title,'[수정]') }">
					<input type="text" name="title" size="50" value="${vo.title }" readonly>
				</c:when>
				<c:otherwise>
					<input type="text" name="title" size="50" value="[수정]${vo.title }" readonly>
				</c:otherwise>
			</c:choose>
		</td>
		</tr>
		<tr>
			<th>작성자</th>
		<td>
			<input type="text" name="writer" size="50" value="${vo.writer }" disabled="disabled">
		</td>
		</tr>
		<tr>
			<th>작성 날짜</th>
		<td>
			<c:out value="${vo.createdAt }" />
		</td>
		</tr>
		<tr>
			<th>내용</th>	<!-- textarea 의 크기 : rows="30" cols="80" -->
		<td>
			<textarea rows="30" cols="80" name="content" required><c:out value="${vo.content }" /></textarea>
		</td>
		</tr>
		<tr>
		<td colspan="2" align="center">
			<button type="button" onclick="isValid()">저장</button>	<!-- 유효성검사 후 자바스크립트에서 submit. -->
			<button type="reset">다시쓰기</button>	
			<button type="button" onclick="location.href='list?page=${page}'">목록</button>	
		</td>
		</tr>
	</table>
	</form>
</main>
<script type="text/javascript">
	function isValid() {
		let result = true		//유효성 검사 결과 저장
		const content = document.forms[0].content	//input 요소 지정
		if(content.value == ''){
			alert('글 내용 작성은 필수 입니다.')
			result = false
			content.focus()
		}
	if(result){
		document.forms[0].submit()
	}
	}
	//유효성 검사를 위해서 저장 버튼 타입을 submit 으로 두는 방법도 있습니다.
	//그럴 때는 form 태그에 onsubmit='return isValid()'	=> isValid 함수 실행한 리턴이 true 일때만 submit 합니다.
</script>
</body>
</html>