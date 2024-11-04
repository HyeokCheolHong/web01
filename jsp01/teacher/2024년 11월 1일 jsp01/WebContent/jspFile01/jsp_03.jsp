<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<%-- page import속성으로 외부 패키지 경로의 api를 읽어 올수 있다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <%
   Date today=new Date();//오늘 날짜 객체 생성
   
   out.println("현재 날짜 시간 :<strong>"+today+"</strong><hr/>");
 %>
</body>
</html>