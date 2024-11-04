<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3>jsp:forward 액션태그에 관한 실습</h3>
 <%-- jsp:forward가 되면 브라우저 주소창에서 실행되는 주소값과 실제 본문내용에 보이는 것이 다르다.숨기는 보안효과가 발생한다.
결국 포워딩이 되면 웹브라우저 주소창에는 jsp_forward34.jsp가 실행이 되면 본문 내용은 to.jsp 파일내용이 보인다. --%>
 <jsp:forward page="/jspFile01/to/to.jsp" />
</body>
</html>