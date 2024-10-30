<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>TEST</title>
  <body>
    <h3>application JSP 기본객체를 사용하여 자원 읽기</h3>
    <%
      String filePath = "./message/notice.txt";
    %>
    notice.txt 자원의 실제 경로 : <br/>
    <%=application.getRealPath(filePath) %>
    <hr/>
    <%=filePath%>의 내용 : <br/>
    <%
      char[] buf = new char[128];
      int len = -1;

      try (InputStreamReader br = new InputStreamReader(application.getResourceAsStream(filePath), "UTF-8")){
        // getResourceAsStream()메서드는 지정한 경로에 해당하는 자원으로 부터 자료를 읽어올 수 있는 InputStream을 반환

        while((len = br.read(buf)) != -1){
          out.println(new String(buf, 0, len));
        }
      } catch(IOException ie) {
        out.println("예외 발생 : " + ie.getMessage());
      }
    %>
  </body>
</html>
