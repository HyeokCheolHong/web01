<%@ page contentType="text/html; charset=UTF-8" %>
<%-- %@를 디렉티브 즉 지지자이다. 어떤페이지에 대한 정의문을 내릴 수 있다 --%>
<%-- contentType="text/html; charset=UTF-8" 속성값은 브라우저에 출력되는 문자와 태그, 언어코딩 타입을 설정 --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>오늘 날짜와 시간을 출력하는 첫번째 jsp파일</title>
  <body>
    <!-- jsp에서 java code를 실행할 때, out.print()를 이용 -->
    <h3>현재 날짜와 시간은 <%=new java.util.Date() %></h3>
    <%-- %=는 jsp의 스크립트 요소중 표현식이라고 한다. 출력용도로 사용된다 --%>
  </body>
</html>
