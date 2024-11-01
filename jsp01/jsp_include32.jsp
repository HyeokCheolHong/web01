<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>jsp include 디렉티브 file 속성</h3>
    <%-- jsp include 디렉티브 file속성을 사용하는 이유
          1. 모든 jsp페이지에서 사용하는 공통변수 지정 용도
          2. 저작권표시와 같이 모든 페이지에서 중복되는 간단한 문장 지정 용도 --%>
    <%
      int number = 100;
    %>

    <%@ include file="/include/includee.jspf" %>
    <%-- 포함되어질 파일의 확장자가 .jspf로 하면 소스코드 조각파일이다 --%>

    공통 변수 dataFolder : <%=dataFolder%><hr/>
  </body>
</html>