<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<h2>1부터 100까지 누적합</h2>
<%
//이 영역을 jsp스크립트 요소에서 스크립트 릿이라고 한다. 자바 문법을 따라간다.
int sum = 0;

for(int i=1;i<=100;i++){
	sum += i;
}
%>
<h4>1부터 100까지의 누적합은 <%=sum%> 입니다.</h4>
</body>
</html>