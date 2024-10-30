<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <%
      int sum = 0;
      for (int i = 1; i <= 10; i++) {
        sum += i;
      }
    %>
    <h3>1부터 10까지의 누적합은 <%=sum%></h3>
    

    <hr/> 

    <%
      sum = 0;
      for (int i = 1; i <= 20; i++) {
        sum += i;
      }
    %>
  </body>
</html>
