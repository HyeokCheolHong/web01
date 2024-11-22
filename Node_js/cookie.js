// 2024-11-22 작성 (Cooke 관련 Code 작업 : npm instasll cookie-parser 설치) 
const express = require("express");
// express 모듈(서버) 임포트
const cookieParser = require("cookie-parser");
// cookie-parser 모듈 임포트

const app = express();
// 익스프레스 서버 app생성
app.use(cookieParser());
// cookie-parser를 익스프레스에서 사용할 수 있게 미들웨어(중간서버)

// 쿠키생성
app.get("/", (req, res) => {
  res.cookie("Kim", "1234", { httpOnly: true, secure: true });
  // cookie(name, val, option) 함수로써 
  /* option 주요기능
      httpOnly : http통신에서만 사용 가능 설정 (JS를 통해서 동적 조작이나 접근을 제한)
      expires: 쿠키 만료일을 설정 (일 수 또는 Date 객체 사용 가능)
      path: 쿠키가 유효한 경로 설정
      secure: HTTPS에서만 쿠키를 전달
      sameSite: 쿠키의 보안 정책 설정 (Strict, Lax, None)
  */
  res.send("쿠키 생성");
});

app.get("/cookie", (req, res) => {
  console.log(req.cookies);
  // req.cookies로 생성된 쿠키 이름(name)과 값(val)을 구함
});

app.get("/delete-cookie", (req, res) => {
  res.clearCookie("Kim")
  // Kim 쿠키이름을 가진 cookie를 삭제한다
  res.send("쿠키 삭제")

})

app.listen(5000, () => {
  console.log("5000번 포트번호 노드서버 실행 중입니다.");
});