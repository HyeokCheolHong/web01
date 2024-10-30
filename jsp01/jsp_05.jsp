<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%-- 위 속성을 추가하면 웹브라우저 출력결과물 페이지 소스보기에서 첫줄 공백 라인을 제거할 수 있다 --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>현재 날짜와 시간</title>
  <body>
    현재 날짜와 시간값 : <%=new java.util.Date() %>
  </body>
</html>
