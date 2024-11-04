<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  Cookie cookie = new Cookie("name", "홍길동");
  // 쿠키 이름이 name이고, 쿠키값이 홍길동인 cookie를 생성
  response.addCookie(cookie);
  // 쿠키 추가
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>쿠키 생성</h3>  
    <%-- 쿠키 이름 : <b><%= out.println(cookie.getName());%></b>, 쿠키값 : <strong><%= out.println(cookie.getValue());%></strong> --%>
    쿠키 이름 : <b><%= cookie.getName() %></b>, 쿠키값 : <strong><%= cookie.getValue() %></strong>
    <hr/>
  </body>
</html>