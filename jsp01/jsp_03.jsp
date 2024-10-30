<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <%
      Date today = new Date();//오늘 날짜 객체 생성

      out.println("현재 날짜 시간:<storng>"+today+"</strong><hr/>");
    %>
  </body>
</html>
