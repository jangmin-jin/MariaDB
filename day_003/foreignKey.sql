-- emp의 deptno를 참조하여 froeign key를 선언하려 한다.
SELECT * FROM emp;
SELECT * FROM dept;
SHOW tables;

--primary key 를 만든뒤 froeign key를 만들어야 한다.
DESC dept_p1;
CREATE TABLE dept_p1(
  deptno INT (2),
  dname VARCHAR (14),
  loc VARCHAR (13)
);
SELECT * FROM dept_p1;

-- dept_p1의 deptno가 primary key 가 아니라 에러발생
CREATE TABLE emp_f(
  empno INT (4),
  ename VARCHAR (10),
  job VARCHAR (9),
  deptno INT (2),
  constraint FOREIGN KEY (deptno) REFERENCES dept_p1 (deptno)  
);
SELECT * FROM emp_f;

-- primary key 생성
CREATE TABLE dept_p2(
  deptno INT (2) PRIMARY KEY,
  dname VARCHAR (14),
  loc VARCHAR (13)
);
SELECT * FROM dept_p2;
DESC dept_p2;
-- primary key 가 있으니 foreign key 생성 성공
CREATE TABLE emp_f2(
  empno INT (4),
  ename VARCHAR (10),
  job VARCHAR (9),
  deptno INT (2),
  constraint FOREIGN KEY (deptno) REFERENCES dept_p2 (deptno) 
);
SELECT * FROM emp_f2;
DESC emp_f2;

SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA='sample';