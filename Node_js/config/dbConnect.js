const mongoose = require('mongoose');
// 몽구스 패키지 모듈을 임포트

require("dotenv").config();
// 패키지 모듈 dotenv를 로드하고 설정파일 .env를 읽어와 환경변수를 현재 프로세스 환경 변수로 설정하는 역할
// .env 파일이 있다면 dotenv.config()를 호출하면 이 파일에서 정의된 환경 변수들이 node.js 프로세스의 process.env 객체에 추가된다.
// .env파일에 설정된 환경변수가 DB_CONNECT를 다음과 같이 호출하면 된다.
// process.env.DB_CONNECT로 호출한다.

const dbConnect = async () => {
  // 비동기식 처리
  try {
    const connect = await mongoose.connect(process.env.DB_CONNECT, {
      useNewUrlParser: true,
      // useNewUrlParser: true는 MongoDB의 URL 구문 분석기를 새로 추가된 parser로 사용하도록 지정합니다.
      // MongoDB의 구 버전에서 URL 구문 해석 방식이 변경되어, 새롭게 추가된 구문 해석기를 사용하기 위해 true로 설정합니다.
      useUnifiedTopology: true,
      // useUnifiedTopology: true는 MongoDB 드라이버의 새로운 통합 토폴로지 엔진을 활성화하여 서버 디스커버리 및 모니터링을 더 효율적으로 수행합니다.
      // 이 옵션을 설정하면 MongoDB와의 연결을 좀 더 안정적으로 관리하며, 여러 연결 문제와 deprecation 경고를 해결할 수 있습니다.
      // useCreateIndex: true,
      // // useCreateIndex: true는 ensureIndex 대신 createIndex를 사용하도록 강제합니다.
      // // MongoDB 드라이버에서는 ensureIndex 메서드가 deprecated 되었기 때문에 이 옵션을 사용하여 최신 메서드를 적용합니다.
    });
    console.log('MongoDB connected...');
  } catch (error) {
    console.log(error);
  }
};

module.exports = dbConnect;
// dbConnect 모듈로 함수를 내보낸다.