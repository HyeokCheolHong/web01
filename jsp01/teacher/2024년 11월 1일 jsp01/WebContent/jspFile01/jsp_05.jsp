<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %> <%--이 trimDirectiveWhitespaces="true"속성을 추가하면
웹브라우저 출력결과물 페이지 소스보기에서 첫번째 줄의 공백 라인을 제거할 수 있다. jsp 2.1에서 추가됨. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 현재 날짜와 시간</title>
</head>
<body>
현재 날짜와 시간값: <%=new java.util.Date() %>
</body>
</html>