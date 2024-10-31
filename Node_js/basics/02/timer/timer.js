// 타이머 함수 실습 예제
let remainingTime = 3000;
// 남은 시간을 3초로 설정
const waitingInterval = 500;
// 대기 시간 간격을 0.5초로 설정

// 함수 표현식과 화살표 함수
const timer = setInterval(() => {
  console.log(`${remainingTime / 1000} 초 남음`)
  remainingTime -= waitingInterval;
  // 3000 - 500 => 2500 - 500 => 2000 - 500 ...

  if(remainingTime <= 0) {
    console.log("타이머 STOP");
    clearInterval(timer);
    // setInterval()함수로 반복진행한것을 멈춤
  }
}, waitingInterval);