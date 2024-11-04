<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  Cookie cookie = new Cookie("oneh", "1time");
  // 쿠키이름이 oneh, 쿠키값이 1time인 쿠키 객체 cookie를 생성
  cookie.setMaxAge(60*60);
  // 쿠키 유효시간 =60초*60 = 1시간 동안 쿠기 유효시간을 설정
  response.addCookie(cookie);
  // 쿠키를 response 객체에 추가
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>쿠키 유효시간 설정(쿠키 유효시간이 1시간 인 oneh 쿠키 생성)</h3>
  </body>
</html>