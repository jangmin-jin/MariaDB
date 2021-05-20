-- 부모 테이블 생성
CREATE TABLE dept_p(
  deptno INT (2),
  dname VARCHAR (14),
  loc VARCHAR (13)
);
DESC dept_p;

-- 자식 테이블 생성
CREATE TABLE emp_f(
  empno INT(4),
  ename VARCHAR (10),
  job VARCHAR (9),
  deptno INT(2)
);
DESC emp_f;

-- 부모에 PRIMARY KEY 추가
ALTER TABLE dept_p ADD constraint PRIMARY KEY (deptno);
DESC dept_p;

-- 자식에 부모 PRIMARY KEY를 참조하여 FOREIGN KEY 추가
ALTER TABLE emp_f ADD constraint FOREIGN KEY (deptno) REFERENCES dept_p (deptno);
DESC emp_f;

SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA='sample';