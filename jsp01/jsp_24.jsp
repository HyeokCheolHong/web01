<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>setAttribute()로 저장된 속성키이름과 값 읽어오기</h3>
    <%
      Enumeration<String> attrEnum = application.getAttributeNames();
      // 속성 키이름 목록을 구함
      while(attrEnum.hasMoreElements()) {
        String name = attrEnum.nextElement();
        // 속성 키 이름을 구함
        Object value = application.getAttribute(name);
        // 속성 키이름에 대한 값을 Object타입으로 구함

        out.println("속성키이름: <strong>"+name+"</strong>, 값: <strong>"+value+"</strong><hr/>");
      }
    %>
  </body>
</html>
