<%@ page contentType="text/html; charset=UTF-8" %>
body_sub에서 name 피라미터 값: <%=request.getParameter("name")%>
<br/>
name 피라미터 값 목록:
<ul>
 <%
   String[] names = request.getParameterValues("name");//name피라미터 이름에 저장된 복수개의 값을 문자열 배열로
   //받아온다.
   
   for(String name:names){//향상된 확장 for반복문
 %>
  <li><%=name%></li>
 <% } %>
 <%--
   <jsp:param> 액션 태그는 이미 동일한 이름의 피라미터 존재하면 기존 피라미터 값을 유지하면서 새로운 값을 추가한다.
   <jsp:param> 액션 태그로 추가한 피라미터가 기존 피라미터 보다 우선한다.
   <jsp:param> 액션 태그로 추가한 피라미터 값은 
    request.setCharacterEncoding("UTF-8"); 코드를 생략하면 전달되어진 한글이 깨진다. 하지만 주소창에 노출되는
   get방식으로 전달되는 *.jsp?name=한글데이터에는 한글 깨지는 부분이 발생하지 않는다.즉 get으로 전달되는 한글데이터에는 영향을 못미친다.
  --%>
</ul>