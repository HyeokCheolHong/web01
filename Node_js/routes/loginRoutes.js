// 2024-11-21 작성
const express = require("express"); //express 모듈을 가져온다.
const router = express.Router();//라우터 객체 생성

const {
  getLogin,
  loginUser,
  // 2024-11-25 logout 함수생성후 추가 생성
  logout,
  getRegister,
  registerUser,
} = require("../controllers/loginController");

router
  .route("/")
  .get(getLogin)
  // http://localhost:3003/ 라우팅 주소가 get방식으로 실행되면 로그인폼으로 이동
  .post(loginUser);
// http://localhost:3003/ 로 POST방식으로 요청할 경우 loginUser 함수로 로그인 처리

//2024-11-25 로그아웃 함수 생성후 추가
router.route("/logout").get(logout);
// localhost:3003/logout get으로 접글할 때 로그아웃 처리

router
  .route("/register")
  .get(getRegister)
  // http://localhost:3003/register 라우터 주소가 get방식으로 실행되면 관리자 등록폼 페이지로 이동
  .post(registerUser);
// http://localhost:3003/register post로 접근하면서 아이디와 암호화된 비번을 저장


module.exports = router; //contactRoutes.js로 export