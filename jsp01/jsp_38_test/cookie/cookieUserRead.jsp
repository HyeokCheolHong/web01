<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="util.*" %>
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
    <h3>쿠키 읽어오기</h3>  
    name 쿠키 값 : <%= cookies.getValue("name")%><hr/>
    <% if(cookies.exists("id")) { %>
      id 쿠키 값 : <%= cookies.getValue("id") %>
    <% } %>
  </body>
</html>