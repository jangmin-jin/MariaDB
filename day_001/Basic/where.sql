SELECT * FROM emp;
-- where 을 이용하여 조건별 검색
SELECT * FROM emp WHERE deptno = 10;
SELECT * FROM emp WHERE deptno != 10;
SELECT * FROM emp WHERE sal >= 1000;
SELECT * FROM emp WHERE job ='SALESMAN';

-- and를 이용한 다중 where 조건문
SELECT * FROM emp WHERE job ='SALESMAN' and ename = 'ALLEN';
SELECT * FROM emp WHERE sal >1000 and sal <2000;
SELECT * FROM emp WHERE sal >=1000 and sal <=2000;
SELECT * FROM emp WHERE hiredate >='2010-12-31' and hiredate <='2012-01-01';
SELECT * FROM emp WHERE ename >='A' and ename <'B';

-- or을 이용한 다중 where 조건문
SELECT * FROM emp WHERE ename ='ALLEN' or ename ='WARD';
SELECT * FROM emp WHERE job ='CLERK' or job ='MANAGER' or job ='ANALYST';
SELECT empno, ename, job, deptno FROM emp
WHERE job ='CLERK' or job ='MANAGER' or job ='ANALYST';