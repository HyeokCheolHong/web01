<%@ page contentType="text/html; charset=UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");//post방식으로 전송되는 한글을 안깨지게 한다.
    
    String writer = request.getParameter("writer");//글쓴이
    String title = request.getParameter("title");//글제목
    String content = request.getParameter("content");//글내요
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
글쓴이: <%=writer%><br/>
글제목: <%=title%><br/>
글내용: <%=content%><hr/>
<input type="button" value="글쓰기" onclick="location='jsp_form12.jsp';" />
</body>
</html>