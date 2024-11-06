// http 모듈로 서버 만들고 실행하기
const http = require("http");
// http 모듈을 가져와서(require) http 상수에 할당

const server = http.createServer((req, res) => {
  // createServer() 함수로 HTTP 서버를 생성하고 req, res 매개변수로 함수를 전달
  console.log(`request from client`);
});

server.listen(3001, () => {
  // listen(포트번호, () => {}); listen()함수로 3001번 포트번호로 서버 실행
  console.log("Server is running on port 3001");
})