<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3>jsp 내장객체중에서 request를 활용한 클라이언트와 서버 정보를 구하기</h3>
 요청 프로토콜 : <strong><%=request.getProtocol()%></strong> <hr/>
 전송 방식 : <b><%=request.getMethod()%></b> <hr/>
 요청 URI : <B><%=request.getRequestURI()%></B><hr/>
 컨텍스트 패스경로 : <strong><%=request.getContextPath()%></strong> <HR/>
 서버이름 : <strong><%=request.getServerName()%></strong> <hr/>
 서버 포트번호 : <b><%=request.getServerPort()%></b>
 <HR/>
</body>
</html>