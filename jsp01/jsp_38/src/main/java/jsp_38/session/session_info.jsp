<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%-- session은 안써도됨 --%>
<%@ page import="java.util.Date, java.text.*" %>
<%
  Date time = new Date();
  // time 날짜 시간 객체 생성
  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
  // 날짜/시간 출력 포맷타입 지정
%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>세션 정보 출력</h3>
    세션 ID : <%=session.getId()%><hr/>
    <%
      time.setTime(session.getCreationTime());
      // 세션 생성 시간을 저장
    %>
    세션 생성 시간 : <%= formatter.format(time)%>
    <%
      time.setTime(session.getLastAccessedTime());
      // 가장 마지막에 세션에 접근한 시간을 저장
    %>
    최근 세션에 접근한 시간 : <%= formatter.format(time)%>
  </body>
</html>