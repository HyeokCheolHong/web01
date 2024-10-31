<%@ page contentType="text/html; charset=UTF-8" %>
<%
  request.setCharacterEncoding("UTF-8");
  // Post방식으로 전달되어진 한글을 안 깨지게 한다.
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>jsp:include 액션태그</title>
  <body>
    include 되기 전 name 파라미터 값 : <%=request.getParameter("name") %>
    <hr/>
    <jsp:include page="/include/body_sub.jsp" flush="false">
      <jsp:param name="name" value="김연아"/>
    </jsp:include>
    <%-- 
      <jsp:param> 액션 태그로 추가한 파라미터 값은 
      <jsp:include> 액션 태그로 포함하는 페이지인 body_sub.jsp에서만 유효하다
    --%>

    <hr/>
    include 된 후 name 파라미터 값 : <%=request.getParameter("name") %>
  </body>
  </body>
</html>
