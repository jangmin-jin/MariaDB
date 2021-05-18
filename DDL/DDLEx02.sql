-- char(크기) : 고정길이 / varchar(크기) : 가변길이
-- 보통 전화번호부에서 char를 쓰고, 이름 같은거에서 varchar를 주로 사용

-- 테이블 생성
CREATE TABLE test1(
  col1 varchar(2)
);
-- 만들 테이블 확인
desc test1;

-- 테이블 생성
CREATE TABLE test2(
  col1 varchar(2),
  col2 varchar(10)
);
-- 만든 테이블 확인
desc test2;

CREATE TABLE test3(
  col1 varchar(10),
  col2 varchar(10),
  col3 varchar(10)
);

desc test3;