<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="util.Cookies"%>
<%
  response.addCookie(Cookies.createCookie("AUTH", "", "/", 0));
  // 쿠키 유효시간을 0으로 설정해서 로그아웃 처리
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쿠키 로그아웃</title>
    <style>
      h4.logout{
        color: blue;
        background-color: orange;
        width: 150px;
        margin-left:auto;
        margin-right:auto;
        padding: 5px;
        border: 1px solid red;
        border-radius: 14px;
      }
    </style>
  </head>
  <body>
    <h4 class="logout">쿠키 로그아웃 되었습니다!</h4>
  </body>
</html>