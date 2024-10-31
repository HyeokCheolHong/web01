<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page buffer="8kb" %>
<%@ page errorPage="/error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>예외 오류가 발생하기 전 버퍼가 플러시 될 가능성이 있다면 버퍼 크기를 늘려서 에러가 발생하기 전에 버퍼를 플러시 되지 않도록 해야한다.</h3>
    <%
      for(int i=1; i<300; i++) {
        out.println(i);
      }
    %>
    <%=10/0%>
    <%-- 정수 숫자를 0으로 나누면 예외 에러 발생 --%>
  </body>
</html>
