<%@page import="net.daum.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  // post로 전송되는 한글데이터를 안 깨지게 한다.
%>
<jsp:useBean id="member" class="net.daum.vo.MemberVO"/>
<%-- jsp:useBean 액션태그로 MemberVO 빈클래스 객채명 member 생성 --%>
<jsp:setProperty name="member" property="*" />
<%-- 값 저장 액션태그 : 프로퍼티 속성값을 *로 처리하면 한번에 값이 저장됨--%>
<%-- 빈클래스 변수명과 jsp_memJoin38.jsp의 네임파라미터 이름이 같기 때문이다. --%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
  </head>
  <body>
    <h3>회원가입 완료</h3>
    아이디 : <jsp:getProperty name="member" property="id" /><hr/>
    <%-- 값 반환 액션태그--%>
    <%-- 자바코드의 member.getMemId()와 같다 --%>
    비밀번호 : <jsp:getProperty name="member" property="password" /><hr/>
    <%-- name속성명인 member는 jsp:userBean액션태그에서 생성된 MemberVO빈클래스의 객채명인 id속성명이다. --%>
    회원이름 : <jsp:getProperty name="member" property="name"><hr/>
    폰번호:<%=member.getPhone()%><hr/>
    이메일:<% out.println(member.getEmail()+"<hr/>"); %>
    <input type="button" name="" value="가입" onclick="location='jsp_memJoin38.jsp';"/>
  </body>
</html>
