<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3>서버 정보</h3>
 서버 정보 : <strong style="font-size:20px; color:red;"><%=application.getServerInfo()%></strong>
 <hr/>
 서블릿 메이저 버전 : <strong style="color:gold;font-size:20px;"><%=application.getMajorVersion()%>
 </strong><hr/>
 서블릿 마이너 버전 :<b style="color:orange; font-size:20px;"><%=application.getMinorVersion()%></b>
  <%-- 메이저 버전이 4, 마이너 버전이 0이면 결국 서블릿 버전은 4.0이 된다.--%>
</body>
</html>