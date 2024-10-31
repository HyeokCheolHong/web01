// 비동기식 프로그램
function displayA_Asynchronous_A_1() {
  console.log('A');
}

function displayB_Asynchronous_B_1() {
  setTimeout(() => {
    console.log('B');
  }, 2000);
  // 2초뒤에 실행
}

function displayC_Asynchronous_C_1() {
  console.log(`C`);
}

displayA_Asynchronous_A_1();
displayB_Asynchronous_B_1();
displayC_Asynchronous_C_1();

function displayA_Asynchronous_A_2() {
  console.log('A');
}

function displayB_Asynchronous_B_2(callback) {
  setTimeout(() => {
    console.log('B');
    callback();
  }, 2000);
}

function displayC_Asynchronous_C_2() {
  console.log(`C`);
}

displayA_Asynchronous_A_2();
displayB_Asynchronous_B_2(displayC_Asynchronous_C_2);
console.log("---구분선---");