-- 테이블, 뷰 삭제
DROP TABLE MEMBER_JOIN_INFO CASCADE CONSTRAINT;
DROP TABLE MEMBER_BODY_INFO CASCADE CONSTRAINT;
DROP VIEW MEASUREMENTS;
-- 테이블 생성
CREATE TABLE MEMBER_JOIN_INFO (
    ID VARCHAR2(50),
    PW VARCHAR2(50) NOT NULL,
    FULL_NAME VARCHAR2(50) NOT NULL,
    EMAIL VARCHAR2(50) NOT NULL,
    B_YEAR NUMBER(4) NOT NULL,
    B_MONTH NUMBER(2) NOT NULL,
    B_DAY NUMBER(2) NOT NULL,
    SEX NUMBER(1) NOT NULL,
    -- 제약 조건
    CONSTRAINT JOIN_PK PRIMARY KEY (ID)
);
CREATE TABLE MEMBER_BODY_INFO (
    /*
     비만도 계산할거면 줄 자를 사서 허리둘레랑 엉덩이둘레는 재야지
     키랑 몸무게만 쓸거면 그냥 계산기를 써
     그래서 NOT NULL이다.
     */
    ID VARCHAR2(50),
    HEIGHT NUMBER(3) NOT NULL,
    MASS NUMBER(3) NOT NULL,
    WAIST NUMBER(3) NOT NULL,
    HIP NUMBER(3) NOT NULL,
    UPLOAD DATE DEFAULT SYSDATE NOT NULL,
    -- 체질량 수치 정보는 서버에서 계산한 이후 DB에 저장
    BMI NUMBER NOT NULL,
    RFM NUMBER NOT NULL,
    BAI NUMBER NOT NULL,
    WHR NUMBER NOT NULL,
    WHTR NUMBER NOT NULL,
    -- 제약 조건
    CONSTRAINT BODY_PK PRIMARY KEY (ID, UPLOAD),
    CONSTRAINT BODY_FK FOREIGN KEY (ID) REFERENCES MEMBER_JOIN_INFO (ID)
);