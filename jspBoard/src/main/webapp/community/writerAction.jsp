<%@page import="org.iclass.dto.BookUser"%>
<%@page import="org.iclass.dto.Community"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="org.iclass.dao.communityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 수정된 내용 db 테이블에 저장하기 -->
<%
	request.setCharacterEncoding("UTF-8");	
    BookUser writer = (BookUser) session.getAttribute("user");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    communityDao dao = communityDao.getInstance();
    long idx = dao.insert(Community.builder()
            .writer(writer.getId()) 
            .title(title)
            .content(content)
            .build());
%>
<script type="text/javascript">
	alert('글 등록이 완료되었습니다.')
	location.href='list.jsp'
</script>

