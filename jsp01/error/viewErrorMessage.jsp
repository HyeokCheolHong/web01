<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isErrorPage="true" %>
<%-- isErrorPage="true" 설정시 해당 jsp페이지는 errorPage가 된다
errorPage가 되면 jsp Exception 기본객체를 사용해서 예외 에러 처리가 가능함 --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    요청 처리 과정에서 에러가 발생했습니다.<br/>
    빠른 시간내에 문제를 해결하도록 하겠습니다.
    <hr/>
    에러 타입: <%=exception.getClass().getName() %><hr/>
    에러 메시지 : <%=exception.getMessage()%><hr/>
  </body>
</html>
