<%@ page contentType="text/html; charset=UTF-8" %>
<%!
 //선언문 =>변수와 메서드 선언용도
 public int add(int a,int b){
	 int result = a + b;
	 return result;
 }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h2>선언문을 사용한 두수의 합</h2>
 <h4>100+200 = <%=add(100, 200)%></h4>
</body>
</html>