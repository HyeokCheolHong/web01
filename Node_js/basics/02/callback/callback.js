// 콜백 함수
// 함수 표현식, 화살표 함수, 콜백함수를 다루는 예제
const order_callback_1 = (coffee, callback) => {
  console.log(`Order ${coffee}...`);
  setTimeout(() => {
    callback(coffee);
    // 3초 뒤에 콜백함수 display display_callback_1호출
  }, 3000);
}

const display_callback_1 = (result) => {
  console.log(`Your ${result} is ready!`);
}

order_callback_1('Americano', display_callback_1);

// 콜백 지옥
// 콜백 함수 안에 또 다른 콜백함수를 연속적으로 사용하는 것
// 콜백 지옥을 방지하기 위해 promise 사용

function display_callback_Letter_2() {
  console.log('A');

  setTimeout(() => {
    console.log(`B`);
    setTimeout(() => {
      console.log(`C`);
      setTimeout(() => {
        console.log(`D`);
        setTimeout(() => {
          console.log(`E`);
        }, 1000);
      }, 1000);
    }, 1000);
  }, 1000);
}

display_callback_Letter_2();