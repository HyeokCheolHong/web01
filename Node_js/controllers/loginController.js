// 2024-11-21 작성

const asyncHandler = require('express-async-handler');
// 해당 모듈을 설치하고 임포트하는 이유는 try-catch 예외처리 코드를 생략하기 위해서 이다.

const User = require("../models/userModel");
// MongoDB에 문서 자료인 ID, PW 을 저장할 수 있게 User Model을 import

const bcrypt = require("bcrypt");
// 비밀번호를 암호화 하기 위한 bcrypt 모듈 임포트

// 패키지 모듈 dotenv를 로드하고 설정 파일(.env)를 읽어와서 환경변수를 현재 process 객체 내의 env 객체 안에 저장한다.
// process.env.* 에 환경변수들이 저장됨
require("dotenv").config();
// JWT 모듈 패키지 import
const jwt = require("jsonwebtoken");
// JWT를 생성하거나 검증할 때 사용할 비밀키를 환경변수에서 가져와서 jwtSecret 상수에 저장
const jwtSecret = process.env.JWT_SECRET;

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

  // 2024-11-25 JWT Token 생성 후 주석처리
  // // ES6문법에서 추가된 구조분해 할당
  // // req.body : POST 요청 body에서 받은 JSON data(로그인 정보)
  // // 구조분해 할당으로 아이디는 username, 비밀번호는 password로 분해해서 할당 저장한다.
  // if (username === 'admin' && password === '1234') {
  //   res.send("Login Successfully!")
  // } else {
  //   res.send("Login Failed");
  // }

  // if (!username || !password) {
  //   return res.status(400).send("Username and password are required");
  //   // username, password 속성이 undefined or null일 경우 400 Bad Request 에러를 반환
  // }

  // 2024-11-25 JWT Token 생성 코드 추가 작업
  // 비동기식으로 ID에 맞는 회원정보만 MongoDB로부터 가져온다.
  const user = await User.findOne({ username });
  // ID에 해당하는 회원정보가 없는 경우 오류 메시지 표시
  if (!user) {
    return res.status(401).json({ message: "일치하는 사용자가 없습니다!" });
  }

  // 입력한 비밀번호를 암호화 하여 MongoDB에 저장된 암호화 된 비밀번호와 비교
  const isMatch = await bcrypt.compare(password, user.password);
  if (!isMatch) {
    return res.status(401).json({ message: "비밀번호가 일치하지 않습니다!" });
  }

  // JWT 토큰 생성
  // MongoDB 사용자의 ObjectId(_id)를 토큰에 포함될 데이터로 전달되며 비밀키를 가지고 서명 인증한다.
  const token = jwt.sign({ id: user._id }, jwtSecret);
  // 생성된 JWT토큰을 "token"이라는 쿠키 이름으로 저장되어 클라이언트에게 응답한다.
  // 세번째 인자값인 Option에서 httpOnly:true는 http 전송에서만 사용하겠다는 의미이다. (보안상 이유)
  /// 이 옵션을 설정하면 Javascript 를 통해 클라이언트에서 쿠키에 접근하는 것을 제한할 수 있다. 
  /// 이는 XSS(Cross-Site Scripting) 공격으로부터 보호하기 위한 일반적인 보안 방법 중 하나이다. 
  /// 따라서 이 코드는 클라이언트에게 인증 토큰을 안전하게 저장하고자 할 때 사용되며, HTTP 전송에서만 사용되도록 설정된 옵션이다.
  res.cookie("token", token, { httpOnly: true });
  res.redirect("/contacts"); // 로그인 성공 시 /contacts 라우팅 주소인 사용자 연락처 목록으로 이동
});


// 2024-11-25 로그아웃 함수 생성
// @desc Logout
//@route GET /logout
const logout = (req, res) => {
  res.clearCookie("token");
  // 쿠키로부터 토큰 삭제 => 로그아웃
  res.redirect("/");
  // 로그아웃 되었으니 로그인페이지로 이동
}

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

module.exports = { getLogin, loginUser, getRegister, registerUser, logout };

