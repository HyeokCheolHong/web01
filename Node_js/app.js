const express = require("express");//express를 사용해 서버를 만들려면 우선 express 패키지
//모듈을 가져온다.
//const path = require("path"); //path모듈을 가져온다.

const dbConnect = require("./config/dbConnect");
// dbConnect 패키지 모듈 임포트 (DB 연결 패키지)

const methodOverride = require("method-override");
// 2024-11-20 method-override 추가
// method-override 패키지 모듈 임포트 (요청 방식을 중간에 바꾸는 여러 방법)
// POST 방식을 PUT방식으로 덮어 씌우거나 폼의 POST 방식을 DELETE방식으로 변경해서 전달

// const errorhandler = require("./middlewares/errorhandler.js");
// errorhandler 모듈 임포트

const app = express(); //express를 실행하면 app라는 서버가 만들어 진다. 이제부터 app객체로
//익스프레스의 모든 기능을 사용할 수 있다.

app.set("view engine", "ejs");
// express에게 EJS 뷰 엔진를 사용하겠다고 선언하면 익스프레스(서버)에게 확장자가 EJS인 파일을 템플릿 파일로 인식한다.
// EJS (Embedded JavaScript) : HTML 코드 안에 JavaScript를 삽입하여 동적으로 콘텐츠를 생성할 수 있게 해줍니다. 
app.set("views", "./views");
// express Frame Work에 views Page 경로가 ./views 라는 것을 알려준다.
// 결국 .EJS 확장자인 템플릿 파일이 들어가는 경로가 됨

app.use(express.static("./public"));
// 정적파일 위치를 express(서버)에 알려준다. => css, js, image 등 정적파일을 보관

// 2024-11-20 method-override 추가
app.use(methodOverride("_method"));
// methodOverride를 익스프레스(서버) 미들웨어에서 사용할 수 있게 등록한다.
// methodOverride : post방식으로 전송되는 곳에서 다른 전송방식인 PUT, DELETE로 변경하는데 사용된다.

//const router = express.Router(); //Router 객체 router생성
const port = 3003; //상수 port에 3003번 포트번호 할당

dbConnect();
// dbConnect 함수를 호출해서 MonogoDB 연결 테스트

// const logger = (req, res, next) => {
//   console.log("User Logged");
//   next();
//   // 종료하지 않고 다음 middelwares 호출
// };

// const requestTime = (req, res, next) => {
//   let today = new Date();
//   // Date 날짜 객체 today생성
//   let now = today.toLocaleTimeString();
//   req.requestTime = now;
//   // requestTime속성에 요청시간값 추가 설정
//   next();
//   // next() 함수로 다음 middleware 호출
// }

// app.use(requestTime);
// // express에 미들웨어 중간함수로 requestTime을 등록

// 2024-11-21 loginRoutes.js 작성이후로 주석처리
// app.get("/", (req, res) => {
//   //루트(/)로 요청했을 때 라우트 경로, /(루트) 경로 get방식을 요청하면 get()함수를 사용
//   //하고, 그 뒤의 콜백함수를 실행((req,res))

//   // res.status(200).send("Hello Node!");;//200 정상 응답상태코드,브라우저 화면에 표시
//   //메서드 체이닝

//   //const headers = req.headers; //get요청을 보낼때 요청 헤더에 담긴 내용을 저장
//   //res.send(headers);
//   //res.json({message:"Hello Node!"}); //JSON 키,값 쌍으로 전송

//   // const responseText = `Hello Node!\n 요청시간 : ${req.requestTime}`;
//   // res.set("Content-Type", "text/plain");
//   // // 컨텐트 타입을 지정하지 않으면 HTML로 간주한다
//   // // 여기는 텍스트 형태로 인식하게 함.
//   // res.send(responseText);
// });


//모든 연락처 가져오기
//router.get("/contacts", (req,res)=>{
//res.status(200).send("Contacts Page 입니다.");
//res.sendFile(__dirname + "/assets/contacts.html");
//__dirname은 현재파일이 저장된 디렉토리 절대경로를 반환, sendFile()함수는 지정한 경로
//의 파일을 읽어서 내용을 전송한다.
//});

//post방식을 새 연락처 추가하기
//router.post("/contacts",(req,res)=>{
//res.status(201).send("Create Contacts 입니다.");
//});

//연락처 상세보기
//router.get("/contacts/:id", (req,res)=>{
//res.status(200).send(`View Contact for ID : ${req.params.id}`);
//});

//연락처 수정하기
//router.put("/contacts/:id", (req,res)=>{
//res.status(200).send(`Update Contact for ID : ${req.params.id}`);
//});

//연락처 삭제하기
//router.delete("/contacts/:id", (req,res)=>{
//res.status(200).send(`Delete Contact for ID : ${req.params.id}`);
//});

// app.use(logger); //logger middleware를 app.use()로 등록
// app.use(middleware); //middleware의 실행 순서상 contacts보다 앞에 있으므로 먼저 실행되어 logger로 실행시 logger만 실행 되나
// contact로 실행될시 logger을 진행 후 contacts까지 실행된다.

app.use(express.json());
// Express에서 JSON 형식의 요청 내용을 파싱하기 위해서 사용되는 내장 미들웨어를 설정하는 코드이다.
// 이 코드를 사용하면 Express json 형식의 요청을 쉽게 처리 할 수 있다.
// 사용자가 POST나 PUT요청으로 json데이터를 전송할 때, Express는 자동으로 해당 데이터를 파싱하여 req.body객체에 넣어준다.

app.use(express.urlencoded({ extended: true }));
// express 미들웨어 함수로서 POST 요청을 받아서 URL-encoded 된 데이터를 해석하여 자바스크립트 객체로 변환해준다.
// extended:true 로 설정하면 복잡한 객체나 배열까지도 파싱, 한글을 서버로 전송하는 아스키 문자 형태로 변경이 되어서 전송된다



app.use("/", require("./routes/loginRoutes"));
app.use("/contacts", require("./routes/contactRoutes"));
//app.use(router);//라우터를 express 미들웨어에 등록

// app.use(errorhandler);
// 오류 처리 미들웨어 등록

// 오류 처리 /test 라우터 등록
app.get("/test", (req, res, next) => {
  const error = new Error("테스트용 에러");
  // 오류 메시지 생성
  error.status = 401;
  // 에러 상태 코드
  next(error); // next()를 호출하면 errorhandler middleware가 실행
})

app.listen(port, () => {
  //3003번 포트번호 요청이 들어오면 그 뒤의 콜백함수를 실행하고
  //노드 서버가 실행중
  console.log(`${port} 포트번호 서버 실행중`);
});