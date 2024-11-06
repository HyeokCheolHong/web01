// rmdir()함수는 비동기식으로 비어있는 디렉터리를 삭제한다

const fs = require('fs');

if(!fs.existsSync(`${__dirname}/test`)) {
  console.log("파일이 존재하지 않거나 비어있지 않습니다");
  return -1;
}else {
  fs.rmdir(`${__dirname}/test`, (err) => {
    if(err) {
      console.error(err);
      return -1;
    }

    if(!fs.existsSync(`${__dirname}/test`)) {
      console.log("test 폴더 삭제 성공");
    }
  });
}