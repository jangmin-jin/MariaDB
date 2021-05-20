show databases;
-- 제약 조건 조회
desc information_schema.TABLE_CONSTRAINTS;


SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA='sample';
-- not null : null을 허용하지 않는다.
CREATE TABLE dept_n1 (
  deptno INT(2) not null,
  dname VARCHAR(14),
  loc VARCHAR(13)
);

show tables;
desc dept_n1;
SELECT * FROM dept_n1;

INSERT INTO dept_n1 VALUES (10, '개발부', '쓰울');
-- 불가능
INSERT INTO dept_n1 VALUES (null, '영업부', '붓싼');