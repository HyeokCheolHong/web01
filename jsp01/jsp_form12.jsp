<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <%-- CDN방식으로 jQuery 라이브러리 읽어오기 --%>
  <body>
    <h3>게시판 입력폼 유효성 검증(Validata)</h3>
    <form method="post" action="request_ok2.jsp" onsubmit="return check();">
      <label for="writer">글쓴이</label>
      <input type="text" id="writer" name="writer" size="14"><br><br>

      <label for="title">글제목</label>
      <input type="text" id="title" name="title" size="36"><br><br>

      <label for="content">글내용</label>
      <textarea id="content" name="content" rows="10" cols="35"></textarea>
      <hr/>

      <input type="submit" value="전송">
      <input type="reset" value="취소">
    </form>
    <script>
      function check() {
        let name = $.trim($("#writer").val());
        // trim()함수는 양쪽 공백을 제거, val()함수는 입력필드 입력값을 가져옴
        if(name.length == 0) {
          alert('글쓴이를 입력하세요!');
          $('#writer').val('');
          // 입력필드 초기화
          $('#writer').focus();
          // 입력필드로 포커스 이동
          return false;
        }

        $title = $.trim($('#title').val());
        if($title == ''){
          alert('글제목을 입력하세요!');
          $('#title').val('').focus();
          // 입력필드 초기화와 포커스 이동을 메서드 체이닝 방법으로 처리
          return false;
        }

        if($.trim($('#content').val()) == '') {
          alert('글내용을 입력하세요!');
          $('#content').val('').focus();
          return false;
        }
      }
    </script>
  </body>
</html>
