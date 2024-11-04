<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isErrorPage="true" %>
<%-- isErrorPage="true"로 설정하면 해당 jsp페이지는 에러 페이지가 된다. 에러 페이지가 디면 jsp exception기본객체를
사용해서 예외 에러 처리를 할수 있다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생</title>
</head>
<body>
요청 처리 과정에서 에러가 발생했습니다.<br/>
빠른 시간내에 문제을 해결하도록 하겠습니다.
<hr/>
에러 타입:<%=exception.getClass().getName()%><hr/>
에러 메시지:<%=exception.getMessage()%><hr/>
</body>
</html>