// 데이터를 읽기 위한 readable stream 예제
const fs = require('fs');

const readStream = fs.createReadStream('./readMe.txt');
// readMe.txt 파일을 읽어와서  readStream 상수에 할당

readStream.on("data", (chunk) => {
  // data는 스트림에서 데이터를 읽어 올 때 마다 발생하는 이벤트이다.
  // 즉 데이터를 읽어올 때 마다 버퍼 크기만큼만 읽어온다.

  console.log("데이터를 버퍼크기만큼만 읽어올 때 마다 표시.");
  console.log(chunk);
});

readStream.on("end", () => {
  // straem에서 data를 모두 읽었다면 "end" 이벤트 발생
  console.log("\n=============================\n");
  console.log("데이터를 모두 읽었습니다.");
});

readStream.on("error", (err) => {
  // straem에서 error가 발생했을 때 "error" 이벤트 발생
  console.log("\n=============================\n");
  console.log(`에러 : ${err}`);
  console.log("\n=============================\n");
});