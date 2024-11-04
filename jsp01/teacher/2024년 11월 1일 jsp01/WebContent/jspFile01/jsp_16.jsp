<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page buffer="1kb" autoFlush="false" %>
<%--
  buffer속성은 버퍼의 크기를 지정한다. 버퍼속성을 지정하지 않으면 기본값은 8kb이다. autoFlush속성은 버퍼가 다 찬 경우 어떻게 처리할 지
  를 설정할 수 있다.  속성을 값을 false로 지정하면 버퍼가 다 차면 오류를 발생한다.
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<h3>autoFlush 속성값을 false로 한 예제</h3>
<%
   for(int i=1;i<=1000;i++){
	   out.println("1234 &nbsp;&nbsp;");
   }
%>
</body>
</html>