let likePizza = true;

const pizza = new Promise((resolve, reject) => {
  if(likePizza == true) {
    resolve('Order to Pizza!');
  } else {
    reject('not Order to Pizza!');
  }
});

pizza.then((result) => {
  console.log(result);
}).catch(error => {
  console.log(error);
});

// async/await
async function init_await() {
  const response = await fetch("https://jsonplaceholder.typicode.com/users");
  // await는 async와 함께 사용해야 하므로 async 함수 안에서만 사용 가능하다
  const users = await response.json();
  // response.json()함수는 서버에서 가져온 프로미스 객체를 프로그램에서 사용할 수 있는 객체로 반환.
  console.log(users);
}

init_await();