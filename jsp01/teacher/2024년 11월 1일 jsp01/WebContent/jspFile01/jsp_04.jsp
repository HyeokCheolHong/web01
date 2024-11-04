<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<%
   Calendar cal = Calendar.getInstance();//Calendar는 추상클래스로 new키워드로 객체 생성을 못한다.
   //하지만 날짜와 시간값을 구할 때 사용
   
   int year = cal.get(Calendar.YEAR);//년도
   int month = cal.get(Calendar.MONTH)+1;//월, +1을 한 이유는 1월이 0부터 시작하기 때문이다.
   int date = cal.get(Calendar.DATE);//일
   
   int hour = cal.get(Calendar.HOUR_OF_DAY);//24시간값
   int min = cal.get(Calendar.MINUTE);//분
   int sec = cal.get(Calendar.SECOND);//초
%>
<b><%=year%></b>년  <strong><%=month %></strong>월  <b><%=date %></b>일
<hr/>
<%
  out.println("<strong>"+hour+"</strong>시  <b>"+ min +"</b>분 <b>"+sec+"</b> 초입니다.");
%>
</body>
</html>
