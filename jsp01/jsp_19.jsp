<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title></title>
</head>
<body>
   <h4>jsp 스크립트 릿(<% %>)과 html, jsp 스크립트 코드가 섞인 날코드(막코드) 방식인 경우의 가독성 차이점</h4>
   <%-- jsp 스크립트 릿 코드 방식 => 이런 경우는 일반적으로 가독성이 더 좋다고 하는 경우가 많다. --%>
   <%
      int grade = 100;
      
      if(grade >= 90) {
         out.println("<strong>A학점</strong>");
      }else if(grade < 60) {
         out.println("<strong style='color: red;'>과락인 F학점</strong>");
      }
   %>
   
   <hr>
   
   <%-- 날코딩 방식 => 가독성이 안 좋다는 경우가 많다. --%>
   <% grade = 59; %>
   <% if(grade >= 90) { %>
      <strong>A학점</strong>
   <% }else if (grade < 60) { %>
      <strong style="color: red;">과락인 F학점</strong>
   <% } %>
</body>
</html>