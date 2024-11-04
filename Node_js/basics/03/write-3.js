//비동기식으로 주어진 파일에 writeFile()함수로 기록하기

const fs = require('fs');

fs.readFile("./example.txt", "UTF8", (error,data) => {
  if(error) {
    console.log(error);
  }

  fs.writeFile("./text2.txt", data, (error) => {
    // writeFile()함수로 비동기식으로 주어진 파일에(주어진 파일이 없다면 만든다)
    // data변수 내 내용을 기록한다. 기록후 콜백함수를 호출한다.
    // 에러가 나면 error매개변수에 에러 내용이 저장됨
  })
  if(error) {
    console.log(error);
  }
  console.log("example.txt 파일의 내용을 text2.txt로 복사하였습니다.");
})