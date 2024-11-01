<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
</head>
<body>
  <form action="view.jsp">
    <%-- method 속성을 생략하면 기본값은 get방식이다. 이 방식은 브라우저 주소창 view.jsp?code= 값 형태로 서버로 값이 전달된다. --%>
    보고 싶은 페이지 선택 : 
    <select name="code">
     <option value="A">A 페이지</option>
     <option value="B">B 페이지</option>
     <option value="C">C 페이지</option>
    </select>
    <%-- code 네임피라미터 이름에 value속성값을 담아서 서버로 전달한다. --%>
    <hr/>
    <input type="submit" value="이동" />
  </form>
</body>
</html>