// 주소 요청에 따라 다른 화면이 보이게 하는 라우팅 설정

const http = require('http');

const server = http.createServer((req, res) => {
  const {method, url} = req;
  // 클라이언트 요청에 대한 메서드와 url를 구조분해할당으로 가져오기(req의 정보중 method와 url만 가져옴)
  res.setHeader('Content-Type', 'text/plain');
  // Content-Type : HTTP 헤더의 한 종류로, 서버가 응답하는 데이터가 어떤 형식인지 나타냅니다
  // text/plain : 응답이 단순한 텍스트 형식(plain text)임을 나타냅니다.

  if(method === "GET" && url === "/home") {
    // 전송 방식이 GET이고 라우팅주소(스프링에서는 매핑주소)가 /home일때 실행
    res.statusCode = 200; // 성공 HTTP 상태 코드
    res.end('Home'); // 웹브라우저 화면에 HOME을 표시
  } else if(method === "GET" && url === "/about") {
    res.statusCode = 200;
    res.end('About');
  } else {
    res.statusCode = 400;
    // Bad Request 에러로 클라이언트 요청이 잘못되었을 때
    res.end('Bad Request');
  }
});

server.listen(3002, () => {
  console.log('Server is running at http://localhost:3002');
});