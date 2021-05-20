-- 기존 테이블 삭제
DROP table if EXISTS dept_n1;
-- UNIQUE 키값 추가
CREATE TABLE dept_n1(
  deptno INT (2) UNIQUE,
  dname VARCHAR (14),
  loc VARCHAR (13)
);

show tables;
desc dept_n1;
SELECT * FROM dept_n1;

INSERT INTO dept_n1 VALUES (10, '개발부', '쓰울');
INSERT INTO dept_n1 VALUES (20, '개발부', '쓰울');
-- Duplicate entry '10'for key 'deptno'
-- UNIQUE 속성은 겹치는 키가 들어갈 수 없다.
INSERT INTO dept_n1 VALUES (10, '개발부', '쓰울');
INSERT INTO dept_n1 VALUES (null, '개발부', '쓰울');
-- 단, Null 은 허용한다.
INSERT INTO dept_n1 VALUES (null, '개발부', '쓰울');