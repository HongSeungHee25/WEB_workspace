<%@page import="org.iclass.dao.communityCommentsDao"%>
<%@page import="org.iclass.dto.CommunityComments"%>
<%@page import="org.iclass.dto.BookUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	//필요한 파라미터 가져오기 : mref,writer, content f(insert 또는 delete), page
	long mref = Long.parseLong(request.getParameter("mref"));
	BookUser user = (BookUser) session.getAttribute("user");
	String f = request.getParameter("f");
	String pageNo = request.getParameter("page");
	String content = request.getParameter("content");
	String writer = user.getId();
	
	communityCommentsDao dao = communityCommentsDao.getInstance();
	
	if(f.equals("1")){	//insert
		CommunityComments dto = CommunityComments.builder()
				.mref(mref)
				.writer(writer)
				.content(content)
				.build();
		if(dao.insert(dto) == 1){	//댓글 저장 완료
			dao.setCommentCount(mref);		//댓글 개수 새로 구하기
			request.setAttribute("message", "댓글 등록이 완료되었습니다.");
			request.setAttribute("url", "read.jsp?idx="+mref+"&page="+pageNo);
			pageContext.forward("alert.jsp");
		}
	}else if(f.equals("2")){	//delete
		int idx = Integer.parseInt(request.getParameter("idx"));
		dao.delete(idx);
		dao.setCommentCount(mref);		//댓글 개수 새로 구하기
		request.setAttribute("message", "댓글 삭제가 완료되었습니다.");
		request.setAttribute("url", "read.jsp?idx="+mref+"&page="+pageNo);
		pageContext.forward("alert.jsp");
	}else{
		throw new IllegalAccessException();
	}
	
	
%>
