<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예습 및 정리</title>
</head>
<body>
<table border="1">
	<tr>
	<th>문법명</th>
	<th>형식</th>
	<th colspan="2">설명</th>
	</tr>
	<tr>
	<th>주석문</th>	<td>< % -- -- % ></td>	<td colspan="2">1줄 주석문은 없다. <br> html주석문 < !-- --> 도 사용가능하다.</td>
	</tr>
	<tr>
	<th rowspan="10">page 지시문</th> 	<td rowspan="10">< %@ % ></td> 	<td colspan="2">인코딩 클래스 가져 오기, 세션 관리 등 JSP 프로그램 전체의 동작에<br> 관한 정의합니다.
	<br><br>예시) < @page 속성 명 = "속성 값" 속성 명="속성 값"...% ></td>
	</tr>
	<tr>
	<th>속성명</th>	<th>속성설명</th>
	</tr>
	<tr>
	<td>contentType</td>	<td>JSP 프로그램의 응답시의 MIME 타입과 문자 인코딩을 지정합니다. </td>
	</tr>
	<tr>
	<td>session</td>	<td>HTTP 세션을 사용할지 여부를 지정합니다. (기본값 True) </td>
	</tr>
	<tr>
	<td>pageEncoding</td>	<td>JSP 프로그램을 Servlet 프로그램으로 변환 할 때의 문자 인코딩을 지정합니다.  </td>
	</tr>
	<tr>
	<td>language</td>	<td>JSP 프로그램에서 사용하는 언어를 지정합니다. </td>
	</tr>
	<tr>
	<td>import</td>	<td>JSP 프로그램에서 가져올 클래스 패키지를 지정합니다. </td>
	</tr>
	<tr>
	<td>errorPage</td>	<td>JSP 프로그램에서  잡을 수 없는 예외를 처리 할 페이지를 지정합니다.</td>
	</tr>
	<tr>
	<td>autoFlush</td>	<td>버퍼에 데이터가 쌓여 때 자동으로 클라이언트에 데이터를 보낼 것인지를 지정합니다.</td>
	</tr>
	<tr>
	<td>buffer</td>	<td>클라이언트로 전송하는 데이터를 버퍼링 할 때 버퍼의 용량을 지정합니다. 용량은 kb로 지정합니다.<br> 기본 크기는 8kb입니다. 버퍼하지 않으면 none을 지정합니다.</td>
	</tr>
	<tr>
	<th>선언부</th>	<td>< %! % ></td>	<td colspan="2">전역변수, class, function를 선언하는 영역이다.<br>
	변수, 메소드 선언시 반드시; (세미콜론)가 필요합니다.<br>선언에서 선언 된 변수, 메소드는 처음 요청이있을 때 한 번만 호출됩니다.<br>
	따라서 계속되는 요구에도 변수의 값은 초기화되지 않고, JSP 컨테이너 (Tomcat 등)를<br>다시 시작할 때까지 값이 유지됩니다.<br>
	위치는 관계없지만 대부분 문서 윗쪽에 작성한다.<br></td>
	</tr>
	<tr>
	<th>scriptlet</th>	<td>< % % ></td>	<td colspan="2">실제 코드들이 들어가있는 부분이다.( == 코드부)<br>
	스크립틀릿은 JSP 태그에서는 표현할 수없는 작업을 Java 코드를 작성하고 자유로운<br>작업을 수행하는 경우에 사용합니다. <br>
	Java 코드를위한 각 코드에는 반드시; (세미콜론)가 필요합니다.<br>scriptlet에서 선언 된 변수는 요청 때마다 호출됩니다. <br>
	따라서 그 요청이 있을 때마다 변수의 값이 초기화됩니다.</td>
	</tr>
	<tr>
	<th>표현식</th>	<td>< %= % ></td>	<td colspan="2">Java 코드를 작성하고 그 결과를 표시합니다. <br>
	따라서 실행 결과를 반환 코드 밖에 기술할 수는 없습니다. <br>실행 결과를 리턴하지 void 메소드나 변수의 선언만 식으로 설명 할 수 없습니다. <br>
	표현식에서는 ; (세미콜론)을 작성하지 않습니다.</td>
	</tr>
	</table>
	<br><br><br><br><br>
	
	<table border="1">
		<tr>
		<th>객체명</th>
		<th>객체 설명</th>
		<th>메소드</th>
		<th>메소드 설명</th>
		</tr>
		<tr>
		<th rowspan="4">request</th><td rowspan="4">javax.servlet.http.HttpServletRequest<br>인터페이스 객체 변수 입니다. <br>클라이언트에서 전송 된 매개 변수 데이터 헤더정보, <br> Cookie를 취득 할 때 사용합니다.</td>
		<td>getParameter (String)</td><td>파라미터 값을 받을 때 사용합니다.<br>매개 변수가없는 경우는 Null이 반환됩니다.</td>
		</tr>
		<tr>
		<td>getParameterValues​​ (String)</td><td>파라미터 값들을 받을 때 사용합니다.<br>String 형의 배열로 반환됩니다.<br>매개 변수가없는 경우는 Null이 반환됩니다.</td>
		</tr>
		<tr>
		<td>setAttribute(String name, Object value)</td><td>첫번째 파라미터 데이터 이름, 두 번째 인수에<br>데이터 값을 지정하고 세션 범위의 데이터 값을<br>등록합니다. 이미 데이터 이름이 있으면 새로 지정된<br>데이터 값을 덮어 씁니다.</td>
		</tr>
		<tr>
		<td>getAttribute(String name)</td><td>인수에 지정된 데이터 이름에 해당하는 세션 범위의<br>데이터 값을 반환합니다. 해당 데이터 이름이없는 경우는<br>null를 리턴합니다.</td>
		</tr>
		<tr>
		<th>response</th><td>javax.servlet.http.HttpServletResponse<br>인터페이스 객체 변수입니다.<br>
		클라이언트에 헤더 정보, HTTP 상태, Cookie 등을 반환 할 때 사용합니다.</td>
		<td>sendRedirect (String)</td><td>인수에 지정된 URL로 리디렉션(이동)합니다.</td>
		</tr>
		<tr>
		<th rowspan="2">pageContext</th><td rowspan="2">javax.servlet.jsp.PageContext 클래스의 객체 변수입니다.<br>
		이 객체는 JSP에서 사용되는 모든 객체를 관리 할 수 있습니다. </td>
		<td>forward (String)</td><td>인수에 지정된 URL에 요청을 전송합니다.처리는 전송 된 URL에 인계됩니다.<br>
		 URL은 상대 경로로 지정할 수 있습니다. forward 메서드 전에 어떤 값을 출력하는 처리를 해서는<br>안됩니다. 
		값을 출력하는 작업을 수행하는 경우는 예외가 슬로우됩니다.</td>
		</tr>
		<tr>
		<td>include (String)</td><td>인수에 지정된 URL의 리소스를 실행하고 처리 결과를 전송 바탕으로 반환합니다.<br>URL은 상대 경로로 지정할 수 있습니다.</td>
		</tr>
		<tr>
		<th rowspan="2">session</th><td rowspan="2">암시 객체 session은 javax.servlet.http.HttpSession 인터페이스 객체 변수입니다.<br>
		클라이언트와 서버 간의 세션 관리에 사용합니다. <br>page 지시어의 session 속성에 false가 설정되어있는 경우이 암시 객체를 사용 할 수 없습니다.</td>
		<td>setAttribute(String name, Object value)</td><td>첫번째 파라미터 데이터 이름, 두 번째 인수에 데이터 값을 지정하고<br> 세션 범위의 데이터 값을
		등록합니다. 이미 데이터 이름이 있으면 새로 지정된 데이터 값을 덮어 씁니다.</td>
		</tr>
		<tr>
		<td>getAttribute (String)</td><td>인수에 지정된 데이터 이름에 해당하는 세션 범위의 데이터 값을 반환합니다.<br> 해당 데이터 이름이없는 경우는 null를 리턴합니다.</td>
		</tr>
		<tr>
		<th>out</th><td>javax.servlet.jsp.JspWriter 클래스의 객체 변수입니다. <br>	
		브라우저에 출력이나 버퍼링 등 주로 출력 계의 메소드가 정의되어 있습니다. </td>
		<td>println (var)</td>	<td>인수에 지정된 값과 OS 환경에 맞게 개행 문자를 출력합니다.</td>
		</tr>
	</table>
	
	
	


<!-- 스크립트릿 태그 (< % % >): Java 코드를 포함하고자 할 때 사용. 서버 측 로직을 구현하는 데 사용.  -->

<!-- 표현식 (< %= % >): Java 코드의 결과 값을 출력할 때 사용. 결과 값은 문자열로 변환되어 HTML 출력에 포함. -->

<!--  선언 (< %! % >): 메서드나 변수를 선언할 때 사용. 주로 메서드를 정의하는 데 활용. -->

<%-- <jsp:useBean> : 자바 인스턴스를 준비한다. 보관소에서 자바 인스턴스를 꺼내거나 자바 인스턴스를 
새로 만들어 보관소에 저장하는 코드를 생성한다. 자바 인스턴스를 자바 빈(Java Bean)이라고 부른다. --%>

<%-- <jsp:setProperty> : 자바 빈의 프로퍼티 값을 설정한다.
자바 객체의 setter()를 호출하는 코드를 생성한다. --%>

<%-- <jsp:getProperty> : 자바 빈의 프로퍼티 값을 꺼낸다.
자바 객체의 getter()를 호출하는 코두를 생성한다. --%>

<%-- <jsp:include> : 정적(HTML, 텍스트 파일 등) 또는 동적(서블릿/JSP) 자원을 including하는 자바 코드를 생성한다. --%>

<%-- <jsp:forward> : 현재 페이지의 실행을 멈추고 다른 정적, 동적 자원으로 forwarding하는 자바 코드를 생성한다. --%>

<%-- <jsp:param> : 	jsp:include, jsp:forard, jsp:params의 자식 태그로 사용한다.
ServletRequest 객체에 매개변수를 추가하는 코드를 생성한다. --%>

<%-- <jsp:plugin> : OBJECT 또는 EMBED HTML 태그를 생성한다. --%>

<%-- <jsp:element> : 임의의 XML 태그나 HTML 태그를 생성한다. --%>
</body>
</html>