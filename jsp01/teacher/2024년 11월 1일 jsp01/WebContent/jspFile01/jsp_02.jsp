<%@ page contentType="text/html; charset=UTF-8" %>
<%
 //이 영역을 jsp 스크립트 요소에서 스크립트 릿이라고 한다. 주로 자바 문법을 따라 간다.
 
 String bookTitle="jsp 웹 프로그래밍";
 String author = "홍길동";
%>
<h2>저자명 : <%=author %></h2>
<h3>책이름 : <%=bookTitle%></h3>