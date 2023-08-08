<%@page import="sample.DTO.MemberDTO"%>
<%@page import="sample.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	//메소드 방식이 port 일 때는 인코딩이 꼭 필요합니다.
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String grade = request.getParameter("grade");
	String city = request.getParameter("citycode");
	String custno = request.getParameter("custno");
	
        MemberDTO dto = new MemberDTO(Integer.parseInt(custno),name,phone,address,null,grade,city);
            
            MemberDAO dao = MemberDAO.getMemberDAO();
            int result = dao.update(dto);

            if (result > 0) {
                out.println("<script>");
                out.println("alert('회원 정보가 수정되었습니다.');");
                out.println("location.href='MemberList.jsp';");
                out.println("</script>");
                
            } else {
            	out.println("<script>");
                out.println("alert('회원 정보 수정에 실패했습니다.')");
                out.println("</script>");
            }
%>