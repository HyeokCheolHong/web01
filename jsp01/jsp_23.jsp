<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String name = request.getParameter("name");
    String value = request.getParameter("value");
    /*
        브라우저 주소창에서 jsp_23.jsp?name=값&value=값 형태의 주소창에 노출되는 get 방식으로 &기호로 구분해서 2개의 네임 파라미터 이름인
        name, value 에 각각 값을 담아서 전달한다. 이런 방식을 쿼리 스트링 방식이라고 한다.
    */
    if (name != null && value != null) {
        application.setAttribute(name, value); // 문자열 속성 키이름에 대한 Object타입으로 업캐스팅한 값을 저장
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
  <h3>setAttribute()메서드에 대한 실습</h3>
  <% 
    if (name != null && value != null) { %>
      application 객체의 속성 설정 : <%=name%> = <%=value%>
      <%
      } else { 
      %>
      application 기본객체 속성 설정 안함
      <%
      }
      %>
</body>
</html>