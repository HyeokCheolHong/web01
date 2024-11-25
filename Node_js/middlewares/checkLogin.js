// 패키지 모듈 dotenv를 로드하고 설정 파일(.env)를 읽어와서 환경변수를 현재 process 객체 내의 env 객체 안에 저장한다.
// process.env.* 에 환경변수들이 저장됨
require("dotenv").config();
// JWT 모듈 패키지 import
const jwt = require("jsonwebtoken");
// JWT를 생성하거나 검증할 때 사용할 비밀키를 환경변수에서 가져와서 jwtSecret 상수에 저장
const jwtSecret = process.env.JWT_SECRET;

const checkLogin = async (req, res, next) => {
    // 캐시 처리에 관한 코드 작성
    // 이 코드는 브라우저의 캐시를 막기 위해 필요하다.
    // no-cache: 브라우저 캐시(임시 메모리)를 사용하지 않고, 서버에서 매번 응답을 받아야 한다.
    // no-store: 서버의 응답을 캐시에 저장하지 않는다.
    // must-revalidate: 만일 캐시(임시 메모리)에 있는 정보를 사용하더라도 반드시 서버에 다시 확인해야 한다.
    res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

    // 서버로부터 응답받은 쿠키에서 토큰 값 가져오기
    const token = req.cookies.token;
    // 토큰이 없을 경우(로그인이 되지 않았다)
    if(!token) {
        return res.redirect("/"); // 로그인 페이지로 강제 이동
    }

    try {
        // 인코딩 하여 암호화 된 비밀번호를 비밀키를 가지고 디코딩하여 토큰 해석
        const decoded = jwt.verify(token, jwtSecret);
        // 해석된 토큰 사용자 이름을 요청 사용자에게 할당
        req.username = decoded.username;
        next(); // 다음 미들웨어 작업으로 넘김
    }catch(Error) {
        return res.status(401).json({message: "로그인이 필요합니다."});
    }
};

module.exports = checkLogin;