<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3>포워딩 후 getAttribute()메서드로 값 가져오기</h3>
 <%
     Calendar cal = (Calendar)request.getAttribute("time");//문자열 속성키이름에 대한 값을 Object타입으로 구한
     //다음 다운캐스팅해서 저장시킴
     
     out.println("<h4>"+cal.get(Calendar.HOUR_OF_DAY)+"시 "+ cal.get(Calendar.MINUTE)+"분 "
    		 + cal.get(Calendar.SECOND)+"초 입니다.</h4>");
 %>
</body>
</html>