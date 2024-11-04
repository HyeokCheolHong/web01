// recursive 옵션을 true로 설정해서 여러 단계의 폴더를 추가해 본다.

const fs = require('fs');

if(fs.existsSync("./test2/test3/test4")) {
  console.log("folder already exists");
} else {
  fs.mkdirSync("./test2/test3/test4", {recursive:true}, (err) => {
    if(err) {
      console.log(err);
    } else {
      console.log("여러 단계 폴더를 생성함")
    }
  })
}