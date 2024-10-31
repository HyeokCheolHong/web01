<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>name파라미터값이 null이어서 발생하는 오류</title>
  <body>
    name 파라미터 값 : <%=request.getPrameter("name").toUpperCase() %>
    <%-- name 파라미터 값이 전달되지 않아서 null인 경우는 톰켓 WAS서버에서
    기본으로 제공하는 NullPointerException 오류가 발생한다.
    웹브라우저 결과창에서 이런 오류가 뜨면 사용자 입장에서는 사이트에 대한 신뢰도가 떨어진다 --%>
  </body>
</html>
