-- FOREIGN KEY
SELECT * FROM emp;
SELECT * FROM dept;

DESC dept_p1;
CREATE TABLE dept_p1(
  deptno INT (2) PRIMARY KEY,
  dname VARCHAR (14),
  loc VARCHAR (13)
);

SELECT * FROM dept_p1;

-- FOREIGN KEY는 PRIMARY KEY가 없는 부모개체를 상속할 수 없다.
CREATE TABLE emp_f(
  empno INT (4),
  ename VARCHAR (10),
  job VARCHAR (9),
  deptno INT (2),
  constraint FOREIGN KEY (deptno) REFERENCES dept_p1 (deptno)
);
DESC emp_f;

ALTER TABLE dept_p1 ADD constraint PRIMARY KEY (deptno);


-- FOREIGN KEY에 값 추가
CREATE TABLE dept_p2 AS SELECT * FROM dept_p1 WHERE 1 != 1;
ALTER TABLE dept_p2 ADD constraint PRIMARY KEY (deptno);
CREATE TABLE emp_f2 AS SELECT * FROM emp_f WHERE 1 != 1;
ALTER TABLE emp_f2 ADD constraint FOREIGN KEY (deptno) REFERENCES dept_p2 (deptno);
ALTER TABLE emp_f2 MODIFY deptno INT(2) NOT NULL;

DROP TABLE emp_f2;
CREATE TABLE emp_f2(
  empno INT (4),
  ename VARCHAR (10),
  job VARCHAR (9),
  deptno INT (2) not null,
  constraint FOREIGN KEY (deptno) REFERENCES dept_p2 (deptno)
);

DESC dept_p2;
DESC emp_f2;
SELECT * FROM dept_p2;
SELECT * FROM emp_f2;

INSERT INTO dept_p2 VALUES (10, '개발부', '서울');
DELETE FROM dept_p2;
INSERT INTO emp_f2 VALUES (7777, "홍길동", "팀장", 10);
INSERT INTO emp_f2 VALUES (7778, "이몽룡", "사원", null);

SHOW tables;
DROP TABLE dept_p2;

-- ERD 참고하여 테이블 구성
CREATE TABLE customers(
  cno VARCHAR (5) PRIMARY KEY,
  cname VARCHAR (10),
  address VARCHAR (50),
  email VARCHAR (20),
  phone VARCHAR (20)
);
DESC customers;

CREATE TABLE orders(
  orderno VARCHAR (10) PRIMARY KEY,
  orderdate VARCHAR (8),
  address VARCHAR (50),
  phone VARCHAR (20),
  status VARCHAR (5),
  cno VARCHAR (5),
  constraint FOREIGN KEY (cno) REFERENCES customers (cno)
);

CREATE TABLE products(
  
);