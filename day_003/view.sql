-- view 타입 테이블 만들기
CREATE VIEW emp_vu1 AS SELECT * FROM emp;

-- 테이블 확인
SHOW tables;
SELECT * FROM emp_vu1;

-- 테이블들을 table_type도 추가해서 보여줘
SHOW FULL tables;

-- emp_vu1만들때 어떤 원리로 만들어졌는지 보여줘
SHOW CREATE VIEW emp_vu1;

-- 컬럼수 정해서 생성
CREATE VIEW emp_vu_10 AS SELECT empno, ename, mgr, job FROM emp WHERE deptno=10;
DESC emp_vu_10;
SELECT * FROM emp_vu_10;

-- 컬럼수 정해서, 별명 까지 지어주고 생성
CREATE VIEW emp_vu_20 
AS SELECT empno no, ename name, mgr manager, job FROM emp WHERE deptno=20;

DESC emp_vu_20;

-- 본래 테이블의 이름을 몰라도 새로만든 view테이블로 접근하게 할 수 있다.
-- 보안성
SELECT no, name FROM emp_vu_20;