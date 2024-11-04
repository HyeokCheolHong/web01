/**
 * join.js => jsp_memJoin38.jsp 유효성 검증 소스
 */
 
 function join_check(){
 
    if($.trim($('#id').val()) == ''){
       alert('아이디를 입력하세요!');
       $('#id').val('').focus();//아이디 입력필드 초기화하고 포커스 이동
       return false;
     }
     
     $pwd01 = $.trim($('#password').val()); //비번
     $pwd02 = $.trim($('#password02').val()); //비번 확인
     
     if($pwd01.length == 0){
       alert('비밀번호를 입력하세요!');
       $('#password').val('').focus();
       return false;
     }
     
     if($pwd02 == ''){
       alert('비밀번호확인을 입력하세요!');
       $('#password02').val('').focus();
       return false;
     }
     
     if($pwd01 != $pwd02){
       alert('비밀번호가 일치하지 않습니다!');
       $('#password').val('');//비밀번호 입력필드 초기화
       $('#password02').val('');//비밀번호확인 입력필드 초기화
       $('#password').focus();//비밀번호 입력필드로 포커스 이동
       return false;
      }
      
      if($.trim($('#name').val()) == ''){
        alert('회원이름을 입력하세요!');
        $('#name').val('').focus(); 
        return false;
      }
      
      if($.trim($('#phone').val()).length == 0){
        alert('폰번호를 입력하세요!');
        $('#phone').val('').focus();
        return false;
      }    
      
      if($.trim($('#email').val()) == '') {
        alert('이메일을 입력하세요!');
        $('#email').val('').focus();
        return false;
      }       
 }