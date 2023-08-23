<%@page import="java.net.InetAddress"%>
<%@page import="org.iclass.dto.BookUser"%>
<%@page import="org.iclass.dto.Community"%>
<%@page import="org.iclass.dao.communityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 수정된 내용 db 테이블에 저장하기 -->
<%
//request.setCharacterEncoding("UTF-8");	//filter 가 실행함
	
    BookUser writer = (BookUser) session.getAttribute("user");
    
    //아래 작성자는 문제점을 발견하기 위한 추가 사항이고 나중에는 삭제합니다. 아래과 같이하면 세션 비교 코드 필요함.
    //String writer = request.getParameter("writer");
    
   /*  if(ip.equals("127.0.0.1")){
    	InetAddress ipv4 = InetAddress.getLocalHost();
    	ip = ipv4.getHostAddress();
    } */
    String ip = request.getRemoteAddr();		//ip 가져오기
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    communityDao dao = communityDao.getInstance();
    long idx = dao.insert(Community.builder()
            .writer(writer.getId()) 
            //.writer(writer)
            .title(title)
            .content(content)
            .ip(ip)
            .build());
%>
<script type="text/javascript">
	alert('글 등록이 완료되었습니다.')
	location.href='list.jsp'
</script>

