-- MEMBERT 테이블 생성
create table MEMBERT(
    memberID varchar2(50), -- 회원 아이디
    memberpwd varchar2(50) constraint membert_memberpwd_NN not null, -- 회원 비번
    membername varchar2(30) constraint membert_membername_NN not null, -- 회원 이름
    membereamil varchar2(100) constraint membert_membereamil_NN not null, -- 회원 이메일
    memberphone varchar2(20) constraint membert_memberphone_NN not null, -- 회원 폰번호
    member_regdate date, -- 가입날짜
    constraint memberT_memberID_PK primary key(memberID) -- 기본키 지정
);

select * from memberT order by memberid asc;