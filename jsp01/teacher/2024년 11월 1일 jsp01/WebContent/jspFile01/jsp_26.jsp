<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page errorPage="/jspFile01/error/viewErrorMessage.jsp" %>
<%-- errorPage속성으로 에러 페이지를 지정 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage속성에 대한 실습 </title>
</head>
<body>
name 피라미터 값 : <%=request.getParameter("name").toUpperCase()%>
</body>
</html>