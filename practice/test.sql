-- 2번 테이블의 목록을 확인 할 수 있는 SQL문
SHOW tables;

-- 4번 사원테이블(emp)에서 직원들의 연봉을 계산하여, 컬럼명을 '사원 연봉'으로 정한뒤 출력
SELECT ename, (sal*12 + ifnull(comm, 0)) '사원 연봉' FROM emp;
-- *문제 1,2
SELECT database();
SELECT user();

-- 6번 사원 테이블에서 입사일이 2011년도인 사원의 
-- 사원번호, 사원이름, 입사일, 업무, 급여를 검색하는 SQL 문장을 기술하십시오.
SELECT empno, ename, hiredate, job, sal FROM emp WHERE hiredate LIKE '2011%';

-- 8번 사원 테이블의 사원번호, 사원이름, 입사일, 업무, 급여를 급여가 높은 순으로 정렬하고, 
-- 급여가 같으면 입사일이 빠른 사원으로 정렬하는 SQL 문장을 기술하십시오.
SELECT empno, ename, hiredate, job, sal FROM emp ORDER BY sal desc, hiredate asc;

-- 10번 사원 테이블에서 연봉(SAL*12)이 35000 이상인 
-- 사번, 사원명, 연봉을 검색하는 SQL 문장을 기술하십시오.
SELECT empno, ename, (sal*12) '연봉' FROM emp WHERE (sal*12) > 35000;

-- 12번 사원 테이블에서 입사일이 12월인 사원의 사번, 사원명, 입사일을 검색하는 SQL 문장을 기술하십시오.
SELECT empno, ename, hiredate FROM emp WHERE hiredate LIKE '%-12-%';

-- *문제1 : b, d 
-- *문제2
SELECT empno, ename, truncate(sal, 0) '급여' FROM emp; 

