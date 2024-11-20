const express = require("express"); //express 모듈을 가져온다.
const router = express.Router();//라우터 객체 생성
// const { getAllContacts} = require("../controllers/contactController"); //getAllContacts만 있을경우
const { getAllContacts, createContact, getContact, updateContact, deleteContact, addContactForm } = require("../controllers/contactController");
//contactController.js에서 createContact, getContact, updateContact, deleteContact함수를 만들었을경우

//모든 연락처 가져오기+ 새연락처 추가하기
router
  .route("/")
  .get(getAllContacts) // 모든 연락처 가져오기

// 2024-11-20 변경 (아래 내용으로 변경)
// .post(createContact); // 새연락처 추가하기 함수로 만들었을경우

router
  .route("/add")  // http://localhost:3003/contacts/add 으로 요청할 때
  .get(addContactForm) // 사용자 연락처 추가 폼
  .post(createContact); // 새 연락처 추가 함수


// // 새연락처 추가하기 (contactController.js 에서 createContact 함수 만들기 전)
// .get((req, res) => {
//   res.status(200).send("Contacts Page");
// })
// .post((req, res) => {
//   console.log(req.body);
//   // req.body : POST요청 body에서 받은 JSON data
//   const { name, email, phone } = req.body; // 구조 분해 할당
//   // name, email, phoen : req.body에서 name, email, phoen 속성을 받아서 (구조 분해 하여)각 변수명에 할당

//   if (!name || !email || !phone) {
//     return res.status(400).send("All fields are required");
//   }
//   // name, email, phoen이 undefined or null일 경우 400 Bad Request 에러를 반환
//   res.status(201).send("Create Contacts");
// });

//연락처 상세보기(개별 연락처 보기)+연락처 수정하기+삭제하기
router
  .route("/:id")
  .get(getContact)// 개별 연락처 상세보기

  // (contactController.js 에서 getContact함수로 만들어서 주석처리)
  // .get((req, res) => {
  //   // res.status(200).send(`View Contact for ID : ${req.params.id}`);
  // })
  .put(updateContact)// 개별 연락처 수정하기
  // (contactController.js 에서 updateContact함수로 만들어서 주석처리)
  // .put((req, res) => {
  //   res.status(200).send(`Update Contact for ID : ${req.params.id}`);
  // })
  .delete(deleteContact);// 개별 연락처 삭제
// .delete((req, res) => {
//   res.status(200).send(`Delete Contact for ID : ${req.params.id}`);
// })

module.exports = router;//router객체를 외부로 내보내기