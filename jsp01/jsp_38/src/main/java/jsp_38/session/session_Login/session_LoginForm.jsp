<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>세션 로그인 폼 연습</title>
    <script src="../js/login.js/jquery-3.7.1.min.js" ></script>
    <%-- 로컬 컴으로 부터 jQuery라이브러리 읽어오기 --%>
    <script src="../js/login.js"></script>
  </head>
  <body>
    <h3>세션 로그인 폼</h3>
    <form action="session_LoginOK.jsp" method="post" onsubmit="return login_check();">
      <table border="1">
        <tr>
          <th>아이디</th>
          <td><input type="text" name="login_id" id="login_id" size="14" /></td>
          <th rowspan="2">
            <%-- rowspan 속성을 사용하여 2개의 행을 합친다 --%>
            <input type="submit" value="로그인"/>
          </th>
        </tr>

        <tr>
          <th>비밀번호</th>
          <td><input type="password" name="login_pwd" id="login_pwd" size="14"/></td>
        </tr>
      </table>
    </form>
  </body>
</html>