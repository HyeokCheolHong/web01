<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>브라우저에 저장된 쿠키 목록보기</h3>
    <%
      Cookie[] cookies = request.getCookies();
      // 쿠키 목록을 배열로 구함
      if(cookies != null && cookies.length > 0) {
        for(int i=0; i<cookies.length; i++) {
          out.println("Cookie Name : " + cookies[i].getName() + ", Value : " + cookies[i].getValue());

          // Cookie cookie = cookies[i];
          // out.println("Cookie Name : " + cookie.getName() + ", Value : " + cookie.getValue());
          // 쿠키의 이름과 값 출력
        }
      } else {
        out.println("쿠키가 존재하지 않습니다.");
      }
    %>
  </body>
</html>