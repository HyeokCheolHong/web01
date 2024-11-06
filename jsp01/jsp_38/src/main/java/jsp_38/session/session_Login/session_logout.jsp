<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  session.invalidate();
  // 세션만료 -> 세션 로그아웃
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>세션 로그아웃</h3>  
    <script>
      alert('세션 로그아웃 되었습니다');
    </script>
  </body>
</html>