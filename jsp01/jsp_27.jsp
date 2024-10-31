<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page buffer="1kb" %>
<%@ page errorPage="/error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>버퍼 크기가 너무 작아서 미리 버퍼가 다 차면 플러시 이후 에러 발생 결과</h3>
    <%
      for(int i=1; i<300; i++) {
        out.println(i);
      }
    %>
    <%=10/0%>
    <%-- 정수 숫자를 0으로 나누면 예외 에러 발생 --%>
  </body>
</html>
