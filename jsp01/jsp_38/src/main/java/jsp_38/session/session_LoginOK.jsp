<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String id = request.getParameter("login_id");
  String pwd = request.getParameter("login_pwd");

  if(id.equals(pwd)){
    session.setAttribute("id", id);
    // 세션 id키이름에 아이디를 저장
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <% 
      out.println("<h3>세션 로그인에 성공했습니다.</h3>");
      } else {
        out.println("<script>");
        out.println("alert('로그인에 실패했습니다!');");
        out.println("history.go(-1);");
        // 뒤로 한칸이동. 즉 이전주소로 이동 back()기능과 같다
        out.println("</script>");

      }
    %>
  </body>
</html>