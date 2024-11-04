<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  Cookie[] cookies = request.getCookies();

  if(cookies != null && cookies.length > 0) {
    for(int i=0; i<cookies.length; i++) {
      if(cookies[i].getName().equals("name")) {
        Cookie cookie = new Cookie("name", "jspWebPrograming");
        // name 쿠키이름 쿠키값을 변경
        response.addCookie(cookie);
        // 변경된 쿠키를 추가
      }
    }
  }
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>name 쿠키값을 변경했습니다.</h3>
  </body>
</html>