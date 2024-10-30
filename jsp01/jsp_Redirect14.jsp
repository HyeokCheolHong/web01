<%@ page contentType="text/html; charset=UTF-8" %>
<%
  String id = request.getParameter("memberId");
  // 이 소스를 실행할 때 브라우저 주소창에 다음과 같이 get방식으로 아이디 값을 전달해야 한다
  // jsp_Redirect14.jspmemberId=아이디가 get방식으로 전달해야 한다.

  if(id != null && id.equals("admin")){
    response.sendRedirect("main.jsp");
  } 
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3 style="color:red;">잘못된 아이디 입니다.</h3>
  </body>
</html>
