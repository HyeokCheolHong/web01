<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="util.Cookies" %>
<%
  request.setCharacterEncoding("UTF-8");

  String id = request.getParameter("id");
  String password = request.getParameter("password");

  if(id.equals(password)){
    response.addCookie(Cookies.createCookie("AUTH", id, "/",-1));
    // 로그인 성송시 쿠키 생성
  }
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
  
    <script>
      alert('쿠키 로그인 실패');
      history.back();
      // 뒤로 한칸 이동
      // 자바스크립트 history객체는 이전 주소 정보를 담고있다.
      // 이 객체 하위의 back()메소드는 이전 주소로 이동한다.
      // go(-1) 메서드와 기능이 같다.
    </script>
  </body>
</html>