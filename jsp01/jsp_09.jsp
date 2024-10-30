<%@ page contentType="text/html; charset=UTF-8" %>
<%!
  public int multiply(int a, int b) {
    return a * b;
  }

  public int subtract(int a, int b) {
    int c = a - b;
    return c;
  }
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h2>스크립트 릿에서 선언부 사용하기</h2>
    <%
      int value01 = 10;
      int value02 = 13;

      int mulResult = multiply(value01, value02);
      int subResult = subtract(value01, value02);
    %>

    <h4><%=value01%> * <%=value02%> = <%=mulResult%></h4><hr/>
    <h4><%=value01%> - <%=value02%> = <%=subResult%></h4><hr/>
  </body>
</html>
