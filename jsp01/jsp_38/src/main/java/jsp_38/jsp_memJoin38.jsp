<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 입력폼</title>
  </head>
  <body>
    <h3>jsp:useBean 액션태그 실습을 위한 회원가입폼</h3>
    <form action="/mem_JoinOk.jsp" method="post" onsubmit="return join_check();">
      <label for="id">회원 아이디</label>
      <input type="text" id="id" name="id" value="" size="14" autocomplete="username"/><br/><br/>

      <label for="password">비밀번호</label>
      <input type="password" name="password" id="password" value="" size="14" autocomplete="current-password"/><br/><br/>

      <label for="password02">비밀번호 확인</label>
      <input type="password" name="password02" id="password02" value="" size="14" autocomplete="new-password"/><br/><br/>

      <label for="name">회원이름</label>
      <input type="text" name="name" id="name" value="" size="10"/><br/><br/>

      <label for="phone">휴대폰번호</label>
      <input type="text" name="phone" id="phone" value="" size="10"/><br/><br/>

      <label for="email">이메일</label>
      <input type="email" name="email" id="email" value="" size="20"/><hr/>

      <input type="submit" value="가입"/>
      <input type="reset" value="취소"/>
    </form>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="./js/join.js"></script>
  </body>
</html>