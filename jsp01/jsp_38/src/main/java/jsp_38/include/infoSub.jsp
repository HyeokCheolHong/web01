<%@ page contentType="text/html; charset=UTF-8" %>
<%
  String type = request.getParameter("type");

  if(type==null) {
    return;
    // 종료
  }
  out.println("<hr/>");
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <table width="100%" border="1">
      <tr>
        <th>타입</th>
        <td>
          <strong><%= type %></strong>
        </td>
      </tr>

      <tr>
        <th>특징</th>
        <td>
          <%
            if(type.equals("A")) {
              %>
          <span style="font-weight:bolder; font-size:20px;">강한 내구성</span>
          <%
            }else if(type.equals("B")) {
          %>
          <span style="font-weight:bolder; font-size:20px;">뛰어난 대처 능력</span>
          <%
            }
          %>
        </td>
      </tr>
    </tbale>
  </body>
</html>
