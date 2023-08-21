<%@page import="org.iclass.dto.Community"%>
<%@page import="org.iclass.dao.communityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
		
	request.setCharacterEncoding("UTF-8");	
	
	long idx = Long.parseLong(request.getParameter("idx"));
	int pageNo = 0;
	
	if(request.getParameter("page") != null){
		pageNo = Integer.parseInt(request.getParameter("page"));
	}

	communityDao dao = communityDao.getInstance();
	int result = dao.delete(idx);

	if(result==1){
		request.setAttribute("message", "글 삭제가 완료되었습니다.");
		request.setAttribute("url", "list.jsp?idx="+idx+"&page="+pageNo);
		pageContext.forward("alert.jsp");
	}
%>
