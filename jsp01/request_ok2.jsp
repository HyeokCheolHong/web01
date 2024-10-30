<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%-- java.util 패키지 하위의 모든 API(*)를 읽어들임 --%>
<%
  request.setCharacterEncoding("UTF-8");
  // 폼태그에서 method="post"방식으로 전송되는 한글 데이터를 서버에서 받을때 깨짐 방지

  String writer = request.getParameter("writer");
  String title = request.getParameter("title");
  String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>JSP 내장객체 request로 사용자의 입력필드 값 가져오기</h3><br/>
    <p>작성자: <%=writer %></p><br/>
    <p>제목: <%=title %></p><br/>
    <p>내용: <%=content %></p><hr/>
    <input type="button" value="글쓰기" onclick="location='jsp_form12.jsp';"/>
  </body>
</html>
