<%@ page contentType="text/html; charset=UTF-8" %>
<h3>jsp:useBean 액션태그를 다루는 예제</h3>
<jsp:useBean id="member" class="net.daum.vo.MemberVO" scope="request" />
<%--
  jsp:useBean 액션태그라고 한다. id속성명 member는 MemberVO빈클래스의 객체명이다. class속성은 빈클래스 풀패키지 경로이다.
  scope속성은 자바 빈 객체를 저장할 영역이다.
--%>
<%
  member.setId("kkkkk56789");//아이디 저장
  member.setName("홍길동");
%>
<jsp:forward page="/jspFile01/to/useObject.jsp" />