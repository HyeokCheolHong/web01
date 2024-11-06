// unlink() 함수는 비동기식 처리로 파일을 삭제한다

const fs = require('fs');

if(!fs.existsSync("text2.txt")) {
  console.log('file does not exist')
} else {
  fs.unlink("text2.txt", () => {
    console.log('file deleted');
  });
}