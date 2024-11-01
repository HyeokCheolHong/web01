<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h3>jsp:useBean 액션태그를 다루는 예제</h3>
<jsp:useBean id="member" class="../abc/vo/src/main/java/net/daum/vo/MemberVO" scope="request"/>
  
  <%-- 해당 영역은 jsp:useBean 액션태그이다
  id 속성명 member는 MemberVO 빈 클래스의 객체명이다
  class 속성은 빈 클래스 풀 패키지 경로이다.
  scope 속성은 자바 빈 객체를 저장할 영역이다. --%>
 
  <%=
    member.setId("kkkkk56789"); // 아이디 저장
    member.setName("홍길동"); // 이름 저장
  %>
  <jsp:forward page="to/useObject.jsp"/>