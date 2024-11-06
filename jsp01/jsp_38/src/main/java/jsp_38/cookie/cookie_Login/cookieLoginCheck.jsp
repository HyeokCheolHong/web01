<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
  Cookies cookies = new Cookies(request);
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>쿠키 로그인 여부 검사</h3>  
    <%
      if(cookies.exists("AUTH")) {
    %>
        아이디 <<strong style="color:orange; font-size:20px"><%= cookies.getValue("AUTH")%>로 로그인 상태 유지</strong>
    <% } else { %>
      <<span style="color:red; font-size:20px; background:gold; border-radius:13px; font-weight:border; padding:3px">로그인 하지 않은 상태</span>
    <% } %>
  </body>
</html>