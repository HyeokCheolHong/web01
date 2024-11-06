<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="util.Cookies" %>
<%
  response.addCookie(Cookies.createCookie("name", "hong"));
  // 쿠키 이름, 값을 가진 추가
  response.addCookie(Cookies.createCookie("id", "abc777777", "/jsp01", -1));
  // 쿠키이름, 값, 경로, 유효시간을 가진 쿠키추가
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>사용자 정의 Cookies를 이용한 쿠키 생성 예제</h3>
  </body>
</html>