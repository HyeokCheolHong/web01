<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  Cookie[] cookies = request.getCookies();
  if(cookies != null && cookies.length > 0) {
    for(Cookie cookie : cookies) {
      if(cookie.getName().equals("name")) {
        cookie.setMaxAge(0);
        // 쿠키 만료(제거 => 로그아웃)
        response.addCookie(cookie);
        // 삭제된 쿠키 추가
        break;
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
    <h3>name 쿠키를 삭제했습니다</h3>
  </body>
</html>