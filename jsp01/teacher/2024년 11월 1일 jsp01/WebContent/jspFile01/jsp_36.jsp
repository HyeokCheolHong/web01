<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar" %>

<h3>setAttribute()메서드로 속성 키이름에 저장된 값을 포워딩해서 가져오는 법(MVC 모델2 패턴의 웹애플리케이션 개발에서
속성을 이용한 값 전달방식 기법으로 아주 중요)</h3>

<%
  Calendar cal = Calendar.getInstance();
  request.setAttribute("time", cal);//문자열 속성키이름 time에 cal값을 Object타입으로 업캐스팅해서 저장시킴
%>
<jsp:forward page="/jspFile01/to/viewTime.jsp" />
<%-- 포워딩을 하면 time키이름값을 유지할 수 있지만, sendRedirect()에 의해서 새로운 페이지로 이동하면 request.setAttribute
()에 의해서 저장된 키,값을 잃어 버린다. --%>