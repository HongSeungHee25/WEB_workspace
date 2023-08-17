<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리 북카페</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/list.css?v=3">  
</head>
<body>
<main id="list">
<h3>북챗 :: 커뮤니티</h3>
<p>오늘 무슨 책을 읽으셨나요? </p>
<hr style="color:white;">
<div style="margin:auto;width:900px;">
<ul id="main">	<!-- 선택자 #list ul#main -->
	<li>
		<ul  class="row">	<!-- 선택자 #list ul.row -->
			<li>번호</li>
			<li>제목</li>
			<li>작성자</li>
			<li>조회수</li>
			<li>작성일</li>
		</ul>
	</li>
	<!-- c:forEach 태그를 사용하여 "list" 변수에 저장된 데이터를 순회하면서 게시물 정보를 출력합니다. -->
 	<c:forEach var="vo" items="${list}"> 
	<li>
		<ul  class="row">
			<li><!-- "vo" 변수 안에 있는 "idx" 값을 출력합니다. -->
				<c:out value="${vo.idx }"/>
			</li>
			<!-- 제목에 링크를 설정하고, 해당 게시물의 "idx"와 페이지 정보를 전달합니다. -->
			<li><a href="read.jsp?idx=${vo.idx }&page=${paging.currentPage}" class="title">  
					<!-- 게시물 제목을 출력합니다. --><!-- 현재페이지 번호 전달 시작 -순서1) -->
					<c:out value="${vo.title }"/>
				</a>
				<!-- 댓글 수를 출력하며, 오렌지색 글꼴로 스타일을 지정합니다. -->
		 		<span style="color:orange;font-size: 80%;">(<c:out value="${vo.commentCount }"/>)
		 		</span></li>
			<li>
				<!-- 게시물 작성자를 출력합니다. -->
				<c:out value="${vo.writer }"/><%-- (<c:out value="${vo.ip }"/>) --%>
			</li>
			<li>
				<!-- 게시물 조회수를 출력합니다. -->
				<c:out value="${vo.readCount }"/>
			</li>
			<li>
			<!-- vo.createdAt 날짜 패턴을 적용한 결과 문자열을 createdAt 새로운 변수로 저장 -->
			<!-- : "createdAt" 변수에 날짜를 "yyyy-MM-dd" 형식으로 포맷하여 저장합니다. -->
			<fmt:formatDate value="${vo.createdAt }" pattern="yyyy-MM-dd" var="createdAt"/>
			<!-- 오늘 작성한 글은 시간으로 표시 -->
			<!-- 만약 "createdAt" 변수가 오늘과 같다면, 시간 형식으로 날짜를 출력합니다. -->
			<c:if test='${createdAt == today}'>
				<fmt:formatDate value="${vo.createdAt }" type="time"/>
			</c:if>
			<!-- 오늘 이전에 작성한 글은 날짜로 표시 -->
			<!-- 만약 "createdAt" 변수가 오늘과 다르다면, 날짜 형식으로 날짜를 출력합니다. -->
			<c:if test='${createdAt != today}'>
				<fmt:formatDate value="${vo.createdAt }" pattern="yyyy-MM-dd"/>
			</c:if>
			</li>
			
		</ul>
	</li>
 	</c:forEach>
	</ul>
	<div style="float:right;margin:40px;">
		<%-- <a href="write.jsp?page=${paging.currentPage }" class="button" >글쓰기</a>   --%>
		<!-- 글쓰기 할때 로그인을 하도록 한다면 자바스크립트 함수로 로그인 여부 확인합니다. -->
		<a href="javascript:write()" class="button">글쓰기</a>
		<a href="${pageContext.request.contextPath}" class="button" >홈</a>
	</div>
</div>
<script type="text/javascript">
	function write() {
		let yn
		if('${user.id}'==''){
			yn=confirm('글쓰기는 로그인이 필요합니다. 로그인 하시겠습니까?')
			if(yn) location.href='../login.jsp?back=w'  // 로그인 후 글쓰기 url로 redirect 하기 위한 파라미터
		}else{
			location.href='write.jsp?page=${paging.currentPage }'
		}
	}
</script>

<!-- 페이지 버튼을 클릭하면  url은  http://localhost:8081/jspBoard/community/list.jsp 는 동일하고 
	 page 번호 파라미터만 변경됩니다.  이런 경우 앞의 부분 생략하고 ? 부터 작성.
-->
<div style="width:700px;margin: auto;padding: 10px;text-align: center;">
	전체 글 개수 : <c:out value="${paging.totalCount }"/> <br>
	<!-- paging 클래스에 저장된 변수 totalCount 를 불러와 전체 게시물 수를 출력합니다. -->
	<hr>
	<a class="pagenum" href="?page=1">&lt;&lt;</a>   <!--(1) 첫번째 페이지 1번으로 이동 -->
	<!-- 첫번째 페이지 1번으로 이동하는 엔터티 코드로 생성 -->
	
	<!--(2)  실행하면서 파악해보세요. --> <!-- 요청은 ListController가 받음.page파라미터 변경됨. -->
	<a class="pagenum" href="?page=${paging.startPage-1 }"      
			style='<c:if test="${paging.startPage==1 }">display:none;</c:if>' >&lt;</a>
	<!-- "startPage" 변수에서 1을 뺀 값으로 이전 페이지로 이동합니다. 
		만약 현재 페이지가 첫 페이지라면 해당 버튼을 보이지 않도록 스타일을 조정합니다.-->
	
	<!--(3) 페이지 범위 startPage 부터 endPage 까지 반복 -->
		<!-- 클래스이름 ieach는 자바스크립트에서 숫자 a 태그 요소만 가져가기 위해 붙인 이름 -->
		<!-- 1) 페이지 번호 버튼을 순서대로 생성합니다.  
			 2) "startPage"부터 "endPage"까지의 범위에서 반복문을 실행합니다.
			 3) 반복문 내에서 사용할 변수 이름을 "i"로 지정합니다.  
			 4) "i" 변수의 값을 페이지 번호로 설정하여 해당 페이지로 이동합니다.
			 5) "i" 변수의 값을 출력합니다.-->
	<c:forEach var="i" begin="${paging.startPage }" end="${paging.endPage }">
		<a class="pagenum ieach" href="?page=${i }"><c:out value="${i }"/></a>
	</c:forEach>
	
	<!--(4)  실행하면서 파악해보세요. -->
	<a class="pagenum" href="?page=${paging.endPage+1 }"
			style='<c:if test="${paging.endPage==paging.totalPage }">display:none;</c:if>'	>&gt;</a>
	<!-- "endPage" 변수에서 1을 더한 값으로 다음 페이지로 이동합니다. 
		 만약 현재 페이지가 마지막 페이지라면 해당 버튼을 보이지 않도록 스타일을 조정합니다. -->		
	<a class="pagenum" href="?page=${paging.totalPage }">&gt;&gt;</a>  <!--(5) 가장 마지막 페이지로 이동 -->
	<!-- "totalPage" 변수에 저장된 마지막 페이지 번호로 이동합니다. -->
</div>
</main>
<script type="text/javascript">
	const pnums = document.querySelectorAll('.ieach');
	pnums.forEach(function(item){		/* forEach로 숫자 a태그를 하나씩 item 에 저장 */
		console.log(item);
		/* item 번호가 현재 페이지 이면 글꼴 스타일을 다르게함. */
		if(item.innerHTML=='${paging.currentPage}') {    		/* a태그의 숫자와 현재페이지가 같은지 검사 */
			item.style.color = 'black';
			item.style.fontWeight = 'bold';
		}else{
			item.style.color = '#37966f';
		}
	});
</script>
</body>
</html>