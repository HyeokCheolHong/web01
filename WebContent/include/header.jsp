<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>WelCome to Fun Web</title>
  <link rel="stylesheet" type="text/css" href="../css3/default.css" />
  <link rel="stylesheet" type="text/css" href="../css3/welcome.css" />
  <link rel="stylesheet" type="text/css" href="../css3/notice.css" />
  <link rel="stylesheet" type="text/css" href="../css3/join.css" />
</head>
<body>
  <div id="wrap">
    <%-- 상단영역 --%>
    <header> <%-- header태그는 html5에서 추가된 것으로 상단 영역을 지정할 때 사용한다.--%>
      <div id="login"><a href="#">login</a> | <a href="../member/join.jsp">Join</a></div>
      
      <div class="clear"></div>
      
      <%--회사 로고 --%>
      <div id="logo">
        <a href="../JSP/index.jsp"><img src="../images/logo.gif" width="265" height="62"
      alt="Fun Web" /></a>
      </div>
      
      <%--상단 메뉴 --%>
      <nav> <%-- nav 태그도 html5에서 추가된 것으로 메뉴 구성할 때 사용한다. --%>
        <ul> <%-- 웹표준에서 ul li태그는 메뉴 구성할 때 사용 --%>
          <li><a href="../JSP/index.jsp">HOME</a></li>
          <li><a href="../company/welcome.jsp">COMPANY</a></li>
          <li><a href="#">SOLUTIONS</a></li>
          <li><a href="../center/notice.jsp">CUSTOMER CENTER</a></li>
          <li><a href="#">CONTACT US</a></li>
        </ul>
      </nav>
    </header>

  <div class="clear"></div>
</body>