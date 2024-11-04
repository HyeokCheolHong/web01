// unlinkSync() 함수를 사용해서 동기식 방법으로 파일을 삭제해 본다.

const fs = require('fs');

if(!fs.existsSync("./text-1.txt")) {
  console.log("삭제할 파일 text-1.txt가 존재하지 않습니다.");
} else {
  fs.unlinkSync("./text-1.txt");
  console.log("text-1.txt 파일이 성공적으로 삭제되었습니다.");
}