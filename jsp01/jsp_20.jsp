<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>web.xml 에 설정된 초기화 파라미터 값 읽어오기</h3>
    <h4>초기화 파라미터이름과 값 목록:</h4>
    <ul>
      <%
        Enumeration<String> initParamEnum = application.getInitParameterNames();
        // 초기화 파라미터 이름 목록을 반환

        while(initParamEnum.hasMoreElements()) {
          String initParamName = initParamEnum.nextElement();
          // 파라미터 이름을 구함
      %>
        <li><%=initParamName%> : <%=application.getInitParameter(initParamName)%></li>
        <%-- getInitParameter(String name)메서드는 
        파라미터 이름에 대한 초기화 파라미터 값을 구한다
        해당 값이 없다면 null을 반환 --%>
      <% 
        } 
      %>
  </body>
</html>
