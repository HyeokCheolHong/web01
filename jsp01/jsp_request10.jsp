<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>JSP 내장객체에서 request를 활용한 클라이언트와 서버 정보를 구하기</h3>
    요청 프로토콜 : <strong><%=request.getProtocol() %></strong><hr/>
    전송 방식 : <strong><%=request.getMethod() %></strong> <hr/>
    요청 URL : <strong><%=request.getRequestURL() %></strong> <hr/>
    컨텍스트 패스경로 : <strong><%=request.getContextPath() %></strong> <hr/>
    서버 이름 : <strong><%=request.getServerName() %></strong> <hr/>
    서버 포트번호 : <strong><%=request.getServerPort() %></strong> <hr/>
  </body>
</html>
