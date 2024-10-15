<%@ page contentType="text/html; charset=UTF-8"%>
<%--jsp 주석문 기호 --%>
<%--%@는 jsp문법에서 지시자 즉 디렉티브라고 한다 어떤 정의문을 내리는 곳을 의미한다 --%>
<%--contentType="text/html; charset=UTF-8" 속성은 웹브라우저에 출력되는 문자와 태그, 언어코딩 타입을 설정한다.--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>WelCome to Fun Web</title>
	<%-- <link rel="stylesheet" type="text/css" href="./css3/default.css"> --%>
  <link rel="stylesheet" type="text/css" href="../css3/default.css" />
</head>
<body>
	<div id="wrap">
		<%--상단영역 --%>
		<header>

      <div id="login">
        <a href="#"> login</a> | <a href="#">Join</a>
      </div>
      <div class="clear"></div>

      <%--header태그는 html5에서 추가된 것으로 상단 영역을 지정할 때 사용한다. --%>
      <div id="logo">
        <a href="index.jsp">
          <img alt="Fun Web" src="./images/logo.gif" width="265" height="62">
        </a>
      </div>
      

      
      <%-- 상단메뉴 --%>
      <nav> <%-- nav태그는 메뉴 구성할때 사용 --%>
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="#">Company</a></li>
          <li><a href="#">SOLUTIONS</a></li>
          <li><a href="#">CUSTOMER CENTER</a></li>
          <li><a href="#">CONTACT US</a></li>
        </ul>
      </nav>
		</header>

    <div class="clear"></div>

    <%-- 메인 이미지 --%>
    <div id="main_image"></div>

    <%-- 메인 본문 --%>
    <article id="main_cont"> <%-- article 태그는 본문 내용을 구성할때 사용 --%> 
      <div id="solution">
        <div id="hosting">
          <h3>Web Hosting solution</h3>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
        </div>

        <div id="security">
          <h3>Web Hosting Solution</h3>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
        </div>

        <div id="payment">
          <h3>Web Payment Solution</h3>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
          <p>Lorem.. Ut vel est</p>
        </div>
      </div>

      <div class="clear"></div>

      <div id="sec_news">
        <h3><span class="orange">Security</span> News</h3>
        <dl>
          <dt><a href="#">Vivamus id ligula...</a></dt>
          <dd><a href="#">Porin quis ante...</a></dd>
          <dt><a href="#">Vivamus id ligula...</a></dt>
          <dd><a href="#">Porin quis ante...</a></dd>
        </dl>
      </div>

      <div id="news_notice">
        <h3 class="brown">News &amp; Notice</h3>
        <%-- &amp; 특수문자는 &로 표시 --%>
        <table>
          <tr>
            <td class="contxt"><a href="#">Vivamus...</a></td>
            <td><a href="#">2024.10.15</a></td>
          </tr>
          <tr>
            <td class="contxt"><a href="#">Vivamus...</a></td>
            <td><a href="#">2024.10.15</a></td>
          </tr>
          <tr>
            <td class="contxt"><a href="#">Vivamus...</a></td>
            <td><a href="#">2024.10.15</a></td>
          </tr>
          <tr>
            <td class="contxt"><a href="#">Vivamus...</a></td>
            <td><a href="#">2024.10.15</a></td>
          </tr>
        </table>
      </div>
    </article>
    <%-- 하단 영역 --%>
    <footer> <%-- footer 태그는 하단 영역을 지정할때 사용 --%>
    </footer>
    
	</div>
</body>
</html>