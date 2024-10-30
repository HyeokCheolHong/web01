<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page buffer="1kb" autoFlush="false" %>
<%-- 
  buffer속성은 버퍼의 크기를 지정한다.
  버퍼속성을 지정하지 않으면 기본값은 8kb이다
  autoFlush 속성은 
    false로 지정하면, jsp engine이 jsp 페이지를 flush(출력)할 때, 
    jsp engine이 jsp 페이지의 출력 내용을 flush(출력)한 후, 
    jsp engine이 jsp 페이지를 종료(즉 Error가 발생)
--%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>autoFlush 속성값을 false로 한 예제</h3>
    <%
      for (int i = 1; i <= 1000; i++) {
        out.println("1234 &nbsp;&nbsp;");
      }
    %>
  </body>
</html>
