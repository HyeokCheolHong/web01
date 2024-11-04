/* 
 * join.js => jsp_memJoin38.jsp 유효성 검증 소스
*/

function join_check() {
  if($.trim($('#id').val()) == '') {
    alert('아이디를 입력하세요!');
    $('#id').val('').focus();
    return false;
  }

  $pwd01 = $.trim($('#password').val());
  $pwd02 = $.trim($('#password02').val());

  if($pwd01.length == 0) {
    alert('비밀번호를 입력하세요!');
    $('#password').val('').focus();
    return false;
  }

  if($pwd02.length == 0) {
    alert('비밀번호를 한번 더 입력하세요!');
    $('#password02').val('').focus();
    return false;
  }

  if($pwd01!= $pwd02) {
    alert('비밀번호가 일치하지 않습니다!');
    $('#password').val('');
    $('#password02').val('');
    $('#password').val('').focus();
    return false;
  }

  if($.trim($('#name').val()) == '') {
    alert("회원 이름을 입력하세요!");
    $('#name').val('').focus();
    return false;
  }

  if($.trim($('#phone').val()) == '') {
    alert("전화번호를 입력하세요!");
    $('#phone').val('').focus();
    return false;
  }

  if($.trim($('#email').val()) == '') {
    alert("이메일을 입력하세요!");
    $('#email').val('').focus();
    return false;
  }

  return true;
}