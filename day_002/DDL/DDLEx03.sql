desc sample.dept;

-- sample.dept와 같은 형식의 테이블 생성해보기
CREATE TABLE dept(
  deptno int(2) primary key,
  dname varchar(14),
  loc varchar(13)
);

desc test2.dept;

show tables;
-- 테이블 dept를 복사해서 dept2를 만들기
create table dept2 as select * from dept;
select * from dept2;

-- 테이블 dept 에서 dname, loc만 복사해서 dept3만들기
create table dept3 as select dname, loc from dept;
select *from dept3;