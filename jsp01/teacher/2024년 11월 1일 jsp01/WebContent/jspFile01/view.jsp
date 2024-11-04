<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String code = request.getParameter("code");
    String viewPageURL = null;
    
    switch(code){
      case "A": viewPageURL = "a.jsp"; break;
      case "B": viewPageURL = "b.jsp"; break;
      default : viewPageURL = "c.jsp"; break;
    }
%>
<jsp:forward page="<%=viewPageURL%>" />