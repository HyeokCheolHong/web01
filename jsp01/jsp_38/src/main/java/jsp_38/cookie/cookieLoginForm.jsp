<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>쿠키 로그인 폼</h3>
    <form action="<%=request.getContextPath()%>/cookie/cookieLoginOK.jsp" method="post" onsubmit="return login_check();">
      <label for="id">아이디</label>
        <input type="text" name="id" id="id" size="16" value=""/><hr/>

      <label for="password">비밀번호</label>
        <input type="password" name="password" id="password" size="16" value=""/><hr/>

      <input type="submit" value="로그인"/>
      <input type="reset" value="초기화"/>

    </form>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script>
      function login_chekc() {
        if($.trim($('#id').val()) == '') {
          alert('아이디를 입력하세요!');
          $('#id').val("").focus();

          return false;
        }

        if($.trim($('#password').val().length == 0) {
          alert('비밀번호를 입력하세요.');
          $('#password').val("").focus();

          return false;
        })
      }
    </script>
  </body>
</html>