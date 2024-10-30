<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <%
      Calendar calendar = Calendar.getInstance();
      // Canlendar는 추상클래스로 new키워드로 객체 생성을 못한다.
      // 하지만 날짜와 시간값을 구할 때 사용

      int year = calendar.get(Calendar.YEAR);
      int month = calendar.get(Calendar.MONTH) + 1;
      int date = calendar.get(Calendar.DAY_OF_MONTH);
      int hour = calendar.get(Calendar.HOUR_OF_DAY);
      int minute = calendar.get(Calendar.MINUTE);
      int second = calendar.get(Calendar.SECOND);
    %>
    <b><%=year%></b>년 <strong><%=month%></strong>월<b><%=date%></b>일
    <hr/>
    <%
      out.println("<strong>"+hour+"</strong>시 <b>"+minute+"</b>분<b>"+second+"</b>초입니다.");
    %>
  </body>
</html>
