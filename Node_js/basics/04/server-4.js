// index.html을 node 서버에서 로딩하기

const http = require('http');
// http모듈을 읽어오기(임포트)

const fs = require('fs');
// 파일 시스템 모듈 fs 임포트(가져오기)

const server = http.createServer((req, res) => {
  // createServer() 함수로 http server를 생성
  // res : 요청객체로 클라이언트가 서버로 보내는 요청애 대한 정보
  // req : 응답객체로 서버가 클라이언트로 보내는 응답을 구성
  res.setHeader('Content-Type', 'text/html');
  // res.setHeader() 함수로 HTTP response header에 Content-Type(응답의 콘텐츠가 어떤 형식)을 text/html(응답이 HTML 형식임을 나타냄)로 설정
  // setHeader 메서드는 응답의 HTTP 헤더에 특정 필드 값을 설정하는 기능
  const readStream = fs.createReadStream(__dirname+"/index.html", "UTF-8");
  // __dirname은 node.js에서 사용되는 특별한 전역 변수이다.
  // 현재 파일이 위치한 디렉토리의 절대 경로를 반환한다.
  // index.html 파일을 utf8 언어코딩 타입으로 읽어들여서 readalbe straem 을 생성
  readStream.pipe(res);
  // readStream.pipe(res) 함수는 readStream에서 읽은 데이터를 res(HTTP응답객체)로 전송하는 역할을 한다
  // 이를 통해 파일의 내용을 http응답으로 보내거나 다른 스트림을 통해 데이터를 전달할 수 있다.
  // 해당 방법은 데이터를 효율적으로 처리하고 메모리를 절약하는데 유리하다.

  // pipe()함수는 2개의 스트림을 연결하는 파이프이다.
  // 이함수를 사용하면 서버에서 자료를 읽어와서 클라이언트에게 기록을 보여줘야 할때 데이터를 효율적으로 전송 처리 가능하다.

  // readStream.pipe(res)는 파일 스트림을 클라이언트 응답으로 바로 전달하는 코드
  // pipe() 메서드는 하나의 스트림에서 다른 스트림으로 데이터를 전달합니다.
});

server.listen(3001, () => {
  console.log('Server is running at http://localhost:3001');
  // listen() 함수로 server를 3001번 포트에서 대기하도록 설정
});