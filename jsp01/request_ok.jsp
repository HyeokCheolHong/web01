<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%-- java.util 패키지 하위의 모든 API(*)를 읽어들임 --%>
<%
  request.setCharacterEncoding("UTF-8");
  // 폼태그에서 method="post"방식으로 전송되는 한글 데이터를 서버에서 받을때 깨짐 방지
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>request.getParameter()메서드 실습 예</h3>
    name 파라미터 값 : <%=request.getParameter("name")%><hr/>
    <%-- name 파라미터 이름에 저장되어 져서 전달된 이름을 가져옴 --%>
    address 파라미터 값 : <%=request.getParameter("address")%><hr/>

    <h3>checkbox는 복수개를 선택가능하기 때문에 배열로 받아온다.</h3>
    <%
      String[] values = request.getParameterValues("pet");
      // checkbox 복수개의 value 속성값을 배열로 받아온다.

      if(values != null && values.length > 0) {
        for(int i = 0; i < values.length; i++) {
    %>  
          <%=values[i]%> &nbsp; &nbsp;
    <%  } 
      } else {
        out.println("좋아하는 동물이 없습니다.");
      }

    %>
    <%-- <button type="button" onClick="window.location.href='jsp_form11.jsp";>입력</button> --%>
    <%-- 입력버튼 클릭시 (자바스크립트 location) --%>
    <hr/>
    <h3>request.getParameterNames()메서드로 네임파라미터 이름 구하기</h3>
    <%
      Enumeration paramEnum = request.getParameterNames();
      // 파라미터 이름 목록을 Enumeration 타입으로 구함
      while(paramEnum.hasMoreElements()) {
        String name = (String)paramEnum.nextElement();
        // 파라미터 이름을 구함
        out.println(name+"&nbsp;&nbsp");
      }
      out.println("<hr/>"); 
    %>
  </body>
</html>
