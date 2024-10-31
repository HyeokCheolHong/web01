const {user1, user2, user3} = require("./users-1");
// users-1 모듈을 임포트해서 user1, user2를 읽어들임

const hello = require("./hello");

// hello.js에서 hello() 함수를 호출
hello(user1);
hello(user2);
hello(user3);