package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	//서블릿(프론트 컨트롤러)으로부터 처리해야할 요청 request, 응답 response 를 인자로 받습니다.
	void handle(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException ;
	
	/*
	 RequestDispatcher는 Java 웹 애플리케이션에서 서블릿끼리의 통신을 위해 사용되는 인터페이스입니다. 
	 이를 통해 현재 실행 중인 서블릿에서 다른 서블릿이나 JSP로 제어를 넘기거나, 다른 서블릿이나 JSP로부터 결과를 받아올 수 있습니다.
	 
	 ※ 주로 두 가지 메소드를 사용하여 RequestDispatcher를 활용
	 1. forward(request, response): 현재 서블릿의 제어를 다른 서블릿이나 JSP로 전달합니다. 
	 이 때 웹 브라우저는 주소창에 전달받은 서블릿의 URL이 나타나지 않으며, 클라이언트에게는 전달받은 서블릿의 출력이 그대로 보여집니다.
	 
	 2. include(request, response): 현재 서블릿의 제어를 다른 서블릿이나 JSP로 전달하고 결과를 받아온 후, 
	 현재 서블릿의 출력에 추가로 출력합니다. 즉, 현재 서블릿의 출력과 다른 서블릿의 출력이 합쳐져서 보여집니다.
	 
	 예를 들어, 클라이언트가 요청한 URL에 따라 다른 서블릿이나 JSP로 제어를 전달하여 사용자에게 원하는 페이지를 
	 보여주는데 활용됩니다. 주로 페이지 이동, 페이지 포워딩, include 기능을 구현하는 데 사용됩니다.
	 
	 */
}
