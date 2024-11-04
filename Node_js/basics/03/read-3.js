const fs = require('fs');


fs.readFile("./example.txt", "utf8", (err,data) => {
  // readFile()함수는 비동기식으로 주어진 경로 파일내용을 읽어옴

  if(err) {
    console.log(err);
  }

  console.log(data);
})