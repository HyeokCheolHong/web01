const mongoose = require("mongoose");
// 몽구스 모듈 임포트

const contactSchema = new mongoose.Schema(
  {
    name: { type: String, required: true },
    // name 속성(필드, 컬럼 정의)
    // type: String : 속성 필드타입으로 문자열 정의
    // required: true : name 필드가 비어있으면 에러
    // unique: true : email 필드가 중복되면 에러
    email: { type: String },
    // required를 생략하면 기본값은 false이다
    // 즉 자료 입력은 선택적이다. 해당필드에 필수적으로 자료를 입력할 필요가 없다는 것이다
    phone: { type: String, required: [true, "폰번호는 반드시 기입해 주세요"] },
    // 폰번호를 입력하지 않으면 유효성 검증 메시지가 출력되게 한다.
  },
  { timestamps: true } // createdAt, updatedAt fields added automatically
  // 몽고 db에 자료를 추가하거나 수정하면 시간을 기록
);

const Contact = mongoose.model("Contact", contactSchema);
// mongoose.model(모델명, 데이터베이스 스키마)함수를 사용해서 모델을 생성한다.
// 모델명은 문자열이고 첫글자를 영문대문자로 지정하며 몽고DB의 컬렉션 contact"s"로 연결된다.

module.exports = Contact;
// Contact를 모듈로 내보내기