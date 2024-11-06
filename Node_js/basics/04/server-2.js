// http 모듈로 서버 만들고 실행하기
const http = require('http');
// http 모듈을 가져온다

const server = http.createServer((req, res) =>{
  // createServer() 함수로 서버를 만든다.
  console.log(req);
});

server.listen(3001, () => {
  // listen() 함수로 3001번 포트로 서버를 실행한다.
  console.log('Server is running on http://localhost:3001');
});