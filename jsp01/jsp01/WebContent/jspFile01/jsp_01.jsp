<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>오늘 날짜와 시간을 출력하는 첫번째 jsp파일</title>
</head>
<body>
	<!-- jsp에서 java code를 실행할 때, out.print()를 이용 -->
    <h3>현재 날짜와 시간은 <%=new java.util.Date() %></h3>
    <%-- %=는 jsp의 스크립트 요소중 표현식이라고 한다. 출력용도로 사용된다 --%>
</body>
</html>