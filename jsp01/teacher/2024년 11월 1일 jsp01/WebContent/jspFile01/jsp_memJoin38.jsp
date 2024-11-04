<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력폼 </title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<%-- jQuery CDN방식으로 라이브러리 읽어오기 --%>
<script type="text/javascript" src="../js/join.js"></script>
<%--join.js는 회원가입폼 자바스크립트와jQuery를 활용한 유효성 검증(Validate) 소스 --%>
</head>
<body>
<h3>jsp:useBean 액션태그 실습을 위한 회원가입폼</h3>
<form method="post" action="mem_JoinOk.jsp" onsubmit="return join_check();">
 <label for="id">회원 아이디</label>
 <input type="text" id="id" name="id" size="14" /><br/><br/>
 <label for="password">비밀번호</label>
 <input type="password" id="password" name="password" size="14" /><br/><br/>
 <label for="password02">비밀번호 확인</label>
 <input type="password" id="password02" name="password02" size="14" /><br/><br/>
 <label for="name">회원이름</label>
 <input type="text" id="name" name="name" size="10" /><br/><br/>
 <label for="phone">휴대폰 번호</label>
 <input type="tel" id="phone" name="phone" size="16" /><br/><br/>
 <label for="email">이메일</label>
 <input type="email" id="email" name="email" size="20" />
 <hr/>
 
 <input type="submit" value="가입" />
 <input type="reset" value="취소" onclick="$('#id').focus();" />
 
</form>
</body>
</html>