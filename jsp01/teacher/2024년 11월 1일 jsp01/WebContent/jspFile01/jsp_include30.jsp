<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3>jsp:param 태그 실습</h3>
 <table width="100%" border="1">
  <tr>
   <th>제품번호</th> <th>1024</th>
  </tr>
  <tr>
   <th>제품가격</th> <th>10,000원</th>
  </tr>
 </table>
 
 <jsp:include page="/jspFile01/include/infoSub.jsp">
  <jsp:param value="A" name="type"/>
 </jsp:include>
 <%--
    type피라미터 이름에 value속성값 A담아서 전달
  --%>
</body>
</html>