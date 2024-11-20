const asyncHandler = require('express-async-handler');
// 해당 모듈을 설치하고 임포트하는 이유는 try-catch 예외처리 코드를 생략하기 위해서 이다.

const Contact = require("../models/contactModel");
// DB설계한 contactsModel 내용 Import
const path = require("path");
// path 모듈 임포트

// // @desc GET all contacts => 함수에 대한 설명
// // @route GET /contacts => 요청방식은 GET 방식 과 요청 URL(라우팅 주소)
// const getAllContacts = async (req, res) => {
//   try {
//     res.status(200).send("Contacts Page");
//   } catch (err) {
//     res.send(err.message);
//   }

// }; // 기존 코드

// try-catch문이 생략된 변경코드
const getAllContacts = asyncHandler(async (req, res) => {
  // 모든 연락처 가져오기
  const contacts = await Contact.find();
  // find()함수는 비동기식으로 모든자료 가져오기
  // res.status(200).send(contacts);
  // res.status(200).send("<h1 style='color:green'>Contacts Page</h1>");

  // const filePath = path.join(__dirname, "../assets", "getAll.html");
  // __dirname은 현재 실행중인 파일이 위치한 디렉토리 경로를 문자열로 반환(글로벌 전역변수)
  // join()함수는 여러개의 경로를 받아서 하나의 경로 문자열로 반환
  // res.sendFile(filePath);
  // 지정한 경로로 파일을 읽어서 내용을 전송한다.

  // 하나의 사용자 정보만 전달
  // res.render("getAll", { heading: "User List" });
  // views폴더에 있는 getALl.ejs 파일을 렌더링(뷰페이지를 화면에 보여준다는 의미)한다.
  // 확장자(.ejs)는 생략가능
  // "User List" 문자열을 heading 키에 저장하여 getAll.ejs로 전달한다.

  // 복수개의 사용자 정보를 전달해보자
  // const users = [
  //   { name: "John", email: "john@aaa.bbb", phone: "010-9999-9999" },
  //   { name: "제인", email: "jane@gmail.com", phone: "010-7777-7777" },
  //   //... more users...
  // ]
  // res.render("getAll", { heading: "사용자 목록", users: users });
  // 우측 users에 사용자 정보가 담겨서 좌측 users에서 정보를 받아 출력한다.

  // MongoDB 에서 사용자 정보를 가져와보자
  res.render("index", { contacts: contacts });
  // index.ejs로 랜더링 된다. contacts에 MongoDB 복수개 문서 사용자 연락처에 저장되어 있다.


})

// 2024-11-20 add.ejs 연동 관련 추가
// @desc View and contact form
// @route GET /contacts/add => 라우팅 주소 경로
const addContactForm = (req, res) => { // 연락처 추가 폼 뷰페이지로 이동
  res.render("add"); // /views/add.ejs 로 렌더링(브라우저 화면에 뷰 페이지를 보여준다)
}

// @desc Create a contact
// @route POST /contacts
const createContact = asyncHandler(async (req, res) => {
  // 새 연락처 추가하기
  console.log(req.body);
  const { name, email, phone } = req.body; // 구조 분해 할당
  // req.body : POST 요청 body에서 받은 JSON data
  if (!name || !email || !phone) {
    return res.status(400).send("Please provide all required fields");
    // name, email, phone이 undefined or null일 경우 400 Bad Request 에러를 반환
  }

  const contact = await Contact.create({
    // 비동기식으로 새로운 자료 문서를 컬렉션에 추가한다.
    name,
    email,
    phone,
  })

  res.redirect("/contacts"); // 새 연락처 추가 후 연락처 목록 페이지로 이동

  // 2024-11-20 add.ejs 추가후 주석 처리
  // res.status(201).send("Create Contacts");
});

// @desc Get a single contact => id에 대한 연락처 개별 상세정보 보기
// @route GET /contacts/:id => 요청방식과 요청 URL(라우팅 주소)
const getContact = asyncHandler(async (req, res) => {
  const contact = await Contact.findById(req.params.id);
  // findById()함수는 특정조건에 맞는 Data만 가져온다.

  // res.status(200).send(`View Contact for ID : ${req.params.id}`); // 기존코드

  // update.ejs 연동 후 주석처리
  // res.status(200).send(contact);

  res.render("update", { contact, contact });
  // update.ejs로 랜더링
});

// @desc Update a contact => id에 대한 연락처 개별 정보 수정
// @route PUT /contacts/:id => 요청방식과 요청 URL(라우팅 주소)
const updateContact = asyncHandler(async (req, res) => {
  // 기존코드
  // res.status(200).send(`Update Contact for ID : ${req.params.id}`);

  // const id = req.params.id;
  // contacts/:id로 전달된 라우트 파라미터 값 id를 구함
  const { name, email, phone } = req.body;
  // req.body : PUT 요청 body에서 받은 JSON data(수정정보)를 구조분해할당 하여 name, email, phone으로 각각 저장

  // findById의 문제점 : 코드가 진행되는동안 다른작업 대한 대응을 하지 못함
  // const contact = await Contact.findById(id);
  // // 파라미터 id에 해당하는 자료를 찾아서 수정

  // if (!contact) {
  //   res.status(404);
  //   throw new Error("Contact not found");
  // }

  // // 자료수정
  // contact.name = name;
  // contact.email = email;
  // contact.phone = phone;

  // // 수정후 저장
  // contact.save();

  // res.send(200).json(contact); // 수정된 자료 전송

  // findById의 문제점을 보완한 findByIdAndUpdate 활용
  const updateContact = await Contact.findByIdAndUpdate(
    // findByIdAndUpdate() : 함수를 사용하여 ID값으로 data를 찾은 후 수정한다. (수정과 저장을 한번에 진행)
    req.params.id,
    { name, email, phone },
    { new: true } // new: true를 있어 findByIdAndUpdate()가 수정된 문서를 return하도록 함
  );
  // 2024-11-20 form태그 action속성 추가함으로써 주석 처리
  // res.status(200).send(updateContact); // 수정된 자료 전송

  // 2024-11-20 update.ejs 에서 form태그 action="/contacts/<%=contact._id%>?_method=PUT" 추가함으로써 화면에 json 데이터로 밖에 출력이 안된다.
  // 내가 작성해본것
  // res.render("update", { contact: updateContact });
  // 강사님
  res.redirect("/contacts");
});

// @desc Delete a contact => id에 대한 연락처 개별 삭제
// @route DELETE /contacts/:id => 요청방식과 요청 URL(라우팅 주소)
const deleteContact = asyncHandler(async (req, res) => {

  /* 2024-11-20 전체 주석문처리
  // res.status(200).send(`Delete Contact for ID : ${req.params.id}`); // 기존코드
  const contact = await Contact.findById(req.params.id);
  // 번호에 해당하는 문서를 찾는다.
  if (!contact) {
    res.status(404);
    throw new Error("Contact not found");
  }
  // 자료 삭제
  await contact.deleteOne();
  // 검색한 문서 삭제
  res.send(200).send("Contact deleted"); // 삭제 성공 전송
  // const contact = await Contact.findByIdAndDelete(req.params.id); */

  await Contact.findByIdAndDelete(req.params.id);
  // id에 해당하는 MongoDB자료 문서를 찾아서 바로 삭제하는 작업까지 한꺼번에 처리
  res.redirect("/contacts");
});

module.exports = {
  getAllContacts,
  createContact,
  getContact,
  updateContact,
  deleteContact,
  addContactForm,
}; // router 객체를 외부로 내보내기