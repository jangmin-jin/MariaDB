-- asc 내림차순 정렬 (생략가능);
SELECT * FROM emp ORDER BY ename asc;
SELECT * FROM emp ORDER BY ename;

-- desc 오름차순 정렬;
SELECT * FROM emp ORDER BY ename desc;
SELECT deptno, empno, ename FROM emp ORDER BY deptno desc;

-- 복합적 응용
-- deptno순으로 오름차순 정렬 후 같은 deptno안에서 job 내림차순 순으로 정렬 한다.
SELECT deptno, empno, ename FROM emp ORDER BY deptno desc, job asc;
-- 직업 별로 먼저 내림차순 정렬 후 부서별로 오름차순 정렬한다.
SELECT deptno, empno, ename, job FROM  emp ORDER BY job asc, deptno desc;

-- 별명 지정해서 정렬도 가능하다
SELECT deptno d, empno e, ename m FROM emp ORDER BY d;