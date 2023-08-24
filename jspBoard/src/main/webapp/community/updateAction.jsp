<%@page import="org.iclass.dto.Community"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="org.iclass.dao.communityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 수정된 내용 db 테이블에 저장하기 -->
<% 
//request.setCharacterEncoding("UTF-8");	//filter 가 실행함

	String ip = request.getRemoteAddr();	//클라이언트 ip 가져오기
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	//long idx = Long.parseLong(request.getParameter("idx"));
	int idx = 0;
	int pageNo = 0;
	if(request.getParameter("idx") != null){
	idx = Integer.parseInt(request.getParameter("idx"));
	}
	
	if(request.getParameter("page") != null){
		pageNo = Integer.parseInt(request.getParameter("page"));
		}
	
	communityDao dao = communityDao.getInstance();
	Community vo = new Community(0,idx,null,title,content,0,null,ip,0);

	int result = dao.update(vo);
	if(result==1){
		request.setAttribute("message", "글 수정이 완료되었습니다.");
		request.setAttribute("url", "read.jsp?idx="+idx+"&page="+pageNo);
		pageContext.forward("alert.jsp");
	}
	
%>
</body>
</html>