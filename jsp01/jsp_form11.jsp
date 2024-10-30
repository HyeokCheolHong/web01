<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
    
  <body>
    <h3> jsp 내장객체 request로 사용자 폼 입력필드 값 가져오기</h3>
    <form method="post" action="request_ok.jsp">
      <label for="name2">이름:</label>
      <input type="text" name="name" id="name2" size="14" /><br/><br/>

      <label for="addr">주소:</label>
      <input type="text" name="address" id="addr" size="36" /><br/><br/>

      <label for="animal">좋아하는 동물:</label>
      <input type="checkbox" name="pet" id="animal" value="cat" />고양이
      <input type="checkbox" name="pet" id="animal" value="dog" />강아지
      <input type="checkbox" name="pet" id="animal" value="pig" />돼지
      <hr/>

      <input type="submit" value="전송" />
      <input type="reset" value="취소" />
      
  </body>
</html>
