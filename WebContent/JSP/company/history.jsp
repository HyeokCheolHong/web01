<%@ page contentType="text/html; charset=UTF-8" %>
<%-- 상단 공통페이지 읽어오기 --%>
<jsp:include page="../include/header.jsp"/>
<%-- jsp include 액션태그로서 상당 공통페이지를 외부 포함파일로 읽어온다. --%>

<%-- 서브 메인 이미지 --%>
<div id="sub_img"></div>

<div class="clear"></div>

<%-- 서브 메뉴 --%>
<div id="sub_menu">
  <ul>
    <li><a href="../company/welcome.jsp">WelCome</a></li>
    <li><a href="../company/history.jsp">History</a></li>
    <li><a href="#">Newroom</a></li>
    <li><a href="#">Public Poilcy</a></li>
  </ul>
</div>

<%-- 서브 메인 본문 --%>
<div id="sub_main_cont">
  <h1>History</h1>
   <div class="y2023">
      <h3>2023</h3>
      <dl>
         <dt>may</dt>
         <dd>Lorem ipsum dolor sit amet, consectetur adipiscing elit</dd>
         <dd>Duis eu ipsum nisl. Duis posuere fringilla nunc quis</dd>
         <dd>Donec mollis dapibus risus volutpat mattis.</dd>
      </dl>
      <dl>
         <dt>apr</dt>
         <dd>Cras felis lectus, gravida ac tincidunt eget</dd>
         <dd>Duis eu ipsum nisl. Duis posuere fringilla nunc quis</dd>
         <dd>Donec mollis dapibus risus volutpat mattis.</dd>
      </dl>
      <dl class="dot_none">
         <dt>jan</dt>
         <dd>Fusce scelerisque dictum magna eget viverra.</dd>
      </dl>
      <div class="clear"></div>
   </div>

   <div class="y2022">
      <h3>2022</h3>
      <dl>
         <dt>dec</dt>
         <dd>Lorem ipsum dolor sit amet, consectetur adipiscing elit</dd>
         <dd>Duis eu ipsum nisl. Duis posuere fringilla nunc quis</dd>
         <dd>Donec mollis dapibus risus volutpat mattis.</dd>
      </dl>
      <dl>
         <dt>nov</dt>
         <dd>Cras felis lectus, gravida ac tincidunt eget</dd>
         <dd>Duis eu ipsum nisl. Duis posuere fringilla nunc quis</dd>
         <dd>Donec mollis dapibus risus volutpat mattis.</dd>
      </dl>
      <dl class="dot_none">
         <dt>jan</dt>
         <dd>Fusce scelerisque dictum magna eget viverra.</dd>
      </dl>
      <div class="clear"></div>
   </div>

   <div class="y2021">
      <h3>2021</h3>
      <dl>
         <dt>Jul</dt>
         <dd>Lorem ipsum dolor sit amet, consectetur adipiscing elit</dd>
         <dd>Duis eu ipsum nisl. Duis posuere fringilla nunc quis</dd>
         <dd>Donec mollis dapibus risus volutpat mattis.</dd>
      </dl>
      <dl>
         <dt>jun</dt>
         <dd>Cras felis lectus, gravida ac tincidunt eget</dd>
         <dd>Duis eu ipsum nisl. Duis posuere fringilla nunc quis</dd>
         <dd>Donec mollis dapibus risus volutpat mattis.</dd>
      </dl>
      <dl class="dot_none">
         <dt>jan</dt>
         <dd>Fusce scelerisque dictum magna eget viverra.</dd>
      </dl>      
      <div class="clear"></div>
   </div>
</div>

<%-- include 디렉티르를 사용하여 하단 공통페이지 읽어오기 --%>
<jsp:include page="../include/footer.jsp" />