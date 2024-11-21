// 2024-11-21 작성

const asyncHandler = require('express-async-handler');
// 해당 모듈을 설치하고 임포트하는 이유는 try-catch 예외처리 코드를 생략하기 위해서 이다.

const User = require("../models/userModel");
// MongoDB에 문서 자료인 ID, PW 을 저장할 수 있게 User Model을 import

const bcrypt = require("bcrypt");
// 비밀번호를 암호화 하기 위한 bcrypt 모듈 임포트

//@desc Get login page
//@route GET /
const getLogin = (req, res) => {
  // 로그인 폼 페이지로 이동
  res.render("home");
  // 루트 라우팅 주소가 실행되면 ./views/home.ejs로 랜더링(뷰페이지를 브라우저 화면에 표기) 확장자는 생략
};

//@desc Login user
// @route POST /login
const loginUser = asyncHandler(async (req, res) => {
  // 로그인 로직
  // route 라우팅 주소가 post방식으로 실행이 되었을 때 로그인 인증
  const { username, password } = req.body;
  // ES6문법에서 추가된 구조분해 할당
  // req.body : POST 요청 body에서 받은 JSON data(로그인 정보)
  // 구조분해 할당으로 아이디는 username, 비밀번호는 password로 분해해서 할당 저장한다.
  if (username === 'admin' && password === '1234') {
    res.send("Login Successfully!")
  } else {
    res.send("Login Failed");
  }

  if (!username || !password) {
    return res.status(400).send("Username and password are required");
    // username, password 속성이 undefined or null일 경우 400 Bad Request 에러를 반환
  }
});

//@desc Register Page
//@route GET /register
const getRegister = (req, res) => {
  res.render("register");
  // register.ejs로 렌더링
};

//@desc Register Page
//@route Post /register
const registerUser = asyncHandler(async (req, res) => {
  // 관리자(사용자) 정보 저장 로직
  // route 라우터 주소가 post방식으로 실행이 되었을 때 회원가입
  const { username, password, password2 } = req.body;
  // req.body에는 post로 전송된 아이디, 비번, 비번확인이 저장되어 있다. 이것을 ES6에서 추가된 구조분해 할당에 의해서 각 값을 분해 할당한다.

  if (password == password2) {
    // 비밀번호가 일치하는 경우
    const hashedPassword = await bcrypt.hash(password, 10);
    // 비동기식으로 bcryptjs 모듈을 사용하여 password를 hash(*) 암호화 처리
    // TODO: 비밀번호 hash 처리(bcryptjs)

    const user = await User.create({ username, password: hashedPassword });
    // 아이디와 암호화된 비밃번호를 MongoDB에 저장시키고 user 생성

    res.status(201).json({ message: "Register Success", user });
    // 201 Created : 성공적으로 렌더링 완료 json 데이터 message에 "Register Success"를 남기고 user또한 남긴다
  } else {
    res.send("Register Failed")
  }
})

module.exports = { getLogin, loginUser, getRegister, registerUser };