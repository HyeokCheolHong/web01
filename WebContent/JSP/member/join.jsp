<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../include/header.jsp"/>

<%-- 서브 메인 이미지 --%>
<div id="sub_img_member"></div>

<div class="clear"></div>

<%-- 서브 메뉴 --%>
<div id="sub_menu">
  <ul>
    <li><a href="../member/join.jsp">Join Us</a></li>
    <li><a href="#">Privacy policy</a></li>
  </ul>
</div>

<%-- 서브 메인 본문 --%>
<article id="sub_main_cont">
  <h1>Join Us</h1>
  <form id="join">
    <fieldset>
    <%-- fieldset은 폼입력 양식을 그룹화 하고, 그룹 경계선을 만든다. --%>
      <legend>Basic Info</legend>
      <%-- legend 태그는 fieldset의 제목을 정의할 때 사용 --%>
      <label for="id2">User ID</label>
      <input type="text" id="id2" class="id"/>
      <input type="button" class="dup" value="IDCheck" /> <br/>

      <label for="pwd">PassWord</label>
      <input type="password" id="pwd" class="pass"/> <br/>

      <label for="pwdchk">Retype PassWord</label>
      <input type="password" id="pwdchk" class="pass"/> <br/>

      <label for="name">Name</label>
      <input type="text" id="name" class="nick"/> <br/>

      <label for="mail">Email</label>
      <input type="email" id="mail" class="email"/> <br/>

      <label for="mailchk">Retype Email</label>
      <input type="email" id="mailchk" class="email"/> <br/>
    </fieldset>

    <fieldset>
      <legend>Optional</legend>

      <label for="addr">Address</label>
      <input type="text" id="addr" class="addr"/> <br/>

      <label for="tel01">Tel Number</label>
      <input type="tell" id="tel01" class="phone"/> <br/>

      <label for="phone01">Phone Number</label>
      <input type="tel" id="phone01" class="phone"/> <br/>
    </fieldset>

    <div class="clear"></div>

    <div id="buttons">
      <input type="submit" value="Submit" class="submit"/>
      <input type="reset" value="Cancel" class="cancel"/>
    </div>
  </form>
</article>

<%-- 하단 공통 영역 --%>
<jsp:include page="../include/footer.jsp" />