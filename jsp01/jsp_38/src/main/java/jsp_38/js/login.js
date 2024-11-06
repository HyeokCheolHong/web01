// login.js => 세션 로그인 유효성 검증

function login_check() {
  let id = jQuery.trim($("#login_id").val());
  // jQuery 대신 $를 사용해도 된다.
  if(id.length == 0) {
    alert("로그인 아이디를 입력하세요!");
    $("#login_id").val("").focus();
    // 아이디 입력필드 초기화(val(""))하고 포커스 이동(focus())
    return false;
  }

  if($.trim($('#login_pwd').val()) == "") {
    alert("비밀번호를 입력하세요!");
    $("#login_pwd").val("").focus();
    // 비밀번호 입력필드 초기화(val(""))하고 포커스 이동(focus())
    return false;
  }
}