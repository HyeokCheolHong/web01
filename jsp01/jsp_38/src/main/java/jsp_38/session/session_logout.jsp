<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  session.invalidate();
  // 세션 만료(로그아웃)
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
      h3.logout_color { 
        color:gold;
        background-color:gray;
        width:300px;
        text-align: center;
        padding: 10px;
        border-radius: 13px;
        box-shadow: 10px 10px 10px red;
      }
    </style>
  </head>
  <body>
    <h3 class="logout_color">로그아웃</h3>
  </body>
</html>