// hello.js 모듈 생성

const hello = (name) => {
  console.log(`${name}님 안녕하세요!`);
};
// 함수 표현식과 화살표 함수

module.exports = hello; // hello() 함수를 module.exports 객체로 export실시