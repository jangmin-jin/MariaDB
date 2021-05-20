CREATE TABLE dept_n2(
  deptno INT (2),
  dname VARCHAR (14),
  loc VARCHAR (13),
  -- constraint 유니크 키 이름 UNIQUE (컬럼)
  constraint dept_n2_deptno_uk UNIQUE (deptno)
); 

SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA='sample';
DESC dept_n2;
SELECT * FROM dept_n2;