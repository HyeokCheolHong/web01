<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="../abc/vo/src/main/java/net/daum/vo/MemberVO" scope="request"/>
  <h4><%=member.getName()%>(<%=member.getId()%>) 회원님.</h4>