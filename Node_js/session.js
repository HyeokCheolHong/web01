// 2024-11-22 작성 (session 관련 Code 작업)
const express = require("express")
// express 모듈 임포트
const session = require("express-session");
// express-session 모듈 임포트( express(서버)에서 session 관리 모듈)
const MongoStore = require("connect-mongo");
// connect-mongo 모듈 임포트
// MongoDB에 세션을 저장하고 세션 정보를 조회. 해당 모듈에서 session 함수를 사용할 수 있도록 해야함

require("dotenv").config();
// 패키지 모듈 dotenv를 로드하고 설정파일 .env를 읽어와 환경변수를 현재 프로세스 환경 변수로 설정하는 역할
// .env 파일이 있다면 dotenv.config()를 호출하면 이 파일에서 정의된 환경 변수들이 node.js 프로세스의 process.env 객체에 추가된다.
// .env파일에 설정된 환경변수가 DB_CONNECT를 다음과 같이 호출하면 된다.
// process.env.DB_CONNECT로 호출한다.

const app = express();

// session 생성
app.use(
  session({
    secret: "secret code", // 세션 암호화에 사용할 비밀 키
    resave: false,         // 변경이 없으면 세션을 다시 저장하지 않음
    saveUninitialized: false, // 초기화되지 않은 세션을 저장하지 않음
    store: MongoStore.create({ mongoUrl: process.env.DB_CONNECT }), // MongoDB에 저장
    cookie: { maxAge: 24 * 60 * 60 * 1000 }, // 쿠키 유효기간 (밀리초 기준, 24시간)}
  })
); // express-session 모듈을 express FrameWork에서 사용할 수 있게 미들웨어와 세션을 등록한다.

// session 유지 작업 코드
app.get("/", (req, res) => {
  if (req.session.count) {
    req.session.count++; // count값 1증가
    res.send(`${req.session.count} 번째 방문입니다.`);
    // 세션에 저장된 카운터 값을 가져와서 문자열(템플릿 리터럴) 출력
  } else {
    req.session.count = 1;
    // 세션 카운터 초기화
    res.send(`첫 번째 방문입니다.`);
  }
});

// session ID 정보 알아내기
app.get("/session", (req, res) => {
  res.send(`session ID : ${req.sessionID}`);
})

// session 정보 삭제하기
app.get("/delete-session", (req, res) => {
  // req.session.destroy 함수로 세션을 삭제하낟.
  // 서버의 세션은 삭제되지만 쿠키 세션 ID는 남아 있을 수 있다.
  // 서버 세션 삭제후 클라이언트 쿠키에서도 세션 ID를 삭제하는 코드가 추가되어야 한다.
  req.session.destroy((err) => {
    if (err) {
      console.log(err);
    } else {
      res.clearCookie("connect.sid");
      // connect.sid에 해당하는 세션 ID를 쿠키에서 삭제한다.
      res.send("세션 삭제");
    }
  });
});

app.listen(5001, () => {
  console.log("5001번 포트번호가 실행중입니다.");
})