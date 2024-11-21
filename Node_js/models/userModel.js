const mongoose = require("mongoose");
// 몽구스 모듈 임포트

const Schema = mongoose.Schema
// 몽구스 스키마 가져오기

const UserSchema = new Schema({
  // 사용자 스키마인 UserSchema 생성
  username: {
    type: String,
    // 타입 지정
    required: true,
    // 반드시 아이디 문서 자료(JSON Data)를 저장 해야 한다
    unique: true,
    // 해당 아이디는 중복되지 않아야 함
  },
  password: {
    type: String,
    required: true,
  },
});

// User Model 만들고 내보내기
module.exports = mongoose.model("User", UserSchema);
// User Model 과 연결되는 MongoDB users컬렉션이 생성된다.
// MongoDB에 미리 해당 컬렉션인 users를 생성하지 않고 모델 User를 먼저 생성하고 연결해도 users컬렉션이 MongoDB에 생성되고 연결된다.