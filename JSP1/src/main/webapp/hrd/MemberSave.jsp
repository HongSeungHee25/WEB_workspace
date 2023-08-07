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
	
	if (custno != null && !custno.isEmpty()) {
        MemberDTO dto = new MemberDTO();
        dto.setCustname(name);
        dto.setPhone(phone);
        dto.setAddress(address);
        dto.setGrade(grade);
        dto.setCity(city);
        try {
            dto.setCustno(Integer.parseInt(custno));
            
            MemberDAO dao = MemberDAO.getMemberDAO();
            int result = dao.update(dto);

            if (result > 0) {
                out.println("회원 정보가 수정되었습니다.");
            } else {
                out.println("회원 정보 수정에 실패했습니다.");
            }
        } catch (NumberFormatException e) {
            out.println("custno 값이 올바르지 않습니다.");
        }
    } else {
        out.println("custno 값이 전달되지 않았습니다.");
    }
%>