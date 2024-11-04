// 비동기식으로 mkdir()함수로 디렉터리 생성

const fs = require('fs');

if(fs.existsSync("./test")) {
  console.log('test folder already exists');
} else {
  fs.mkdir('./test', (err) => {
    if(err) {
      console.error(err);
    } else {
      console.log('test folder created');
    }
  });
}