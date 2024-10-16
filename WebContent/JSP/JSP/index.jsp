<%@ page contentType="text/html; charset=UTF-8" %>
<%-- jsp 주석문 기호이다. 웹브라우저 출력 결과물 페이지 소스보기에서 해당 주석문은 보이지 않는다. 그러므로 보안이 좋다.
%@ 는 jsp문법에서 지시자 즉 디렉티브라고 한다. 어떤 정의문을 내리는 곳을 의미한다.  
contentType="text/html; charset=UTF-8" 속성은 웹브라우저에 출력되는 문자와 태그,언어코딩 타입을 설정한다.--%>
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
        <div id="logo"><a href="../JSP/index.jsp"><img src="../images/logo.gif" width="265" height="62"
        alt="Fun Web" /></a></div>
        
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
    
      <%--메인 이미지 --%>
      <div id="main_img">
      <img src="../images/main_img.jpg" width="971" height="282" alt="메인 이미지" /></div>
    
      <%--메인 본문 --%>
      <article id="main_cont"> <%-- article은 html5에서 추가된 것으로 본문 내용을 구성할 때 사용한다. --%> 
        <div id="solution">
        <div id="hosting">
          <h3>Web Hosting Solution</h3>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
        </div>
        
        <div id="security">
          <h3>Web Security Solution</h3>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>    
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
        </div>
        
        <div id="payment">
          <h3>Web Payment Solution</h3>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
          <p>Lorem ...Ut vel est</p>
        </div>
        </div>
        
        <div class="clear"></div>
        
        <div id="sec_news">
        <h3><span class="orange">Security</span> News</h3>
        <dl> <%-- dl태그는 정의 리스트 --%>
          <dt><a href="#">Vivamus id ligula...</a></dt> <%--dt는 제목 --%>
          <dd><a href="#">Proin quis ante...</a></dd> <%--dd는 설명부분 --%>
          <dt><a href="#">Vivamus id ligula...</a></dt>
          <dd><a href="#">Proin quis ante...</a></dd> 
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
    
      <div class="clear"></div>

      <%--하단 영역 --%>
      <footer> <%--footer태그는 html5에서 추가된 것으로 하단 영역을 지정할 때 사용한다. --%>
        <hr/>
        <div id="copy">
          All content Copyright 2024 FunWeb Inc. all right reserved<br/>
          Contact mail : funweb@funwebbiz.com Tel : +82 64 123 4315 Fax : +82 123 4321
        </div>

        <div id="social">
          <img src="../images/facebook.gif" alt="Facebook" width="33" height="33"/>
          <img src="../images/twitter.gif" alt="Twitter" width="33" height="33"/>
        </div>
      </footer>
    </div>
  </body>
</html>
