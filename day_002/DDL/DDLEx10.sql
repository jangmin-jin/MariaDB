-- 보기 탭
show tables;
desc juso;

-- JUSO 테이블 생성
create table JUSO(
  no int(3),
  name varchar(10),
  address varchar(20),
  email varchar(5)
);

-- 추가 수정 삭제
alter table JUSO add phone varchar(10);
alter table JUSO modify email varchar(20);
alter table JUSO drop address;

-- 테이블 삭제
drop table JUSO;