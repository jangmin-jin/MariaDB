SHOW databases;
use sample;
SHOW tables;

CREATE TABLE dept2 AS SELECT * FROM dept WHERE 1 != 1;
SHOW tables;
SELECT * FROM dept2;

-- INSERT 
INSERT INTO dept2 values (20, "개발부", "스울");
INSERT INTO dept2(deptno, dname, loc) VALUES (30, "기술부", "수원");
INSERT INTO dept2(deptno, loc, dname) VALUES (40, "서울", "영업부");

DESC dept2;

INSERT INTO dept2 VALUES (60, "서울", null);
INSERT INTO dept2 VALUES (50, '신천지', '서울'), (70, '태극기부대', '서울');


-- UPDATE 
CREATE TABLE IF NOT EXISTS dept3 AS SELECT * FROM dept;
SELECT * FROM dept3;

UPDATE dept3 SET loc = '머전';
UPDATE dept3 set loc = '스울' WHERE deptno=10;

-- DELETE 
DELETE FROM dept3;

-- NOT NULL 데이터 테이블 생성 : 문제는 '' 이건 들어감ㅋㅋ

CREATE TABLE dept_n1(
  deptno INT (2) NOT NULL,
  dname VARCHAR (14),
  loc VARCHAR (13)
);
DESC dept_n1;

-- UNIQUE 중복 선언 방지
CREATE TABLE dept_n1(
  deptno INT (2) UNIQUE,
  dname VARCHAR (14),
  loc VARCHAR (13)
);
DESC dept_n1;

SELECT * FROM dept_n1;
INSERT INTO dept_n1 VALUES (10, '영업부', '서울');
INSERT INTO dept_n1 VALUES (20, '기술부', '수원');
-- deptno=10 중복 생성 불가.
INSERT INTO dept_n1 VALUES (10, '기술부', '서울');
-- NULL 은 가능
INSERT INTO dept_n1 VALUES (null, '관리부', '서울');
INSERT INTO dept_n1 VALUES (null, '말리부', '서울');

-- UNION 다른 선언 방법
DROP TABLE dept_n2;
CREATE TABLE dept_n2(
  deptno INT (2) not null,
  dname VARCHAR (14),
  loc VARCHAR (13),
  constraint dept_n2_deptno_uk UNIQUE (deptno)
);
DESC dept_n2;

-- not null + UNIQUE 
CREATE TABLE dept_p1(
  deptno INT (2) PRIMARY KEY,
  dname VARCHAR (14),
  loc VARCHAR (13)
);
DESC dept_p1;

CREATE TABLE dept_p2(
  deptno INT (2),
  dname VARCHAR (14),
  loc VARCHAR (13),
  constraint PRIMARY KEY (deptno)
);

DESC dept_p2;
SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA ='sample';

-- UNSIGNED PRIMARY KEY AUTO_INCREMENT
CREATE TABLE dept_a1(
    deptno INT (2) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  dname VARCHAR (14),
  loc VARCHAR (13)
);

DESC dept_a1;

SELECT * FROM dept_a1;
INSERT INTO dept_a1 VALUES (0, "개발부", "스울");