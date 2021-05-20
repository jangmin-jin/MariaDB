-- DDL
CREATE DATABASE test1;
SHOW DATABASES ;
CREATE DATABASE IF NOT EXISTS test1;
CREATE DATABASE IF NOT EXISTS test2;
DROP DATABASE test1;
DROP DATABASE test2;
DROP DATABASE IF EXISTS test3;

-- 테이블 생성
CREATE TABLE test1(
  col1 VARCHAR (2)
);
DESC test1;

CREATE TABLE test2(
  col1 VARCHAR (2),
  col2 VARCHAR (10)
);
DESC test2;

CREATE TABLE test3(
  col1 VARCHAR (10),
  col2 VARCHAR (10),
  col3 VARCHAR (10)
);
DESC test3;

DESC sample.dept;

CREATE TABLE dept(
  deptno INT (2),
  dname VARCHAR (14),
  loc VARCHAR (13)
);
DESC dept;

CREATE TABLE dept2 AS SELECT * FROM dept;
SELECT * FROM dept2;

CREATE TABLE dept3 AS SELECT * FROM dept;
SELECT * FROM dept3;

-- 테이블 생성과 별명 정하기
CREATE TABLE emp_year2
AS SELECT empno, ename, (sal*12 + ifnull(comm, 0)) annsal, hiredate
FROM emp;

desc emp_year2;

-- 테이블 빈껍질만 가져오기
CREATE TABLE empty_dept1 AS SELECT * FROM dept WHERE 1 != 1 ;
SELECT * FROM empty_dept1;

-- 테이블 생성
CREATE TABLE emp_year2 
AS SELECT empno, ename, (sal*12 + ifnull(comm, 0)) annsal, hiredate FROM emp;
SELECT * FROM emp_year2;

-- 컬럼 추가
ALTER TABLE emp_year2 ADD job VARCHAR(10);
ALTER TABLE emp_year2 MODIFY job VARCHAR(20);
ALTER TABLE emp_year2 RENAME COLUMN job to work;
desc emp_year2;

-- 컬럼 삭제
ALTER TABLE emp_year2 DROP work;
desc emp_year2;

-- 테이블 이름 바꾸기
RENAME TABLE emp_year2 to year_emp;
ALTER TABLE year_emp;
SHOW FULL tables;

DROP TABLE if EXISTS year_emp;
DROP TABLE if EXISTS empty_dept1;
SHOW FULL tables;