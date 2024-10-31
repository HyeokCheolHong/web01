<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page errorPage="/error/viewErrorMessage.jsp" %>
<%-- errorPage 속성으로 에러 페이지를 지정 --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>errorPage 속성에 대한 실습</title>
  <body>
    name 파라미터 값 : <%=request.getParameter("name").toUpperCase() %>
  </body>
</html>
