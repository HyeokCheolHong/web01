<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
  String id = (String)session.getAttribute("id");
  // 세션 아이디 값을 구함
  boolean result = (id == null)?false:true;
  // 3항 조건연산자 사용
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
      strong.notLogin{
        color:red;
        background-color:gold;
        padding:5px;
      }
    </style>
  </head>
  <body>
    <h3>로그인 여부 검사</h3>
    <%
      if(result == true){
    %>
      아이디 <strong>"<%=id%>"</strong>님으로 로그인 된 상태

    <% 
      } else {
    %>
      <strong class="notLogin">로그인 하지 않은 상태</strong>
    <% 
      }
    %>

  </body>
</html>