<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  session.setAttribute("memberid", "abc77777");
  // memberid 세션 속성키이름에 Object타입으로 업캐스팅한 세션값을 저장
  session.setAttribute("addr", "서울시 종로구");
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>세션에 정보를 저장했습니다.</h3>
  </body>
</html>