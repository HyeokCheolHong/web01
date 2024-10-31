// 함수 선언문
function greeting_function(name) {
  console.log(`안녕안녕 나는 ${name}야~ 헬륨가스 먹었더니 요렇게 됬지~`);
}
greeting_function('지수')
console.log("---구분선---");

// 함수 표현식
const greeting_function_1 = function(name) {
  console.log(`${name}님 잘가세요!`);
}
greeting_function_1('지수');
console.log("---구분선---");

// 함수 표현식 화살표함수
let hi_arrows = () => {
  return `안녕하세요!`;
}
console.log(hi_arrows());

const hi2_arrows = () => `잘가세요!`;
console.log(hi2_arrows());

let sum_arrows = (a, b) => { return a + b}
console.log(sum_arrows(100, 200));

let total_arrows = (a, b) => a+b; //{}와 return 생략
console.log(total_arrows(500, 500));
console.log("---구분선---");

// 즉시 실행함수
(function(a, b) { //선언과 동시에 호출
  console.log(`${a} + ${b} = ${a + b}`);
}) (200, 300)