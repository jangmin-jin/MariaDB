SHOW tables;
-- 기존: empno, ename, mgr, job FROM emp WHERE deptno=10 가 담겨있다.
desc emp_vu_10;

-- 재 정의 해줄 수 있다.
ALTER VIEW emp_vu_10
AS SELECT * FROM emp WHERE deptno=20;

-- deptno=20에 해당하는 모든 emp 정보가 담겨져있다.
desc emp_vu_10;

-- 삭제 방법
DROP VIEW emp_vu_10;