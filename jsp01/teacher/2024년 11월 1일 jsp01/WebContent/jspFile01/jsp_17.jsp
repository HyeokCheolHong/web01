<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page buffer="1kb" autoFlush="true" %>
<%--
    autoFlush속성값을 true로 지정하면 버퍼가 다 차면 자동으로 비워서(플러시:flush) 데이터를 브라우저로 전송하고 다시 버퍼를 채운다.
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3>autoFlush 속성값 true 예제</h3>
 <%
    for(int i=1;i<=1000;i++){
    	out.println("12345&nbsp;&nbsp;");
    }
 %>
</body>
</html>