SHOW tables;
DROP TABLE dept_p1;
CREATE TABLE dept_p(
  deptno INT (2),
  dname VARCHAR (14),
  loc VARCHAR (13)
);
DESC dept_p;

-- ALTER TABLE modify를 통해 not null과 같은 key들을 입력해 줄 수 있다.
ALTER TABLE dept_p modify deptno INT(2) NOT  NULL;
DESC dept_p;

-- 다시 초기화
ALTER TABLE dept_p modify deptno INT(2);
DESC dept_p;

-- PRIMARY KEY 추가
ALTER TABLE dept_p ADD constraint PRIMARY KEY (deptno);
DESC dept_p;

-- DROP으로 PRIMARY KEY만 제거 가능 
ALTER TABLE dept_p DROP PRIMARY KEY;
DESC dept_p;

