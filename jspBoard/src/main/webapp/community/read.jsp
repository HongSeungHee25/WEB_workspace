<%@page import="org.iclass.dto.Community"%>
<%@page import="org.iclass.dao.communityDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
		/* 글 조회 */
		long idx = Integer.parseInt(request.getParameter("idx"));
		communityDao dao = communityDao.getInstance();
		
		// 조회수 증가
		int updatedCount = dao.setReadCount(idx);
		
		// 글 조회
		Community dto = dao.selectByIdx(idx);
		
		request.setAttribute("dto", dto);			
		
		pageContext.forward("readView.jsp");
%>
