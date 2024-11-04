<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합 구하기 </title>
</head>
<body>
<%
  int sum = 0;
  for(int i=1;i<=10;i++){
	  sum += i;
  }
%>
<h3>1부터 10까지 누적합은 <%=sum%> 입니다.</h3>
<hr/>

<%
 sum = 0;
 for(int i=11;i<=20;i++){
	 sum = sum + i;
 }
 
 out.println("<h3>11부터 20까지 누적합은 "+sum+"입니다.</h3>");
%>
</body>
</html>
