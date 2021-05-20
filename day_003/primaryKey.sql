-- 테이블당 한개만 쓸 수 있다. not null + unique 기능
CREATE TABLE dept_p1(
  deptno INT (2) PRIMARY KEY,
  dname VARCHAR (14),
  loc VARCHAR (13)
);
DESC dept_p1;
SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA ='sample';
INSERT INTO dept_p1 VALUES (10, '개발부', '스울');
INSERT INTO dept_p1 VALUES (20, '개발부', '스울');
-- 하기 2개는 들어가지 않는다. (not null, unique)
INSERT INTO dept_p1 VALUES (10, '개발부', '스울');
INSERT INTO dept_p1 VALUES (null, '개발부', '스울');
SELECT * FROM dept_p1;

-- 테이블 단위 제약 조건 선언 방식
CREATE TABLE dept_p2(
  deptno INT (2),
  dname VARCHAR (14),
  loc VARCHAR (13),
  constraint PRIMARY KEY (deptno)
);
DESC dept_p2;
SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA ='sample';