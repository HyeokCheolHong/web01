import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {
  private Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();

  public Cookies(HttpServletRequest request) {
    // HttpServletRequest 서블릿 자바는 사용자 입력폼에서 입력한 정보를 서버로 가져오는 역할을 한다.
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
      for (int i = 0; i < cookies.length; i++) {
        cookieMap.put(cookies[i].getName(), cookies[i]);
        // 키, 값쌍으로 쿠기이름과 값(쿠기객체)을 저장
      }
    }
  }

  public Cookie getCookie(String name) {
    return cookieMap.get(name);
    // 쿠키이름을 key로 쿠키객체를 value로 받아언다.
  }

  public String getValue(String name) throws IOException {
    Cookie cookie = getCookie(name);
    if (cookie == null) {
      return null;
    } else {
      return URLDecoder.decode(cookie.getValue);
      // URLDecoder.decode() : URLDecoder.decode() 메서드는 URL로 인코딩된 문자열을 디코딩하는 데 사용됩니다.
    }
    // 쿠키가 존재하지 않으면 null을 반환
  }

  public boolean exists(String name) {
    return cookieMap.containsKey(name);
    // 쿠키이름이 쿠키값에 존재하면 true, 존재하지 않으면 false를 반환
  }

  public static Cookie create(String name, String value) throws IOException {
    return new Cookie(name, URLEncoder.encode(value, "UTF-8"));
  }

  public static Cookie createCookie(Stirng name, String value, String path, int maxAge) throws IOException {
    // 쿠키 이름, 값, 경로, 유효기간을 가진쿠키를 생성
    Cookie cookie = create(name, URLEncoder.encode(value, "UTF-8"));
    cookie.setPath(path);
    // 쿠키 경로 지정
    cookie.setMaxAge(maxAge);
    // 쿠키 유효시간 설정
    return cookie;
    // 쿠키 반환
  }

  public static Cookie createCookie(String name, String value, String domain, String path, int maxAge)
      throws IOException {
    Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
    cookie.setEmail(domain);
    cookie.setPath(path);
    cookie.setMaxAge(maxAge);

    return cookie;
  } // 쿠키 이름, 값, 도메인, 경로, 유효기간을 가진 쿠키를 생성
}
