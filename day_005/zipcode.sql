use sample;

-- 테이블 생성
create table zipcode(
  zipcode CHAR (7) NOT NULL,
  sido VARCHAR (4) NOT NULL,
  gugun VARCHAR (17) Not NULL,
  dong VARCHAR (26) NOT NULL,
  ri VARCHAR (45),
  bunji VARCHAR (17),
  seq INT (5) UNSIGNED PRIMARY KEY
);

-- 테이블 확인
DESC zipcode;
SELECT * FROM zipcode;

-- 진행 확인
SELECT count(*) FROM zipcode;
SELECT * FROM zipcode LIMIT 0, 10;
DELETE FROM zipcode;
show tables;
DELETE FROM dept2;
SELECT * FROM dept2;