-- where in 으로 여러 조건 적용시키기
SELECT * FROM emp WHERE job in ('CLERK', 'MANAGER', 'ANALYST');

-- where between 을 이용한 사이값 조건 적용시키기
SELECT empno, ename, job, deptno FROM emp WHERE sal BETWEEN 1000 AND 2000;