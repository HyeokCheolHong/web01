const fs = require('fs');
// 파일시스템 모듈을 임포트

const readStream = fs.createReadStream("readMe.txt", "utf8");
const writeStream = fs.createWriteStream("writeMe.txt");

readStream.on("data", (chunk) => {
  console.log(`청크(chunk)란 버퍼 크기만큼 기록한다`);
  writeStream.write(chunk);
})