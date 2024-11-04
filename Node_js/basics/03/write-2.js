const fs = require('fs');

const data = fs.readFileSync("./example.txt", 'utf8');
// readFielSync()함수는 동기식으로 example.txt파일을 utf8타입 언어코딩 타입으로 읽어온다.

if(fs.existsSync("text-1.txt")) {
  //text-1.txt 파일이 있다면 참
  console.log(`동일 파일이 존재합니다.`);
} else {
  fs.writeFileSync("text-1.txt", data);
  // 동기식으로 주어진 파일이 없다면 만들면서 data상수 내용을 기록한다.
}