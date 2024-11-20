const errorhandler = (err, req, res, next) => {
  // err : 발생한 오류 정보
  // req : HTTP 요청 객체
  // res : HTTP 응답 객체
  // next : 다음 middleware 함수로 넘어 갈 수 있도록 callback function

  const status = err.status || 500;
  // error 상태코드가 있다면 해당 상태코드값을 사용하고 그렇지 않다면 에러 상태코드를 500으로 지정

  switch (status) {
    case 400:
      res.status(status).json({
        title: "Bad Request", message: err.message // 에러 메시지
      });
      break;
    case 401:
      // 권한 없음
      res.status(status).json({
        title: "Unauthorized", message: err.message // 에러 메시지
      });
      break;
    case 403:
      // 접근금지
      res.status(status).json({
        title: "Forbidden", message: err.message // 에러 메시지
      });
      break;
    case 404:
      // 경로에 파일 찾을 수 없음
      res.status(status).json({
        title: "Not Found", message: err.message // 에러 메시지
      });
      break;
    case 500:
      // 서버 내부 오류
      res.status(status).json({
        title: "Internal Server Error", message: err.message // 에러 메시지
      });
      break;
    default:
      res.status(status).json({
        title: `Error: ${err.message}`, message: err.message // 에러 메시지
      });
      break;
  }
};

module.exports = errorhandler;
// errorhandler 상수(함수) 외부로 내보내기